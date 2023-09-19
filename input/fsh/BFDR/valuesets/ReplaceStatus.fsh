// Replacement Status is deprecated as an extension in BFDR (now a flag in message header)

Alias: $CodeSystem-replacement-status = http://hl7.org/fhir/us/bfdr/CodeSystem/CodeSystem-replacement-status

ValueSet: ValueSetReplacementStatus
Id: ValueSet-replacement-status
Title: "ValueSet - Replacement Status"
Description: "This ValueSet contains codes that represent the replacement status of a record submission."
* $CodeSystem-replacement-status#original "original record"
* $CodeSystem-replacement-status#updated "updated record"
* $CodeSystem-replacement-status#updated_notforNCHS "updated record not for nchs"