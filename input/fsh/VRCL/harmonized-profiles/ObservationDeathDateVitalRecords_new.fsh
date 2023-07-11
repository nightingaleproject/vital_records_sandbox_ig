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
* subject only Reference(USCorePatientProfile) //generalized to patient
  * ^label = "The decedent"
  * ^short = "The decedent"
* performer 0..1 MS
* performer only Reference(USCorePractitionerProfile)
  * ^label = "Death Pronouncement Performer"
  * ^short = "Death Pronouncement Performer"
* value[x] only dateTime
  * ^short = "Date/Time of Death"
  * ^definition = "Actual or presumed date of death. If the actual date of death is known, set value to type dateTime. If the date of death is not known, and a range is known, set value to type Period."
//* valueDateTime 0..1
  //* extension contains $Extension-partial-date-time named partialDateTime 0..1
* valueDateTime.extension contains
    PartialDateTime named partialDateTime 0..1
* note 0..1 MS
  * ^short = "Notes about the actual or presumed date of death, e.g., the date of death can't be specified as a dateTime and can only be narrowed down to a decade"
  * ^definition = "Notes about the actual or presumed date of death, e.g., the date of death can't be specified as a dateTime and can only be narrowed down to a decade"
* method 0..1 MS
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