Instance: condition-infection-present-during-pregnancy-jada-ann-quinn
InstanceOf: ConditionInfectionPresentDuringPregnancy
Title: "Condition - Infection Present During Pregnancy - Jada Ann Quinn"
Description: "Condition - Infection Present During Pregnancy: Jada Ann Quinn example"
Usage: #example
* category[0] = $condition-category#problem-list-item "Problem List Item"
* category[+] = $loinc#72519-2 "Infections present AndOr treated during this pregnancy for live birth [US Standard Certificate of Live Birth]"
* code = $sct#105629000 "Chlamydial infection (disorder)"
  * text = "Chlamydial infection (disorder)"
* subject
  * reference = "Patient/patient-mother-jada-ann-quinn"
  * display = "Patient - Mother (Jada Ann Quinn)"