from django.contrib import admin
from .models import User, Hall, CategoryFood, Food, Combo, ComboDetail, Customer, Service, \
    DateOfOrganization, WeddingServiceReceipt, WeddingServiceReceiptDetail, TimeFrame

# Register your models here.
admin.site.register(User)
admin.site.register(Hall)
admin.site.register(CategoryFood)
admin.site.register(Food)
admin.site.register(Combo)
admin.site.register(ComboDetail)
admin.site.register(Customer)
admin.site.register(Service)
admin.site.register(WeddingServiceReceipt)
admin.site.register(WeddingServiceReceiptDetail)
admin.site.register(DateOfOrganization)
admin.site.register(TimeFrame)





