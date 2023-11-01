Profile: ObservationFinalRouteAndMethodOfDelivery
Parent: Observation
Id: Observation-final-route-and-method-of-delivery 
Title: "Observation - Final Route and Method of Delivery"
Description: "Final route and method of delivery as defined by the US Standard Certificate of Live Birth (2003) and US Standard Fetal Death Report (2003). If delivery is cesarean, trial of labor is also recorded." 
* code = $loinc#73762-7 "Final route and method of delivery [US Standard Certificate of Live Birth]"
* subject 1.. MS
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..1
* value[x] only CodeableConcept 
* value[x] from ValueSetDeliveryRoutes (required)
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains trialLabor 0..1
* component[trialLabor].code 1..1
* component[trialLabor].code = $loinc#73760-1 "If cesarean, a trial of labor was attempted [US Standard Certificate of Live Birth]"
* component[trialLabor].value[x] only CodeableConcept
* component[trialLabor].value[x] 1..1 // Value should be N/A if delivery is not cesarean
* component[trialLabor].value[x] from ValueSetYesNoUnknownNotApplicableVitalRecords (required)
* component[trialLabor] ^short = "If cesarean, a trial of labor was attempted [US Standard Certificate of Live Birth]."