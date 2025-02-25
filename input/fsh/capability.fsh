Instance: IHE.ToDo.client
InstanceOf: CapabilityStatement
Title: "ToDo Actor"
Usage: #definition
* description = """
CapabilityStatement for Client Actor 

Explain
- blah
- blah
"""
* url = "https://profiles.ihe.net/Domain/Profile/CapabilityStatement/IHE.ToDo.client"
* name = "IHE_ToDo_client"
* title = "IHE ToDo client"
* status = #active
* experimental = false
* date = "2022-10-27"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "ToDo Client provides capability to blah blah."
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * type = #Observation
    * supportedProfile[+] = "https://profiles.ihe.net/Domain/Profile/StructureDefinition/IHE.ToDo.laugh"
    * documentation = """
ToDo transaction [ITI-00]
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed"
    * searchParam[+]
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * name = "category"
      * type = #token
      * documentation = "The classification of the type of observation"
    * searchParam[+]
      * name = "code"
      * type = #token
      * documentation = "The code of the observation type"
    * searchParam[+]
      * name = "patient"
      * type = #token
      * documentation = "The subject that the observation is about (if patient)"
  * interaction.code = #search-system


Instance: IHE.ToDo.server
InstanceOf: CapabilityStatement
Title: "ToDo Server Actor"
Usage: #definition
* description = """
CapabilityStatement for Server Actor.

Explain
- blah
- blah
"""
* url = "https://profiles.ihe.net/Domain/Profile/CapabilityStatement/IHE.ToDo.server"
* name = "IHE_ToDo_supplier"
* title = "IHE ToDo Server"
* status = #active
* experimental = false
* date = "2022-10-27"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "ToDo Client provides capability to blah blah."
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * type = #Observation
    * supportedProfile[+] = "https://profiles.ihe.net/Domain/Profile/StructureDefinition/IHE.ToDo.laugh"
    * documentation = """
ToDo transaction [ITI-00]
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed"
    * searchParam[+]
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * name = "category"
      * type = #token
      * documentation = "The classification of the type of observation"
    * searchParam[+]
      * name = "code"
      * type = #token
      * documentation = "The code of the observation type"
    * searchParam[+]
      * name = "patient"
      * type = #token
      * documentation = "The subject that the observation is about (if patient)"
  * interaction.code = #search-system

