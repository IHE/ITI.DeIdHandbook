

Instance:   ex-encounter
InstanceOf: Encounter
Title: "Example Encounter"
Description:      "holding typical values"
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* subject = Reference(Patient/ex-patient)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#HH

Instance: ex-practitioner
InstanceOf: Practitioner
Title: "Dummy Practitioner example"
Description: "Dummy Practitioner example for completeness sake. No actual use of this resource other than an example target"
Usage: #example
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* telecom.system = #email
* telecom.value = "Practitioner@example.com"

Instance: ex-author
InstanceOf: Practitioner
Title: "Dummy Authoring Practitioner example"
Description: "Dummy Practitioner example for completeness sake. No actual use of this resource other than an example target"
Usage: #example
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* telecom.system = #email
* telecom.value = "Author@example.com"
