Instance: encounter-birth-babyg-quinn
InstanceOf: EncounterBirth
Title: "Encounter - Birth - Baby G Quinn"
Description: "Encounter - Birth: Baby G Quinn example"
Usage: #example
* meta
  * versionId = "12"
  * lastUpdated = "2021-05-14T11:49:47.073Z"
* identifier
  * system = "http://hospital.smarthealthit.org"
  * value = "9937012"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* type = $cpt#99234
  * text = "Under Observation or Inpatient Care Services (Including Admission and Discharge Services)"
* subject
  * reference = "Patient/patient-child-babyg-quinn"
  * display = "BabyG Quinn"
* participant[0]
  * type = $loinc#87287-9 "Birth certifier [Extended Identifier]"
  * period.start = "2019-02-12T13:30:00-07:00"
  * individual
    * reference = "Practitioner/practitioner-vital-records-avery-jones"
    * display = "Practitioner - Vital Records (Avery Jones, MD)"
* participant[+]
  * type = $loinc#87286-1 "Birth attendant [Extended Identifier]"
  * individual
    * reference = "Practitioner/practitioner-vital-records-avery-jones"
    * display = "Practitioner - Vital Records (Avery Jones, MD)"
* period
  * start = "2019-02-12T13:00:00-07:00"
  * end = "2019-02-15T10:00:00-07:00"
* hospitalization
  * destination
    * reference = "Location/location-east-hospital"
    * display = "East Hospital Location"
  * dischargeDisposition = $discharge-disposition#other-hcf "Other healthcare facility"
    * text = "The patient was transferred to another healthcare facility."
* location
  * location
    * reference = "Location/location-south-hospital"
    * display = "Location - US Core Location (South Hospital)"
  * physicalType = $sct#22232009 "Hospital"
* partOf
  * reference = "Encounter/encounter-maternity-jada-ann-quinn"
  * display = "Maternity Encounter - Jada Ann Quinn"