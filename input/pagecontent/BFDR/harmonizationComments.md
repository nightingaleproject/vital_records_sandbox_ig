### Move from VRCL to BFDR
Birth/Fetal Death specific elements should move out of VRCL and into BFDR.

### Practitioner
VRDR has all sorts of extra coded extensions.
PractitionerVitalRecords uses the qualification field to differentiate between different 'attendees at birth', which iMHO is incorrect.
This information would be better passed in the performer.function of some procedure/encounter relating to the birth. That would make it consistent with the way VRDR did it, and it could be used for Certifier as well with appropriate constraining of the value set used for performer.function.
VRDR has no MS flags. VRCL has MS flag for qualification. 

### Education Level
DeathRecord:    subject = Decedent (Patient)
Birth:   subject = Child (Patient),   focus = Mother (Patient) or NaturalFather (RelatedPerson) 
Fetal Death:  subject = Fetus (Patient), focus = Mother (Patient) or NaturalFather (RelatedPerson) 
The VitalRecords version uses a valueset that includes Mother and Father's education level. If the Decedent education level code was added in, all would be well... The valueset from VRDR will do the trick.
VRCL has a subject and focus. 

### Input Race and Ethnicity
VRDR also has  "Input Race and Ethnicity" -- input is submitted by jurisdiction. There is currently no profile in BFDR for Input Race and Ethnicity. Moving from VRDR to VRCL to use for Mother and Father's Race and Ethnicity. 

### Partial Date and Partial Date Time
Extensions added to provide values of a partial date (Extension). If a component is missing, it is assumed unknown.

{% include markdown-link-references.md %}