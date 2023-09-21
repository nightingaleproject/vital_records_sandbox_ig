Extension: ExtensionReplacementStatus
Id: Extension-replacement-status
Title: "Extension - Replacement Status"
Description: "This Extension profile represents the replacement status of a record."
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from ValueSetReplacementStatus (required)
  * ^short = "Replacement status of a record"