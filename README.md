Nov 28th, 2018
Data Modelling resource: https://s3.amazonaws.com/bitmakerhq/resources/datamodelling1slides.pdf
SHELTER
* name
* address
* shelter_pk
FACILITY
* name
* facility_pk
* shelter_fk
PROGRAM
* name
* program_pk
* facility_fk
* shelter_fk
RECORD
* record_pk
* record_date
* program_fk
* occupancy
* capacity
