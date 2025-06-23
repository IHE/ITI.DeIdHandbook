
Instance: IHE.DeId.AuditCreator
InstanceOf: CapabilityStatement
Usage: #definition
* description = """
CapabilityStatement for [DeIdentification Audit Creator](security.html) Actor in [DeIdentification Handbook](index.html).

This Actor is derived off of the [ATNA Secure Application](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.2) 
or [ATNA Secure Node](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.1) actor 
with [ATNA ATX:FHIR Feed Option](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html). 

This Actor is derived off of the [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html) 
[Audit Creator](https://profiles.ihe.net/ITI/BALP/volume-1.html#152111-audit-creator) recording rich audit log entries to ATNA.

- This Actor is involved in the generation of De-Identified data, and thus would record [De-Identification Audit Events](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.html)
- Ths Actor may be involved in events that uncover a Privacy Disclosure, and thus would record [Privacy Disclosure Audit Events](https://build.fhir.org/ig/IHE/ITI.BasicAudit/StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.html).
"""
* name = "IHE_DeId_AuditCreator"
* title = "IHE DeId Audit Creator"
* status = #active
* experimental = false
* date = "2025-06-17"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* imports[+] = "https://profiles.ihe.net/ITI/BALP/CapabilityStatement/IHE.BALP.AuditCreator"
* rest
  * mode = #client
  * documentation = """
CapabilityStatement for [DeIdentification Audit Creator](security.html) Actor in [DeIdentification Handbook](index.html).

This Actor is derived off of the [ATNA Secure Application](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.2) 
or [ATNA Secure Node](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.1) actor 
with [ATNA ATX:FHIR Feed Option](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html). 

This Actor is derived off of the [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html) 
[Audit Creator](https://profiles.ihe.net/ITI/BALP/volume-1.html#152111-audit-creator) recording rich audit log entries to ATNA.

- This Actor is involved in the generation of De-Identified data, and thus would record [De-Identification Audit Events](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.html)
- Ths Actor may be involved in events that uncover a Privacy Disclosure, and thus would record [Privacy Disclosure Audit Events](https://build.fhir.org/ig/IHE/ITI.BasicAudit/StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.html).
"""
  * security
    * description = "[ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) required, encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
  * resource[+]
    * type = #AuditEvent
    * documentation = "For ATNA Record Audit Event [ITI-20] using FHIR."
    * interaction[+].code = #create
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PrivacyDisclosure.Source"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DeId/StructureDefinition/IHE.BasicAudit.DeIdentification.Source"
