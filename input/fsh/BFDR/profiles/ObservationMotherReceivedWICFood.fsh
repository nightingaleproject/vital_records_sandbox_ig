Profile: ObservationMotherReceivedWICFood
Parent: Observation
Id: Observation-mother-received-wic-food
Title: "Observation - Mother Recieved WIC Food"
Description: "This profile represents whether or not the mother made use of the Women, Infants and Children (WIC) nutritional program during the pregnancy."
* code 1..1 MS
* code = $loinc#87303-4
  * ^short = "Mother WIC food recipient"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecordsNew or PatientDecedentFetusVitalRecordsNew)
* focus 1..1 MS
* focus only Reference(PatientMotherVitalRecordsNew)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_YesNoUnknown_CDC (required)
  * ^short = "Did mother get WIC food for herself during this pregnancy?"
  * ^binding.description = "Yes No Unknown (YNU)"