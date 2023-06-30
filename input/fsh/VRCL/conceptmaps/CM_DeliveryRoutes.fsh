Instance: FetalPresentationCM
InstanceOf: ConceptMap
Usage: #definition
* experimental = false
* insert ConceptMapIntro(DeliveryRoutes, ValueSetDeliveryRoutes)
* insert AddGroup("IJE", $sct)
* insert MapConcept( #1,  "Spontaneous", #48782003, "Vaginal/Spontaneous")
* insert MapConcept( #2,  "Forceps", #302383004, "Vaginal/Forceps")
* insert MapConcept( #3,  "Vacuum", #61586001, "Vaginal/Vacuum")
* insert MapConcept( #4,  "Cesarean", #11466000, "Cesarean section")
* insert MapConcept( #9,  "Unkown", #61665006, "Unknown")