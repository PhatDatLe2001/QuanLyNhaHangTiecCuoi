import datetime

from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class User(AbstractUser):
    avatar = models.ImageField(null=True, blank=True, upload_to="users/%Y/%m")


class ModelBase(models.Model):
    active = models.BooleanField(default=True)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)

    class Meta:
        abstract = True


class Customer(ModelBase):
    f_name = models.CharField(max_length=100)
    l_name = models.CharField(max_length=100)
    date_of_birth = models.DateField()
    phone_number = models.IntegerField()
    address = models.TextField()
    email = models.EmailField()
    username = models.CharField(max_length=50, unique=True)
    password = models.CharField(max_length=50)
    avatar = models.ImageField(null=True, blank=True, upload_to="customers/%Y/%m")

    def __str__(self):
        return self.username


class Hall(ModelBase): #Sanh Cuoi
    name = models.CharField(max_length=255, unique=True)
    capacity = models.IntegerField()
    price = models.FloatField()

    def __str__(self):
        return self.name


class CategoryFood(ModelBase): #Loai mon an
    name = models.CharField(max_length=255, unique=True)

    def __str__(self):
        return self.name


class Food(ModelBase): #Mon An
    name = models.CharField(max_length=255, unique=True)
    price = models.FloatField()
    category = models.ForeignKey(CategoryFood, related_name="foods", null=True, on_delete=models.SET_NULL)

    def __str__(self):
        return self.name


class Combo(ModelBase):
    name = models.CharField(max_length=255, unique=True)
    price = models.FloatField()
    food = models.ManyToManyField(Food, related_name="combos", through="ComboDetail")

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['name']


class ComboDetail(models.Model): #Chi tiet combo
    combo = models.ForeignKey(Combo, on_delete=models.CASCADE)
    food = models.ForeignKey(Food, on_delete=models.CASCADE)
    quantity = models.IntegerField()

    def __str__(self):
        return f'{self.combo} - {self.food}'

    class Meta:
        ordering = ['combo', 'food']


class Service(ModelBase): #Dich vu
    name = models.CharField(max_length=255, unique=True)
    price = models.FloatField()

    def __str__(self):
        return self.name


class TimeFrame(ModelBase): #Khung giờ
    hour = models.IntegerField()
    minute = models.IntegerField()
    second = models.IntegerField()
    price = models.FloatField()

    def __str__(self):
        return f'{self.hour}:{self.minute}:{self.second}'

    class Meta:
        unique_together = ('hour', 'minute', 'second')


class DateOfOrganization(models.Model): #Ngay to chuc
    day = models.IntegerField()
    month = models.IntegerField()
    year = models.IntegerField()

    def __str__(self):
        return f'{self.day}/{self.month}/{self.year}'

    class Meta:
        unique_together = ('day', 'month', 'year')


class WeddingServiceReceipt(ModelBase): #Phieu dat tiec
    customer = models.ForeignKey(Customer, related_name="receipts", null=True, on_delete=models.SET_NULL)
    user = models.ForeignKey(User, related_name="receipts", null=True, on_delete=models.SET_NULL)
    hall = models.ForeignKey(Hall, related_name="receipts", null=True, on_delete=models.SET_NULL)
    service = models.ManyToManyField(Service, related_name="receipts")
    combo = models.ManyToManyField(Combo, related_name="receipts", through="WeddingServiceReceiptDetail")
    date_of_booking = models.DateTimeField(auto_now=True) #Ngày đặt
    date_of_organization = models.ForeignKey(DateOfOrganization, related_name="receipts", on_delete=models.CASCADE) #Ngày tổ chức
    time_frame = models.ForeignKey(TimeFrame, related_name="receipts", null=True, on_delete=models.SET_NULL)

    def __str__(self):
        return f'{self.date_of_organization}-{self.customer}-{self.hall}-{self.time_frame}'


class WeddingServiceReceiptDetail(ModelBase): #Chi tiet phieu dat tiec
    wedding_service_receipt = models.ForeignKey(WeddingServiceReceipt, on_delete=models.CASCADE)
    combo = models.ForeignKey(Combo, on_delete=models.CASCADE)
    number_of_table = models.IntegerField() #Số lượng bàn
    groom_name = models.CharField(max_length=100) #Tên chú rể
    bride_name = models.CharField(max_length=100) #Tên cô dâu

    def __str__(self):
        return f'{self.id}-{self.groom_name}-{self.bride_name}'

