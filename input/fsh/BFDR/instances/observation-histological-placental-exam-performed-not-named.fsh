Instance: observation-histological-placental-exam-performed-not-named
InstanceOf: ObservationHistologicalPlacentalExamPerformed
Title: "Observation - Histological Placental Exam Performed - Fetus Not Named"
Description: "Observation - Histological Placental Exam Performed: Fetus Not Named example"
Usage: #example
* status = #final
* code = $loinc#73767-6 "Histological placental examination was performed [US Standard Report of Fetal Death]"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* valueCodeableConcept = $sct#398166005 "Performed"