from django.contrib import admin

from product.models import Product, Brand, Category


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ('id', 'product_name', 'price', 'brand', 'categories_display', 'description')
    search_fields = ('product_name', 'description', 'brand', 'categories_display')

    def categories_display(self, obj):
        return ', '.join([category.category_name for category in obj.category_list.all()[:3]])
    categories_display.short_description = 'دسته بندی ها'


@admin.register(Brand)
class BrandAdmin(admin.ModelAdmin):
    list_display = ('id', 'brand_name',)
    search_fields = ('brand_name',)


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('id', 'category_name',)
    search_fields = ('category_name',)
