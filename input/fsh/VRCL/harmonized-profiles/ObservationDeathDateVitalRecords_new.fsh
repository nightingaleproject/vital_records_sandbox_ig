/*
MDI subject is patient. VRCL subject can also be a decedent (not just patient). VRDR subject must be a decedent, rather than a patient. 

Interval should allow a text string or a quantity with time units, as per MDI requirement.

VRDR, VRCL, and MDI value date/time with partialDateTime - same

VRDR does not have any MS flags. VRCL and MDI have the same MS flags.
*/
Profile: ObservationDeathDateVitalRecordsNew
Parent: Observation
Id: Observation-death-date-vr-new
Title: "Observation - Death Date Vital Records"
Description: "This Observation provides the death date, death pronouncer, and date pronounced dead. If the actual date of death is known, set value to type dateTime. If the date of death is not known, and a range is known, set value to type Period.
This profile is designed to supplant the similar profiles in VRDR and MDI."
* status 1..1 
* code = $loinc#81956-5
//* code MS
  * ^short = "Date+time of death"
* subject 1..1 
* subject only Reference(PatientVitalRecordsNew) //generalized to patient
  * ^label = "The decedent"
  * ^short = "The decedent"
* performer 0..1 
* performer only Reference(PractitionerVitalRecordsNew)
  * ^label = "Death Pronouncement Performer"
  * ^short = "Death Pronouncement Performer"
* value[x] only dateTime
  * ^short = "Date/Time of Death"
  * ^definition = "Actual or presumed date of death. If the actual date of death is known, set value to type dateTime. If the date of death is not known, and a range is known, set value to type Period."
* valueDateTime 0..1
  * extension contains ExtensionPartialDateTimeVitalRecords named partialDateTime 0..1 //uses VRCL extension
* note 0..1 
  * ^short = "Notes about the actual or presumed date of death, e.g., the date of death can't be specified as a dateTime and can only be narrowed down to a decade"
  * ^definition = "Notes about the actual or presumed date of death, e.g., the date of death can't be specified as a dateTime and can only be narrowed down to a decade"
* method 0..1 
* method from $ValueSet-date-establishment-approach (extensible) //need to consolidate on the right valueset. this references the VRCL valueset
  * ^short = "Codes that describe the approach to establishing a date."
  * ^binding.description = "ValueSetDateEstablishmentApproach"
* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains
    datetimePronouncedDead 0..1 and
    placeOfDeath 0..1
* component[datetimePronouncedDead] ^short = "Date/Time Pronounced Dead"
  * code = $loinc#80616-6
  * value[x] 1..1
  * value[x] only dateTime
* component[placeOfDeath] ^short = "Place of Death"
  * code = $loinc#58332-8
  * value[x] 1..1
  * value[x] only CodeableConcept
  * value[x] from $ValueSet-place-of-death (required) //need to consolidate on the right valueset. this references the VRCL valueset