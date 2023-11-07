Profile: ObservationSimpleVitalRecords
Parent: Observation
Id: Observation-simple-vr
Title: "Observation - Simple Vital Records"
Description: "This profile is an abstract base profile for all Vital Records observations.  In future versions of this guide, when it is based on USCore STU6 or higher, this base profile would be USCoreSimpleObservation"
* ^abstract = true 
* subject 1.. 
* subject only Reference(PatientVitalRecords)