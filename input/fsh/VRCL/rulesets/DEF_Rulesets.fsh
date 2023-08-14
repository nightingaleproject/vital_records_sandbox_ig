RuleSet: SubjectRelatedPattern
* subject only Reference(USCorePatientProfile)  // Child, Fetus, or Decedent
  * ^short = "This is the subject of the report, not the parent"
* focus 0..1 // not present if subject is Decedent.  If subject is baby/fetus, focus can be Mother (Patient) or Father (relatedPerson)
* focus only Reference(USCorePatientProfile or USCoreRelatedPersonProfile) //not required, may be omitted if reporting education level of decedent, not parent. 
  * ^short = "The RelatedPerson or Patient record for the parent"
