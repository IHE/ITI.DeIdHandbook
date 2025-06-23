
ValueSet: AuditEventSubtypeDeidentify
Id: IHE.BasicAudit.DeIdentification.Subtype
Title: "Audit Event Subtype for De-Identification"
Description: """
Defines the AuditEvent Subtype for De-Identification events.
This is used to indicate that the AuditEvent is specifically for a De-Identification event.
The code is based on the ISO 21089 lifecycle code for de-identification.
"""
* ^experimental = false
* http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle#deidentify
* http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle#pseudonymize
* http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle#reidentify

CodeSystem:  DeIdentificationEntityType
Title: "Entity Type for De-Identification"
Description:  "These AuditEvent.entity.type are related to De-Identification policy identification."
* ^caseSensitive = true
* ^experimental = false
* ^status = #active
* #DeId-algorithm "De-Identification Algorithm"

ValueSet: DeIdentificationEntityTypeVS
Title: "Entity Type for De-Identification valueset"
Description: "ValueSet Entity Type for De-Identification"
* ^experimental = false
* codes from system DeIdentificationEntityType




Invariant: val-audit-source
Description: "The Audit Source is this agent too."
Expression: "$this.who = %resource.source.observer"
Severity: #error

Profile:        AuditPrivacyDeIdentificationSource
Parent:         AuditEvent
Id:             IHE.BasicAudit.DeIdentification.Source
Title:          "Audit Event for De-Identification at Source"
Description:    """
Defines constraints on the AuditEvent Resource to record when a De-Identification happens at the Source.
Note that a De-Identification event often impacts many different patients, so many AuditEvent resources need to be created so that each Patient is individually represented. 
This prevents leakage of other patients' that were also De-Identified at the same time.

- Export event
- subtype of deidentify or pseudonymize
- shall have source of itself
- shall have a source agent
- should have a recipient agent(s) if known
- may have user, app, organization agent(s)
  - combine with the Security Token pattern
- should have the custodian that released the data
- should have the authorizer that represented the patient (may be the patient)
- shall have a patient entity
- may have the consent that authorized the de-identification
- may have the authorizing client token (saml, jwt, etc)
- may have the set of data entity(ies)
"""
* modifierExtension 0..0
* type = DCM#110106 // "Export"
* type 1..
* action = #R
* subtype 1..*
* subtype ^slicing.discriminator.type = #value
* subtype ^slicing.discriminator.path = "$this"
* subtype ^slicing.rules = #open
* subtype contains deidentify 1..1
* subtype[deidentify] from AuditEventSubtypeDeidentify
* subtype ^slicing.description = "needs to at least be a deidentify event"
// * severity in R5
* recorded 1..1 // already required
* outcome 1..1
* outcomeDesc MS // encouraged
* purposeOfEvent MS // why was the data disclosed
// source is already required, see invariant val-audit-source use
* agent 2..*
* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "source, recipient, and possibly the user who participated"
* agent contains 
	source 1..1 and
	recipient 0..* and
	custodian 0..1 and
	authorizer 0..1
	// may be many including app identity, user identity, etc
	// likely do need to express WHO requested the data be de-identified, and WHO authorized the de-identification
* agent[source].type 1..1
* agent[source].type = DCM#110153 // "Source Role ID"
* agent[source].who 1..1
* agent[source].network 1..1
* agent[source] obeys val-audit-source
* agent[recipient].type 1..1
* agent[recipient].type = DCM#110152 // "Destination Role ID"
* agent[recipient].who 1..1
* agent[recipient].network 1..1
* agent[custodian].type 1..1
* agent[custodian].type = SCT#159541003 // "Record keeping/library clerk"
* agent[custodian].who 1..1
* agent[authorizer].type 1..1
* agent[authorizer].type = SCT#429577009 // "Patient Advocate"
* agent[authorizer].who 1..1
* entity 2..*
* entity ^slicing.discriminator.type = #value
* entity ^slicing.discriminator.path = "type"
* entity ^slicing.rules = #open
* entity ^slicing.description = "patient and some data involved"
* entity contains
	patient 1..1 and
    deid 0..1 and
    consent 0..1
* entity[patient].type 1..1
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 // "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 // "Patient"
* entity[patient].role 1..
* entity[patient].what 1..1
* entity[patient].what only Reference(Patient)
* entity[deid].type = DeIdentificationEntityType#DeId-algorithm // "De-Identification Algorithm"
* entity[deid].what 1..1 MS // De-Identification algorithm identifier
* entity[consent].type = http://hl7.org/fhir/resource-types#Consent // "Consent"
* entity[consent].what 1..1 MS // consent identifier




Instance: ex-auditDeIdentification-source
InstanceOf: IHE.BasicAudit.DeIdentification.Source
Title: "Audit Example of De-Identification at source"
Description: "Audit Example for a De-Identification from source perspective"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = DCM#110106 "Export"
* action = #R
* subtype[deidentify] = http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle#deidentify "De-Identify (Anononymize) Record Lifecycle Event"
* subtype[1] = http://hl7.org/fhir/restful-interaction#read "read"
//* severity = #Informational
* recorded = 2020-04-29T09:49:00.000Z
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* purposeOfEvent = http://terminology.hl7.org/CodeSystem/v3-ActReason#HRESCH "healthcare research"
* source.site = "mobile app foo-bar"
* source.observer.display = "model number ABC, serial number 1234"
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#1 "User Device"
* agent[source].type = DCM#110153 "Source Role ID"
* agent[source].who.display = "model number ABC, serial number 1234"
* agent[source].requestor = false
* agent[source].network.address = "myDevice.example.com"
* agent[source].network.type = http://hl7.org/fhir/network-type#1 "domain name"
* agent[recipient].type = DCM#110152 "Destination Role ID"
* agent[recipient].requestor = false
* agent[recipient].who.display = "myMachine.example.org"
* agent[recipient].network.address = "http://server.example.com/fhir"
* agent[recipient].network.type = http://hl7.org/fhir/network-type#5 "URI"
* agent[authorizer].type = SCT#429577009 "Patient Advocate"
* agent[authorizer].who.reference = "http://example.org/fhir/Patient/ex-patient"
* agent[authorizer].requestor = true
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what.reference = "http://example.org/fhir/Patient/ex-patient"
* entity[consent].type = http://hl7.org/fhir/resource-types#Consent // "Consent"
* entity[consent].what.reference = "http://example.org/fhir/Consent/ex-consent"
* entity[deid].type = DeIdentificationEntityType#DeId-algorithm // "De-Identification Algorithm"
* entity[deid].what.identifier.value = "urn:uuid:bed39a2d-3212-4f24-a5c8-e4c168968057"
* entity[deid].what.identifier.system = "urn:ietf:rfc:3986" // "RFC 3986 URI"
* entity[deid].what.display = "De-Identification Algorithm Identifier for FooBar De-Identification Algorithm"




Instance: ex-auditReIdentification-source
InstanceOf: IHE.BasicAudit.DeIdentification.Source
Title: "Audit Example of authorized Re-Identification at source"
Description: "Audit Example for an authorized Re-Identification from source perspective"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = DCM#110106 "Export"
* action = #R
* subtype[deidentify] = http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle#reidentify "Re-identify Record Lifecycle Event"
* subtype[1] = http://hl7.org/fhir/restful-interaction#read "read"
//* severity = #Informational
* recorded = 2025-04-29T09:49:00.000Z
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* purposeOfEvent = http://terminology.hl7.org/CodeSystem/v3-ActReason#HRESCH "healthcare research"
* source.site = "mobile app foo-bar"
* source.observer.display = "model number ABC, serial number 1234"
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#1 "User Device"
* agent[source].type = DCM#110153 "Source Role ID"
* agent[source].who.display = "model number ABC, serial number 1234"
* agent[source].requestor = false
* agent[source].network.address = "myDevice.example.com"
* agent[source].network.type = http://hl7.org/fhir/network-type#1 "domain name"
* agent[recipient].type = DCM#110152 "Destination Role ID"
* agent[recipient].requestor = false
* agent[recipient].who.display = "myMachine.example.org"
* agent[recipient].network.address = "http://server.example.com/fhir"
* agent[recipient].network.type = http://hl7.org/fhir/network-type#5 "URI"
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what.reference = "http://example.org/fhir/Patient/ex-patient"
* entity[deid].type = DeIdentificationEntityType#DeId-algorithm // "De-Identification Algorithm"
* entity[deid].what.identifier.value = "urn:uuid:bed39a2d-3212-4f24-a5c8-e4c168968057"
* entity[deid].what.identifier.system = "urn:ietf:rfc:3986" // "RFC 3986 URI"
* entity[deid].what.display = "De-Identification Algorithm Identifier for FooBar De-Identification Algorithm"


