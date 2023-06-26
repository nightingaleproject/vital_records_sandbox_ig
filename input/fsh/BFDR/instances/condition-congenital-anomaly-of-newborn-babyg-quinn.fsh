Instance: condition-congenital-anomaly-of-newborn-babyg-quinn
InstanceOf: ConditionCongenitalAnomalyOfNewborn
Title: "Condition - Congenital Anomaly of Newborn example [BabyG Quinn]"
Description: "Example of Condition-congenital-anomaly-of-newborn profile (Babyg Quinn)"
Usage: #example
* meta
  * versionId = "2"
  * lastUpdated = "2023-04-18T06:17:36.910+00:00"
  * source = "#ma1LRiBdSMh2kMxw"
* category[0] = $condition-category#problem-list-item "Problem List Item"
* category[+] = $loinc#73780-9 "Congenital anomalies of the newborn [US Standard Certificate of Live Birth]"
* code = $sct#12770006 "Cyanotic congenital heart disease (disorder)"
  * text = "Cyanotic congenital heart disease (disorder)"
* subject
  * reference = "Patient/patient-child-babyg-quinn"
  * display = "BabyG Quinn"