Instance: encounter-maternity-jada-ann-quinn
InstanceOf: Encounter_Maternity
Title: "Encounter - Maternity example [Jada Ann Quinn]"
Description: "Example of Encounter-maternity profile (Jada Ann Quinn)"
Usage: #example
* meta
  * versionId = "14"
  * lastUpdated = "2021-05-14T07:49:47.073+00:00"
  * source = "#qLSI78dbcM4SstyH"
* identifier
  * system = "http://hospital.smarthealthit.org"
  * value = "9937012"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* type = $cpt#99234
  * text = "Under Observation or Inpatient Care Services (Including Admission and Discharge Services)"
* subject
  * reference = "Patient/patient-mother-jada-ann-quinn"
  * display = "Patient - Mother (Jada Ann Quinn)"
* participant
  * type = $loinc#87286-1 "Birth attendant [Extended Identifier]"
  * individual
    * reference = "Practitioner/practitioner-vital-records-avery-jones"
    * display = "Practitioner - Vital Records (Avery Jones, MD)"
* period
  * start = "2019-02-11T10:00:00-07:00"
  * end = "2019-02-15T10:00:00-07:00"
* hospitalization
  * origin
    * reference = "Location/location-north-hospital"
    * display = "Location - US Core Location (North Hospital)"
  * admitSource = $admit-source#hosp-trans "Transferred from other hospital"
    * text = "The Patient has been transferred from another hospital for this encounter."
* location
  * location
    * reference = "Location/location-south-hospital"
    * display = "Location - US Core Location (South Hospital)"
  * physicalType = $sct#22232009 "Hospital"
* serviceProvider
  * reference = "Organization/organization-south-hospital"
  * display = "Organization - US Core Organization (South Hospital Organization)"