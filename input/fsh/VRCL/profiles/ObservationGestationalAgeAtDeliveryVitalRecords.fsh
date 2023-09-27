Profile: ObservationGestationalAgeAtDeliveryVitalRecords
Parent: Observation
Id: Observation-gestational-age-at-delivery-vr
Title: "Observation - Gestational Age at Delivery Vital Records"
Description: "The obstetric estimate of the infant’s gestation in completed weeks based on the birth/delivery attendant’s final estimate of gestation which should be determined by all perinatal factors and assessments such as ultrasound, but not the neonatal exam."
* code = $loinc#11884-4
* subject 1..
* subject only Reference(PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
* value[x] 1..
* value[x] only Quantity
  * system 1.. MS
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1.. MS
  * code = #wk (exactly)
* method MS