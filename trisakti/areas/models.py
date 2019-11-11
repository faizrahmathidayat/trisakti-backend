from django.db import models

# Create your models here.
class Country(models.Model):
	id_country = models.AutoField(primary_key=True)
	country = models.CharField(max_length=100)

	class Meta: 
		db_table = "countries"
		verbose_name = "country"
		verbose_name_plural = "countries"

	def __str__(self):
		return str(self.id_country)

class Province(models.Model):
	id_province = models.AutoField(primary_key=True)
	id_country = models.ForeignKey(Country, related_name="provinces", on_delete=models.CASCADE)
	province = models.CharField(max_length=100)

	class Meta:
		db_table = "provinces"
		verbose_name = "province"
		verbose_name_plural = "provinces" 

	def __str__(self):
		return str(self.id_province)

class District(models.Model):
	id_district = models.AutoField(primary_key=True)
	id_province = models.ForeignKey(Province, related_name="districts", on_delete=models.CASCADE)
	district = models.CharField(max_length=100)

	class Meta:
		db_table = "districts"
		verbose_name = "district"
		verbose_name_plural = "districts"

	def __str__(self):
		return str(self.id_district)

class Subdisctrict(models.Model):
	id_subdistrict = models.AutoField(primary_key=True)
	id_district = models.ForeignKey(District, related_name="subdisctricts", on_delete=models.CASCADE)
	subdisctrict = models.CharField(max_length=100)

	class Meta:
		db_table = "subdisctricts"
		verbose_name = "subdisctrict"
		verbose_name_plural = "subdisctricts"

	def __str__(self):
		return str(id_subdistrict)

class Village(models.Model):
	id_village = models.AutoField(primary_key=True)
	id_subdistrict = models.ForeignKey(Subdisctrict, related_name="villages", on_delete=models.CASCADE)
	village = models.CharField(max_length=100)

	class Meta:
		db_table = "villages"
		verbose_name = "village"
		verbose_name_plural = "villages"

	def __str__(self):
		return str(self.id_village)

class PostalCode(models.Model):
	postal_code = models.CharField(max_length=5, primary_key=True)
	id_village = models.ForeignKey(Village, related_name="postalcodes", on_delete=models.CASCADE)
	name = models.CharField(max_length=100)

	class Meta:
		db_table = "postal_code"
		verbose_name = "postal_code"
		verbose_name_plural = "postal_codes"
