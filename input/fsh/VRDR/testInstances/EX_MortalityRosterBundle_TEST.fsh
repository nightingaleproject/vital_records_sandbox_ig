Instance: MortalityRosterBundle-Example1-TEST
InstanceOf: MortalityRosterBundle
Usage: #example
Description: "MortalityRosterBundle-Example1-TEST"
* insert AddMetaProfile(MortalityRosterBundle)
* insert Identifiers2020NY000182
* meta.extension[aliasStatus].valueBoolean = false
* meta.extension[replaceStatus].valueCodeableConcept = ReplaceStatusCS#original "original record"
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Patient, Decedent-Example3-TEST)
* insert addentry(RelatedPerson, DecedentFather-Example1-TEST)
* insert addentry(RelatedPerson, DecedentMother-Example1-TEST)
* insert addentry(Observation, DeathDate-Example3-TEST)
* insert addentry(Location, DeathLocation-Example3-TEST)
