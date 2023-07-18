/*
DeathRecord:    subject = Decedent (Patient)
Birth:   subject = Child (Patient),   focus = Mother (Patient) or NaturalFather (RelatedPerson) 
Fetal Death:  subject = Fetus (Patient) focus = Mother (Patient) or NaturalFather (RelatedPerson) 

*/


Profile: ObservationEducationLevelVitalRecordsNew
Parent: Observation
Id: Observation-education-level-vr-new
Title: "Observation - Education Level Vital Records"
Description: "The highest degree or level of schooling completed by the decedent or parent. 
This profile is designed to supplant similar profile in VRDR"
* code from ValueSetEducationLevelPersonVitalRecordsNew (required) //updated this valueset to include code for decedent's highest level of education, 80913-7
  * ^short = "Persons for whom education level can be reported."
  * ^binding.description = "EducationLevelPerson"
* subject 1..1
* subject only Reference(Patient)  // Child, Fetus, or Decedent
  * ^short = "This is the subject of the report, not the parent"
* focus 0..1 // not present if subject is Decedent
* focus only Reference(PatientMotherVitalRecords or RelatedPersonParentVitalRecords) //not required, may be omitted if reporting education level of decedent, not parent. 
  * ^short = "The RelatedPerson or Patient record for the parent"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from EducationLevelVS (required) // use VRDR valueset
  * ^short = "The collection of education levels used for vital records reporting."
  * ^binding.description = "Vital Records Education Level (NCHS)"