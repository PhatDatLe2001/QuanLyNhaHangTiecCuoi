#
#
#
#
#
#

#
#
#
#
#
#
#
#
#
#
#
# class Service(ModelBase): #Dich vu
#     name = models.CharField(max_length=255, unique=True)
#     price = models.FloatField()
#
#     def __str__(self):
#         return self.name
#
#
#
#
#
# class Contract(ModelBase):
#     customer = models.ForeignKey(Customer, related_name="contracts",  null=True, on_delete=models.SET_NULL)
#     user = models.ForeignKey(User, related_name="contracts",  null=True, on_delete=models.SET_NULL)
#     hall = models.ForeignKey(Hall,  related_name="contracts",  null=True, on_delete=models.SET_NULL)
#     date_of_organization = models.ForeignKey(DateOfOrganization,  related_name="contracts",  null=True, on_delete=models.SET_NULL)
