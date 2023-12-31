### Miscellaneous Comments
* Guidance on missing data is missing from the IG
* Guidance on Must Support (and flag data elements as MS)
* Some IJE Fields intentionally not mapped
    * SEX_BYPASS  -- deprecated

### Alias, Replace, Void Actions
The ALIAS and VOID IJE fields are used to direct an action be performed on a death record.  These actions are now specified through message types in the accompanying Vital Records Messaging Implementation Guide message descriptions for [Alias](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#alias) and [Void](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#void).  Sending a replacement death record is also specified through the [Replace](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#replace) message type, but the status of the replacement is mapped to the VRDR IG (see [DeathCertificate]).

### Partial Dates and Times
Several date/time fields (Date of Death, Date of Surgery, Date of Birth, and Date of Injury) in the IG allow components of the field to be unknown.  The FHIR [date](https://build.fhir.org/datatypes.html#date) and [datetime](https://build.fhir.org/datatypes.html#datetime) fields provide the ability to leave the less significant components unspecified (e.g., 2018, 1973-06, or 1905-08-23 are valid dates).  In addition to the built-in FHIR method for specifying partial dates, this IG provides extensions ([PartialDate] and [PartialDateTime]) that allow the components to be specified independently.  When using these extensions, a value must be specified for each component (e.g., year, month, day), or a missing value code specified.  This allows dates where any component is missing to be specified.   Creators of conformant content are free to choose to always use the Partial date and datetime extensions to represent their dates and times.

A value of unknown (all 9's) in IJE is equivalent to a null value and a DataAbsentReason extension.  See this [DeathDate](Observation-DeathDate-Example3.json.html) for an example of both unknown integer values -- the day of death, "99" in IJE -- and unknown time value -- the time of death, "9999" in IJE.

### City Codes
FHIR [addresses](https://build.fhir.org/datatypes.html#Address) support a string value for city. The death record submission requires a 5 digit coded value, so the IG defines an extension [CityCode] for this purpose. The code should be selected to match the literal content of the city field. As of the date of publication, these codes should be in accordance with the [NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf).

### County Codes
FHIR [addresses](https://build.fhir.org/datatypes.html#Address) support a string value for county (district). The death record submission requires a 3 digit coded value, so the IG defines an extension [DistrictCode] for this purpose. The code should be selected to match the literal content of the district field. As of the date of publication, these codes should be in accordance with the [NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf).

### State Literals
States and jurisdictions are consistently represented using two letter postal codes bound to a string field.   The IJE typically represents states using a 2 letter postal code and a separate literal field.  Mapping from the 2 letter codes to literals must be provided outside of the VRDR IG, and can leverage the [StatesTerritoriesProvincesVS].

### Country Literals
Countries are consistently represented using two letter postal codes bound to a string field.   The IJE typically represents countries using a 2 letter postal code and a separate literal field.  Mapping from the 2 letter codes to literals must be provided outside of the VRDR IG, and can leverage the [CountryCS].

### Decedent Name
Profile conformance requires that either a first, last, or middle name be provided based on US Core requirements.  If no name components are available, a data absent reason should be provided for at least one name component in order to conform to the profile requirements.

NCHS submission requires only a last name. Last name is required for NCHS submission.  If the decedent's legal name is unknown, name.family should be reported as 'UNKNOWN', or omitted. Placeholder names such as 'John Doe' or 'Jane Doe' should not be reported.

### Decedent Gender
Profile conformance requires that gender be provided.   A value of 'unknown' will satisfy this requirement.   There is no IJE field that is mapped to the Decedent.gender field.

### Specifying None of the Above and Missing Data
All of the none-of-the-above values are represented as observations with a clear code, and a value of 'None'. If any of the following are present in the bundle, then the interpretation is that the corresponding individual components are all 'N'  
##### Abnormal Conditions of Newborn
If [ObservationNoneOfSpecifiedAbnormalConditionsOfNewborn] is present in bundle, then the interpretation is that all individual abnormal conditions of newborn are 'N'
##### Maternal Morbidities
If [ObservationNoneOfSpecifiedMaternalMorbidities] is present in bundle, then the interpretation is that all individual maternal morbidities are 'N'
##### Characteristics of Labor and Delivery
If [ObservationNoneOfSpecifiedCharacteristicsOfLaborAndDelivery] is present in bundle, then the interpretation is that all individual risk factors are 'N' 
##### Pregnancy Risk Factors
If [ObservationNoneOfSpecifiedPregnancyRiskFactors] is present in bundle, then the interpretation is that all individual risk factors are 'N'
##### Congenital Anomalies of Newborn
If [ObservationNoneOfSpecifiedCongenitalAnomoliesOfTheNewborn] is present in bundle, then the interpretation is that all individual congenital anomalies are 'N' and [ConditionCongenitalAnomalyOfNewborn] should not be used.
##### Infection Present During Pregnancy
If [ObservationNoneOfSpecifiedInfectionsPresentDuringPregnancy] is present in bundle, then the interpretation is that all individual infections are 'N' and [ConditionInfectionPresentDuringPregnancy] should not be used. 
##### Method of Delivery 
If [ObservationUnknownFinalRouteMethodDelivery] is present in bundle, then the interpretation is that the method of delivery is unknown, and [ProcedureFinalRouteMethodDelivery] should not be used.
##### Obstetric Procedures 
If [ObservationNoneOfSpecifiedObstetricProcedures] is present in bundle, then the interpretation is that external cephalic procedure was not performed, and [ProcedureObstetric] should not be used.

### Handling of Edit Flags
TBD

{% include markdown-link-references.md %}
