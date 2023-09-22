Instance: condition-congenital-anomaly-of-newborn-babyg-quinn
InstanceOf: ConditionCongenitalAnomalyOfNewborn
Title: "Condition - Congenital Anomaly of Newborn - BabyG Quinn"
Description: "Condition - Congenital Anomaly of Newborn: BabyG Quinn example"
Usage: #example
* category[us-core] = $condition-category#problem-list-item "Problem List Item"
* category[congenitalAnomolyNewborn] = $loinc#73780-9 "Congenital anomalies of the newborn [US Standard Certificate of Live Birth]"
* code = $sct#12770006 "Cyanotic congenital heart disease (disorder)"
  * text = "Cyanotic congenital heart disease (disorder)"
* subject
  * reference = "Patient/patient-child-babyg-quinn"
  * display = "BabyG Quinn"