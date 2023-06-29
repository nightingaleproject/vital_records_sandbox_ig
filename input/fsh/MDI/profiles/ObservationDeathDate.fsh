Profile: ObservationDeathDate
Parent: Observation
Id: Observation-death-date
Title: "Observation - Death Date"
Description: """This Observation provides the death date, death pronouncer, and date pronounced dead. If the actual date of death is known, set value to type dateTime. If the date of death is not known, and a range is known, set value to type Period.
The MDI Observation - Death Date artifact overlaps with the VRDR Death Date artifact."""
* ^meta.versionId = "55"
* ^meta.lastUpdated = "2022-08-24T16:40:19.237+00:00"
* ^meta.source = "#nDkloB9EY3KorYsm"
* status 1..1 MS
* code = $loinc#81956-5
* code MS
  * ^short = "Date+time of death"
* subject 1..1 MS
* subject only Reference(USCorePatientProfile)
  * ^label = "The decedent"
  * ^short = "The decedent"
* performer 0..1 MS
* performer only Reference(USCorePractitionerProfile)
  * ^label = "Death Pronouncement Performer"
  * ^short = "Death Pronouncement Performer"
* value[x] only dateTime
  * ^short = "Date/Time of Death"
  * ^definition = "Actual or presumed date of death. If the actual date of death is known, set value to type dateTime. If the date of death is not known, and a range is known, set value to type Period."
* valueDateTime 0..1
  * extension contains ExtensionPartialDateTime named partialDateTime 0..1
* note 0..1 MS
  * ^short = "Notes about the actual or presumed date of death, e.g., the date of death can't be specified as a dateTime and can only be narrowed down to a decade"
  * ^definition = "Notes about the actual or presumed date of death, e.g., the date of death can't be specified as a dateTime and can only be narrowed down to a decade"
* method 0..1 MS
* method from ValueSetDateEstablishmentApproach (extensible)
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
  * value[x] 1..
  * value[x] only dateTime
* component[placeOfDeath] ^short = "Place of Death"
  * code = $loinc#58332-8
  * value[x] 1..
  * value[x] only CodeableConcept
  * value[x] from ValueSetPlaceOfDeath (required)