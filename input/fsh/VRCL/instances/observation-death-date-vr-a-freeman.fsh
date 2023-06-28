Instance: observation-death-date-vr-a-freeman
InstanceOf: ObservationDeathDateVitalRecords
Title: "Observation - Death Date Vital Records - A Freeman example"
Description: "Example "
Usage: #example
* status = #final
* code = $loinc#81956-5 "Date+time of death"
* subject = Reference(us-core-patient-vr-a-freeman)
* effectiveDateTime = "2022-01-08T15:30:00-05:00"
* performer = Reference(practitioner-vital-records-janet-seito-common) // "Practitioner/us-core-practitioner-vr-s-jones"
* valueDateTime.extension[partialDateTime].extension[day].valueUnsignedInt = 12
* valueDateTime.extension[partialDateTime].extension[month].valueUnsignedInt = 11
* valueDateTime.extension[partialDateTime].extension[year].valueUnsignedInt = 2020
//* valueDateTime.extension[partialDateTime].extension[time].valueTime = "12:13:14"
* valueDateTime.extension[partialDateTime].extension[time].valueTime.extension[dataabsent].valueCode = $dataabsentreason401#unknown
* component[datetimePronouncedDead].valueDateTime = "2022-11-13T16:39:40-05:00"
* component[placeOfDeath].valueCodeableConcept = $sct#63238001 "Dead on arrival at hospital"
* method = CodeSystemMDI#approximate "Approximate"
