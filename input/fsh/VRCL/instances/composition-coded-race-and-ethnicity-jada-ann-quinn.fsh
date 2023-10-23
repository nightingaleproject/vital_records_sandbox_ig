Instance: CodedRaceAndEthnicity-Mother
InstanceOf: CodedRaceAndEthnicity
Usage: #example
Description: "CodedRaceAndEthnicity Mother"
* code = #codedraceandethnicityMother
* status = #final
* subject.display = "NCHS generated"
* component[FirstEditedCode].valueCodeableConcept = RaceCodeCS#101 "White"
* component[SecondEditedCode].valueCodeableConcept = RaceCodeCS#122 "Israeli"
* component[FirstAmericanIndianCode].valueCodeableConcept = RaceCodeCS#A31 "Arikara"
* component[RaceRecode40].valueCodeableConcept = RaceRecode40CS#20 "AIAN and Asian"
* component[HispanicCode].valueCodeableConcept = HispanicOriginCS#233 "Chilean"

Instance: CodedRaceAndEthnicity-Father
InstanceOf: CodedRaceAndEthnicity
Usage: #example
Description: "CodedRaceAndEthnicity Father"
* code = #codedraceandethnicityFather
* status = #final
* subject.display = "NCHS generated"
* component[FirstEditedCode].valueCodeableConcept = RaceCodeCS#101 "White"
* component[SecondEditedCode].valueCodeableConcept = RaceCodeCS#122 "Israeli"
* component[FirstAmericanIndianCode].valueCodeableConcept = RaceCodeCS#A31 "Arikara"
* component[RaceRecode40].valueCodeableConcept = RaceRecode40CS#20 "AIAN and Asian"
* component[HispanicCode].valueCodeableConcept = HispanicOriginCS#233 "Chilean"


Instance: InputRaceAndEthnicityMother
InstanceOf: InputRaceAndEthnicity
Usage: #example
Description: "InputRaceAndEthnicity Mother"
* insert AddMetaProfile(InputRaceAndEthnicity)
* code = #inputraceandethnicityMother
* status = #final
* subject.display = "NCHS generated"
* component[White].valueBoolean = true
* component[BlackOrAfricanAmerican].valueBoolean = false
* component[BlackOrAfricanAmerican].valueBoolean = false
* component[AmericanIndianOrAlaskanNative].valueBoolean = true
* component[AsianIndian].valueBoolean = false
* component[Chinese].valueBoolean = false
* component[Filipino].valueBoolean = false
* component[Japanese].valueBoolean = false
* component[Korean].valueBoolean = false
* component[Vietnamese].valueBoolean = false
* component[OtherAsian].valueBoolean = true
* component[NativeHawaiian].valueBoolean = false
* component[GuamanianOrChamorro].valueBoolean = false
* component[Samoan].valueBoolean = false
* component[OtherPacificIslander].valueBoolean = false
* component[OtherRace].valueBoolean = false
* component[FirstOtherAsianLiteral].valueString = "Malaysian"
* component[FirstAmericanIndianOrAlaskanNativeLiteral].valueString = "Arikara"
* component[HispanicMexican].valueCodeableConcept = $v2-0136#Y "Yes"
* component[HispanicCuban].valueCodeableConcept = $v2-0136#Y "Yes"
* component[HispanicPuertoRican].valueCodeableConcept = $v2-0136#Y "Yes"
* component[HispanicOther].valueCodeableConcept = $v2-0136#N "No"


Instance: InputRaceAndEthnicityFather
InstanceOf: InputRaceAndEthnicity
Usage: #example
Description: "InputRaceAndEthnicity Father"
* insert AddMetaProfile(InputRaceAndEthnicity)
* code = #inputraceandethnicityFather
* status = #final
* subject.display = "NCHS generated"
* component[White].valueBoolean = true
* component[BlackOrAfricanAmerican].valueBoolean = false
* component[BlackOrAfricanAmerican].valueBoolean = false
* component[AmericanIndianOrAlaskanNative].valueBoolean = true
* component[AsianIndian].valueBoolean = false
* component[Chinese].valueBoolean = false
* component[Filipino].valueBoolean = false
* component[Japanese].valueBoolean = false
* component[Korean].valueBoolean = false
* component[Vietnamese].valueBoolean = false
* component[OtherAsian].valueBoolean = true
* component[NativeHawaiian].valueBoolean = false
* component[GuamanianOrChamorro].valueBoolean = false
* component[Samoan].valueBoolean = false
* component[OtherPacificIslander].valueBoolean = false
* component[OtherRace].valueBoolean = false
* component[FirstOtherAsianLiteral].valueString = "Malaysian"
* component[FirstAmericanIndianOrAlaskanNativeLiteral].valueString = "Arikara"
* component[HispanicMexican].valueCodeableConcept = $v2-0136#Y "Yes"
* component[HispanicCuban].valueCodeableConcept = $v2-0136#Y "Yes"
* component[HispanicPuertoRican].valueCodeableConcept = $v2-0136#Y "Yes"
* component[HispanicOther].valueCodeableConcept = $v2-0136#N "No"