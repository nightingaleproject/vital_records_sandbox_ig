### Example: DeathCertificateDocument-Example1-TEST and DeathCertificate-Example2-TEST

#### fixes to get sushi to build:
* changed InputRaceAndEthnicity to ObservationInputRaceAndEthnicityVitalRecords
* changed CodedRaceAndEthnicity to ObservationCodedRaceAndEthnicityVitalRecords
* changed DecedentUsualWork to ObservationUsualWorkVitalRecords
* changed EmergingIssues to ObservationEmergingIssuesVitalRecords
* birthDate.extension[partialDate] to birthDate.extension[partialDateTime] for Decedent examples
* address.extension[WithinCityLimitsIndicator] to address.extension[withinCityLimitsIndicator] for Decedent examples
* valueCodeableConcept = PregnancyStatusCS#2 "Pregnant at time of death" to valueCodeableConcept = DeathPregnancyStatusCS#2 "Pregnant at time of death" in DecedentPregnancyStatus-Example1-TEST
* added code = CodeSystemLocalObservationsCodesVitalRecords#inputraceandethnicity to InputRaceAndEthnicity-Example1-TEST and code = CodeSystemLocalObservationsCodesVitalRecords#codedraceandethnicity to CodedRaceAndEthnicity-Example1-TEST
* RaceCodeCS to CodeSystemRaceCodeVitalRecords and RaceRecode40CS to CodeSystemRaceRecode40VitalRecords and HispanicOriginCS to CodeSystemHispanicOriginVitalRecords in CodedRaceAndEthnicity-Example1-TEST
* added status = #final to DeathDate examples


#### qa report summary:


### Example: DeathCertificateDocument-UT-1-TEST

#### fixes to get sushi to build:
* capitalized ssn to SSN in identifier for Decedent
* changed InputRaceAndEthnicity to ObservationInputRaceAndEthnicityVitalRecords
* changed DecedentUsualWork to ObservationUsualWorkVitalRecords
* changed EmergingIssues to ObservationEmergingIssuesVitalRecords
* added * code = #inputraceandethnicityDecedent for Inline-Instance-for-449f0be0-46ae-4006-ab61-319bc6c582be-2 (inputRaceAndEthnicity)
* added * status = #final for Inline-Instance-for-449f0be0-46ae-4006-ab61-319bc6c582be-5 (DeathDate)
* added * status = #final for Inline-Instance-for-449f0be0-46ae-4006-ab61-319bc6c582be-13 (InjuryIncident)
* added * status = #final for c9383d2d-33b6-44c9-a0ab-43707ded5efc (DecedentPregnancyStatus)
* added * status = #completed for a7c4c06c-84fc-4262-a6e7-78546812aa0a (DeathCertification)
* changed * type = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-location-type-cs#death to LocationTypeCS#death for Inline-Instance-for-449f0be0-46ae-4006-ab61-319bc6c582be-6 (DeathLocation)


#### qa report summary:
DeathCertificate minimum required =1, but only found 0

extension not found, does not resolve:
* AuxiliaryStateIdentifier1
* CertificateNumber
* FilingFormat
* StateSpecificField
* NVSS-SexAtDeath
* StreetNumber
* PreDirectional
* StreetName
* StreetDesignator
* WithinCityLimitsIndicator
* CityCode
* DistrictCode
* Location-Jurisdiction-Id
* BypassEditFlag
* partialDate
* partialDateTime
* Date-Year
* Date-Month
* Date-Day
* Date-Time

unknown CodeSystem: 
* vrdr-filing-format-cs
* vrdr-document-section-cs
* vrdr-bypass-edit-flag-cs
* vrdr-component-cs

unable to find match for profile urn:uuid:f906300e-3622-459c-8201-af0d9b90fb75 among choices: vrdr-decedent

unable to find match for profile urn:uuid:a7c4c06c-84fc-4262-a6e7-78546812aa0a among choices: vrdr-death-certification

unable to find match for profile urn:uuid:f906300e-3622-459c-8201-af0d9b90fb75 among choices: Patient-vr

unable to find match for profile urn:uuid:f906300e-3622-459c-8201-af0d9b90fb75 among choices: us-core-patient

### Example: CauseOfDeathCodedContentBundle-Example1-TEST
No errors

### Example: DemographicCodedContentBundle-Example1-TEST
No errors