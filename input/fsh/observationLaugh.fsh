Profile:        ToDoLaugh
Parent:         Observation
Id:             IHE.ToDo.laugh
Title:          "IHE ToDo Laugh Observation"
Description:    """
A profile on the Observation that declares how ToDo will Create/Update laugh measurements.

* must have vital-signs activity
* must have LOINC#71344-6 which indicates this is an observation about laughing
*  code AND SNOMED#288535006
* must have effectiveDateTime
* must not have a value[x]
* must have two components
* must have humorous and funny-bone component values 
* may have a giddy component
* may have a position component
* must have status at final
* must point at the patient
* may have a note (comment)
* once created will or might have an id, versionId, lastUpdated, text, and identifier
"""
* ^version = "0.1.0"
* ^date = "2023-12-01"
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding 1..
* category.coding contains activity 1..1 
* category.coding[activity] = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding 1..
* code.coding contains loincCode1 1..1 and snomedCode2 0..1
* code.coding[loincCode1] = LOINC#71344-6
* code.coding[snomedCode2] = SCT#288535006
* effectiveDateTime 1..1
* value[x] 0..0
* component 2..
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "funny factors"
* component contains 
	humorous 1..1 and 
	funny-bone 1..1 and 
	giddy 0..1 and 
	position 0..*
* component[humorous].code = LOINC#97379-2 // Yes, I know this is a real bone by a slightly different spelling... this is intended to be funny
* component[humorous].value[x] only Quantity
* component[humorous].valueQuantity ^short = "express the quantity of humor received"
* component[funny-bone].code = SCT#367475009 // again.. real loinc code for funny bone
* component[funny-bone].value[x] only string
* component[funny-bone].valueString ^short = "what hit the funny bone?"
* component[giddy].code = SCT#404641004
* component[giddy].value[x] only string
* component[giddy].valueString ^short = "explain how giddy"
* component[position].code = LOINC#40443-4
* component[position].value[x] only CodeableConcept
* component[position].valueCodeableConcept from http://hl7.org/fhir/ValueSet/body-site
* bodySite from ihe-ToDo-laughing-positions
* status = #final
* subject 1..1
* subject only Reference(Patient)
* note 0..1
// this is making everything else in observation forbidden. If they show up, apps should not misbehave. IHE ToDo compliant apps shall not populate these in a Create or Update.
* implicitRules 0..0
* language 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* basedOn 0..0
* partOf 0..0
* focus 0..0
* issued 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0

// This is showing how to build a valueSet. This will be a standalone valueset, but is built here because this is where it is first used
ValueSet: IheToDoLaughing
Id: ihe-ToDo-laughing-positions
Title: "The positions during laughing"
Description: "These are the body positions that IHE ToDo laughing. The valueset is not a good one as it is being used in BodySite but it is not the site on the body but the position of the body... but this is just for fun."
* ^experimental = true
* LOINC#93013-1 "Sitting ability"
* LOINC#60730-9 "Standing"
* LOINC#85927-2 "Lying to sitting on side of bed - functional goal"


Instance:   ex-IHE-ToDo-laugh-0
InstanceOf: IHE.ToDo.laugh
Title: "Example of an IHE ToDo laugh R4 observation, minimal"
Description:      "holding typical values"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category.coding[activity] = http://terminology.hl7.org/CodeSystem/observation-category#activity "Activity"
* code.coding[loincCode1] = LOINC#71344-6 "I have been able to laugh and see the funny side of things"
* code.coding[snomedCode2] = SCT#288535006 "Finding relating to laughing"
* subject = Reference(Patient/ex-patient)
* performer = Reference(Practitioner/ex-author)
* effectiveDateTime = 2023-12-01T08:42:50-05:00
* component[humorous].code = LOINC#97379-2 "XR Humerus - left AP"
* component[humorous].valueQuantity = 140.0 '%' "PercentNormal"
* component[funny-bone].code = SCT#367475009 "Lesion of ulnar nerve"
* component[funny-bone].valueString = "baseball"
* component[giddy].code = SCT#404641004 "Giddiness"
* component[giddy].valueString = "can't breath"
* note.text = "a minimal blood pressure"