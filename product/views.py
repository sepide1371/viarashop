
from rest_framework.parsers import JSONParser
from rest_framework.response import Response
from rest_framework.views import APIView

from .models import Product
from .serializers import ProductSerializer, BrandSerializer, CategorySerializer, PListSerializer


messages = {
    0: "SuccessfulOperation",
    1: "Parameters Not Exist",
    2: "product not found",
    3: "Authorization Not Set!",
    4: "Not Authorized",

}

persian_message = {
    0: "عملیات موفق",
    1: "خطای دریافت پارامتر",
    2: "محصول یافت نشد",
    3: "خطای دریافت پارامتر Authorization ",
    4: "خطای احراز هویت",

}


# format of response
def response(status, message_code, content):
    return {
        "Headers": {
            "Status": status,
            "Message": messages[message_code],
            "PersianMessage": persian_message[message_code],
            "MessageCode": message_code
        },
        "ContentData": content
    }


# list of product
def product_result(result_list):
    id_list = []
    product_list = []
    for r in result_list:
        if r.id in id_list:
            pass
        else:
            product_dict = {
                "id": r.id,
                "product_name": r.product_name,
                "price": r.price,
                "description": r.description,
                "categories": r.category_list.values(),
                "brand": r.brand.brand_name,
            }
            product_list.append(product_dict)
            id_list.append(r.id)
    return product_list


# product api
class ProductListAPI(APIView):
    def post(self, request):
        data = JSONParser().parse(request)
        serializer = PListSerializer(data=data)
        if serializer.is_valid():
            num = serializer.data["page_size"]
            if "category_id" in serializer.data and "brands_ids" in serializer.data:
                result_list = Product.objects.filter(category_list=int(serializer.data["category_id"]),
                                                     brand__in=list(
                                                         serializer.data["brands_ids"])).select_related('brand')
                print(" both result------>")
                product_list = product_result(result_list)
            elif "category_id" in serializer.data and "brands_ids" not in serializer.data:
                result_list = Product.objects.filter(category_list=int(serializer.data["category_id"])).select_related(
                    'brand')
                print("brand result------>")
                product_list = product_result(result_list)
            elif "category_id" not in serializer.data and "brands_ids" in serializer.data:
                result_list = Product.objects.filter(brand__in=list(serializer.data["brands_ids"]))
                print("category result------>")
                product_list = product_result(result_list)
            else:
                result_list = Product.objects.all().select_related('brand')
                print("all result------>")

                product_list = product_result(result_list)
            if product_list:
                print(product_list)
                product_list = product_list[:num]
                context = {
                    "product_list": product_list,
                }
                context = response(0, 0, context)
                return Response(context, status=200)

            else:
                context = {}
                context = response(1, 2, context)
                return Response(context)
        context = response(1, 1, serializer.errors)
        return Response(context, status=400)

