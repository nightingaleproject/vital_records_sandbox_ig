//content from ObservationGestationalAgeAtDeliveryVitalRecords moving from VRCL to BFDR. Changed to reference PatientChild and PatientDecedentFetus profiles in BFDR.
Profile: ObservationGestationalAgeAtDeliveryNew
Parent: Observation
Id: Observation-gestational-age-at-delivery-new
Title: "Observation - Gestational Age at Delivery"
Description: "The obstetric estimate of the infant’s gestation in completed weeks based on the birth/delivery attendant’s final estimate of gestation which should be determined by all perinatal factors and assessments such as ultrasound, but not the neonatal exam. Migrated from VRCL."
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