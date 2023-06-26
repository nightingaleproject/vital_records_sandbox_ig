Instance: Inline-Instance-for-bundle-jurisdiction-live-birth-babyg-quinn-30
InstanceOf: Encounter
Usage: #inline
* id = "encounter-birth-babyg-quinn"
* identifier
  * system = "http://hospital.smarthealthit.org"
  * value = "9937012"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* type = $cpt#99234
  * text = "Under Observation or Inpatient Care Services (Including Admission and Discharge Services)"
* subject = Reference(patient-child-babyg-quinn) "BabyG Quinn"
* participant[0]
  * type = $loinc#87287-9 "Birth certifier [Extended Identifier]"
  * period.start = "2019-02-12T13:30:00-07:00"
  * individual = Reference(practitioner-vital-records-avery-jones) "Practitioner - Vital Records (Avery Jones, MD)"
* participant[+]
  * type = $loinc#87286-1 "Birth attendant [Extended Identifier]"
  * individual = Reference(practitioner-vital-records-avery-jones) "Practitioner - Vital Records (Avery Jones, MD)"
* period
  * start = "2019-02-12T13:00:00-07:00"
  * end = "2019-02-15T10:00:00-07:00"
* hospitalization
  * destination = Reference(location-east-hospital) "East Hospital Location"
  * dischargeDisposition = $discharge-disposition#other-hcf "Other healthcare facility"
    * text = "The patient was transferred to another healthcare facility."
* location
  * location = Reference(location-south-hospital) "Location - US Core Location (South Hospital)"
  * physicalType = $sct#22232009 "Hospital"
* partOf = Reference(Encounter/encounter-maternity-jada-ann-quinn) "Maternity Encounter - Jada Ann Quinn"