
Instance: CauseOfDeathCodedContentBundle-Example1-TEST
InstanceOf: CauseOfDeathCodedContentBundle
Usage: #example
Description: "CauseofDeathCodedContentBundle-Example1-TEST"
* insert AddMetaProfile(CauseOfDeathCodedContentBundle)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* insert Identifiers2020NY000182
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Observation, ActivityAtTimeOfDeath-Example1-TEST)
* insert addentry(Observation, ManualUnderlyingCauseOfDeath-Example1-TEST)
* insert addentry(Observation, AutomatedUnderlyingCauseOfDeath-Example1-TEST)
* insert addentry(Observation, RecordAxisCauseOfDeath-Example1-TEST)
* insert addentry(Observation, EntityAxisCauseOfDeath-Example1-TEST)
* insert addentry(Observation, EntityAxisCauseOfDeath-Example2-TEST)
* insert addentry(Observation, EntityAxisCauseOfDeath-Example3-TEST)
* insert addentry(Observation, EntityAxisCauseOfDeath-Example4-TEST)
* insert addentry(Observation, PlaceOfInjury-Example1-TEST)
* insert addentry(Parameter, CodingStatusValues-Example1-TEST)
// Input Data
* insert addentry(Observation, DecedentPregnancyStatus-Example1-TEST)
* insert addentry(Observation, TobaccoUseContributedToDeath-Example1-TEST)
* insert addentry(Observation, SurgeryDate-Example1-TEST)
* insert addentry(Observation, MannerOfDeath-Example1-TEST)
* insert addentry(Observation, InjuryIncident-Example1-TEST)
* insert addentry(Procedure, DeathCertification-Example2-TEST)
* insert addentry(Observation, CauseOfDeathPart1-Example1-TEST)
* insert addentry(Observation, CauseOfDeathPart1-Example2-TEST)
* insert addentry(Observation, CauseOfDeathPart2-Example1-TEST)
// * insert addentry(List, CauseOfDeathPathway-Example1)
* insert addentry(Observation, AutopsyPerformedIndicator-Example1-TEST)


Instance: DemographicCodedContentBundle-Example1-TEST
InstanceOf: DemographicCodedContentBundle
Usage: #example
Description: "DemographicCodedContentBundle-Example1-TEST"
* insert AddMetaProfile(DemographicCodedContentBundle)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* insert Identifiers2020NY000182
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Observation, InputRaceAndEthnicity-Example1-TEST)
// Input Data
* insert addentry(Observation, CodedRaceAndEthnicity-Example1-TEST)
