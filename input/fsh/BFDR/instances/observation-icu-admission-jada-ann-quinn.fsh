Instance: observation-icu-admission-jada-ann-quinn
InstanceOf: ObservationICUAdmission
Title: "Observation - ICU Admission - Jada Ann Quinn"
Description: "Observation - ICU Admission: Jada Ann Quinn example"
Usage: #example
* status = #final
* code = $loinc#73781-7 "Maternal morbidity [US Standard Certificate of Live Birth]"
  * text = "Maternal morbidity [US Standard Certificate of Live Birth]"
* subject
  * reference = "Patient/patient-mother-jada-ann-quinn"
  * display = "Patient - Mother (Jada Ann Quinn)"
* valueCodeableConcept = $sct#309904001 "Intensive care unit (environment)"
  * text = "Intensive care unit (environment)"