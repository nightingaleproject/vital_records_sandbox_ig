Instance: encounter-maternity-carmen-teresa-lee
InstanceOf: EncounterMaternity
Title: "Encounter - Maternity - Carmen Teresa Lee"
Description: "Encounter - Maternity: Carmen Teresa Lee example"
Usage: #example
* meta
  * versionId = "7"
  * lastUpdated = "2021-05-14T11:49:47.065Z"
* identifier
  * system = "http://hospital.smarthealthit.org"
  * value = "8937015"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* type = $cpt#99234
  * text = "Under Observation or Inpatient Care Services (Including Admission and Discharge Services)"
* subject
  * reference = "Patient/patient-mother-carmen-teresa-lee"
  * display = "Patient - Mother (Carmen Teresa Lee)"
* participant
  * type = $loinc#87286-1 "Birth attendant [Extended Identifier]"
  * individual
    * reference = "Practitioner/practitioner-vital-records-janet-seito"
    * display = "Practitioner - Vital Records (Janet Seito, MD)"
* period
  * start = "2019-01-08T10:00:00-07:00"
  * end = "2019-01-09T17:00:00-07:00"
* location
  * location
    * reference = "Location/location-south-hospital"
    * display = "Location - US Core Location (South Hospital)"
  * physicalType = $sct#22232009 "Hospital"
* serviceProvider
  * reference = "Organization/organization-south-hospital"
  * display = "Organization - US Core Organization (South Hospital Organization)"