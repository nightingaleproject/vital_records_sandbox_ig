Instance: observation-autopsy-histological-exam-results-used-not-named
InstanceOf: ObservationAutopsyHistologicalExamResultsUsed
Title: "Observation - Autopsy or Histological Exam Results Used - Fetus Not Named"
Description: "Observation - Autopsy or Histological Exam Results Used: Fetus Note Named example"
Usage: #example
* status = #final
* code = $loinc#74498-7 "Autopsy or histological placental examination results were used [US Standard Report of Fetal Death]"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* valueBoolean = true