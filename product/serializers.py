
from rest_framework import serializers
from product.models import Product, Category


class ProductSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Product
        fields = ['product_name', 'brands_list', 'description', 'price', 'category']


class CategorySerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Category
        fields = ['category_name']


class BrandSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Category
        fields = ['brand_name']


class PListSerializer(serializers.Serializer):
    page_size = serializers.IntegerField(min_value=1, required=True)
    brands_ids = serializers.ListField(child=serializers.CharField(max_length=10), required=False)
    category_id = serializers.IntegerField(min_value=1, required=False)

    def save(self):
        page_size = self.validated_data['page_size']
        brands_ids = self.validated_data['brands_ids']
        category_id = self.validated_data['category_id']
