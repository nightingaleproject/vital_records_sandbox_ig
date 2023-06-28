Instance: condition-infection-present-during-pregnancy-jada-ann-quinn
InstanceOf: ConditionInfectionPresentDuringPregnancy
Title: "Condition - Infection Present During Pregnancy example [Jada Ann Quinn]"
Description: "Example of Condition-infection-present-during-pregnancy profile (Jada Ann Quinn"
Usage: #example
* meta
  * versionId = "4"
  * lastUpdated = "2023-04-18T06:29:15.476+00:00"
  * source = "#fhSNnWz1OfZv7nxz"
* category[us-core] = $condition-category#problem-list-item "Problem List Item"
* category[infectionDuringPregnancy] = $loinc#72519-2 "Infections present AndOr treated during this pregnancy for live birth [US Standard Certificate of Live Birth]"
* code = $sct#105629000 "Chlamydial infection (disorder)"
  * text = "Chlamydial infection (disorder)"
* subject
  * reference = "Patient/patient-mother-jada-ann-quinn"
  * display = "Patient - Mother (Jada Ann Quinn)"