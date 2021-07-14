from django.db import models

# Create your models here.


# keep list of categories
class Category(models.Model):
    category_name = models.CharField(max_length=300, verbose_name="نام دسته بندی")

    def __str__(self):
        return "{}".format(self.category_name)

    class Meta:
        verbose_name_plural = 'لیست دسته بندی'
        verbose_name = 'لیست دسته بندی'


# keep list of brands
class Brand(models.Model):
    brand_name = models.CharField(max_length=300,verbose_name="نام برند")

    def __str__(self):
        return "{}".format(self.brand_name)

    class Meta:
        verbose_name_plural = 'لیست برند'
        verbose_name = 'لیست برند'


# keep information of products
class Product(models.Model):
    product_name = models.CharField(max_length=200, verbose_name="نام محصول")
    price = models.FloatField(verbose_name="قیمت")
    description = models.TextField(verbose_name="توضیحات")
    category_list = models.ManyToManyField(Category, verbose_name="لیست دسته بندی")
    brand = models.ForeignKey(Brand, on_delete=models.SET_NULL,null=True, verbose_name="نام برند")

    def __str__(self):
        return "{}".format(self.product_name)

    class Meta:
        verbose_name_plural = 'لیست محصولات '
        verbose_name = 'لیست محصولات '


