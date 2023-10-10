Profile: ObservationSteroidsFetalLungMaturation
Parent: Observation
Title: "Observation - Administration of Steroids for Fetal Lung Maturation"
Description: "This Observation profile indicates a characteristic of labor of administration of steroids for fetal lung maturation."
* code = $loinc#73813-8
  * ^short = "Characteristics of labor and delivery [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(PatientMotherVitalRecordsNew)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#434611000124106
  * ^short = "Maternal antenatal administration of corticosteroids for fetal lung maturation (situation)"