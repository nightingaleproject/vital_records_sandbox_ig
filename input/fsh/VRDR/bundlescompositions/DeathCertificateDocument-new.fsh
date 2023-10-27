Profile: DeathCertificateDocument
Parent: Bundle
Id: vrdr-death-certificate-document
Title: "Death Certificate Document New"
Description: "The resources comprising the death certificate composition (Bundle/Document)."
* identifier 1..
  * extension contains
      CertificateNumber named certificateNumber 0..1 and
      AuxiliaryStateIdentifier1 named auxiliaryStateIdentifier1 0..1 and
      AuxiliaryStateIdentifier2 named auxiliaryStateIdentifier2 0..1
  * value ^short = "Death Record Identifier (YYYYJJNNNNNN)"
    * ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
    * ^maxLength = 12
* type = #document (exactly)
* entry ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing based on the profile"
* entry contains DeathCertificate 1..1
  * resource 1..
* entry[DeathCertificate] ^short = "Death Certificate"
  * ^definition = "Death Certificate"
  * resource only DeathCertificate