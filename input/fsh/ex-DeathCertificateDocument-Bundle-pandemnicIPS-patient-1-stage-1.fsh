Instance: ex-DeathCertificateDocument-Bundle-pandemnicIPS-patient-1-stage-1
InstanceOf: DeathCertificateDocument
Usage: #example
Description: """
In addition to pseudonymizing the Decedent Identifiers and Patient name, we are also applying pseudoidentifiers and names for the:
* Decedent Mother
* Decedent Father
* Decedent Spouse

The indirect identifiers in this record will be addressed during stage 2 de-identification.
"""
* id = "e817cefe-a7c4-487a-8116-be23cf865f3f"
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate-document"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CertificateNumber"
* identifier.extension[=].valueString = "001621"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier1"
* identifier.extension[=].valueString = "000000000021"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier2"
* identifier.extension[=].valueString = "200000000021"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2024001621"
* type = #document
* timestamp = "2024-07-01T14:48:35.401641-04:00"
* entry[+].fullUrl = "urn:uuid:c1bb78d9-55e8-4a2e-9d42-9f8728d2aa23"
* entry[=].resource = ex-DeathCertificate-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9"
* entry[=].resource = Decedent-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:b5615edf-3de5-4023-9ca2-98e80536a2b7"
* entry[=].resource = DecedentFather-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:365abcdd-7b5a-49aa-adef-2f0e1def849d"
* entry[=].resource = DecedentMother-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:b1e58832-86bf-4faa-9d1d-abd550bd628b"
* entry[=].resource = DecedentSpouse-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:ad81d953-2f31-46e5-bdb6-954b32318ef0"
* entry[=].resource = DecedentAge-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:37f4d004-8839-4cb9-ac2d-cf0d2eb6c8a6"
* entry[=].resource = DecedentUsualWork-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:2152723b-9eaa-447e-8ff4-0e859bf0e811"
* entry[=].resource = DecedentPregnancyStatus-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:641f48cc-7f9e-4aea-845a-f78c1b4e558d"
* entry[=].resource = DeathDate-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:5c0a4ab6-ebf3-4ed0-9fcb-6c03cb64af1d"
* entry[=].resource = Pronouncer-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:b410bec3-0ecf-45ba-b7c3-c0dd9297fe1c"
* entry[=].resource = MannerOfDeath-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:1256ca08-8e8a-43fe-b7af-2dc549ae70db"
* entry[=].resource = Certifier-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:ae9b834f-60bc-41f0-87ec-adccda8aebe2"
* entry[=].resource = DeathCertification-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:7094b605-507f-4d3e-a7b8-58606a288189"
* entry[=].resource = CauseOfDeathPart1-ex-1-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:c1598880-0082-44b9-a602-b1ed9ad381ae"
* entry[=].resource = CauseOfDeathPart1-ex-2-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:1ea31462-32ba-4a02-a47f-d27e9eea4f65"
* entry[=].resource = CauseOfDeathPart2-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:96d67254-1f3e-4bab-9a7d-15d19a9d80ca"
* entry[=].resource = DispositionLocation-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:c169e513-c1e6-4f2e-b88d-5f72b3854457"
* entry[=].resource = RecordAxisCauseOfDeath-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:4065c123-311a-41aa-9a9c-e8240a45eb9c"
* entry[=].resource = EntityAxisCauseOfDeath-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:1db975f6-1b06-43af-b7a9-2074abbdb1a5"
* entry[=].resource = Mortician-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:83ad3f5a-2ee9-4406-966f-2dc208c859a4"
* entry[=].resource = ActivityAtTimeOfDeath-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:9c26ac31-71b3-4b11-b031-1aa17fc36bbb"
* entry[=].resource = CodedRaceAndEthnicity-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:f8c29ba7-2dcf-4cb8-9b95-2d0286ce7467"
* entry[=].resource = ManualUnderlyingCauseOfDeath-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:37c32784-cfa4-4892-9f2b-c285268230b7"
* entry[=].resource = AutomatedUnderlyingCauseOfDeath-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:7146ab6b-335c-4f2e-a895-fb761bfb1913"
* entry[=].resource = FuneralHome-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:a1254fc2-c506-4c4e-b210-0118af976594"
* entry[=].resource = DecedentDispositionMethod-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:fbfe11a7-af33-41d6-9c2a-f9558e1d596d"
* entry[=].resource = PlaceOfInjury-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:1247807f-6130-40c8-bf54-bcb9fb982e9a"
* entry[=].resource = CodingStatusValues-pandemnicIPS-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:dad1df95-fe46-410e-82e1-c95c758ae8dd"
* entry[=].resource = PractitionerUvIps-vrdr-pandemicIPS-patient-1-stage-1

Instance: ex-DeathCertificate-pandemnicIPS-patient-1-stage-1
InstanceOf: DeathCertificate
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate"
* id = "c1bb78d9-55e8-4a2e-9d42-9f8728d2aa23"
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
* extension[=].valueCodeableConcept = $vrdr-filing-format-cs#electronic
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
* extension[=].valueCodeableConcept = $vrdr-replace-status-cs#original
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
* extension[=].valueString = "State Specific Content"
* status = #final
* type = $loinc#64297-5 "Death certificate"
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* date = "2024-07-01T00:00:00Z"
* author = Reference(urn:uuid:1256ca08-8e8a-43fe-b7af-2dc549ae70db)
* title = "Death Certificate"
* attester.party = Reference(urn:uuid:1256ca08-8e8a-43fe-b7af-2dc549ae70db)
* attester.mode = #legal
* attester.time = "2024-07-21T16:39:40-05:00"
* attester.party = Reference(urn:uuid:1256ca08-8e8a-43fe-b7af-2dc549ae70db)
* event.code = $sct#307930005 "Death certificate (record artifact)"
* event.detail = Reference(urn:uuid:ae9b834f-60bc-41f0-87ec-adccda8aebe2)

* section[DecedentDemographics].title = "Decedent Demographics"
* section[DecedentDemographics].code = $vrdr-document-section-cs#DecedentDemographics
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:b5615edf-3de5-4023-9ca2-98e80536a2b7)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:365abcdd-7b5a-49aa-adef-2f0e1def849d)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:b1e58832-86bf-4faa-9d1d-abd550bd628b)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:ad81d953-2f31-46e5-bdb6-954b32318ef0)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:37f4d004-8839-4cb9-ac2d-cf0d2eb6c8a6)

* section[DeathInvestigation].title = "Death Investigation"
* section[DeathInvestigation].code = $vrdr-document-section-cs#DeathInvestigation
* section[DeathInvestigation].entry[+] = Reference(urn:uuid:2152723b-9eaa-447e-8ff4-0e859bf0e811)
* section[DeathInvestigation].entry[+] = Reference(urn:uuid:641f48cc-7f9e-4aea-845a-f78c1b4e558d)

* section[DeathCertification].title = "Death Certification"
* section[DeathCertification].code = $vrdr-document-section-cs#DeathCertification
* section[DeathCertification].entry[+] = Reference(urn:uuid:1256ca08-8e8a-43fe-b7af-2dc549ae70db)
* section[DeathCertification].entry[+] = Reference(urn:uuid:ae9b834f-60bc-41f0-87ec-adccda8aebe2)
* section[DeathCertification].entry[+] = Reference(urn:uuid:b410bec3-0ecf-45ba-b7c3-c0dd9297fe1c)
* section[DeathCertification].entry[+] = Reference(urn:uuid:7094b605-507f-4d3e-a7b8-58606a288189)
* section[DeathCertification].entry[+] = Reference(urn:uuid:c1598880-0082-44b9-a602-b1ed9ad381ae)
* section[DeathCertification].entry[+] = Reference(urn:uuid:1ea31462-32ba-4a02-a47f-d27e9eea4f65)

* section[DecedentDisposition].title = "Decedent Disposition"
* section[DecedentDisposition].code = $vrdr-document-section-cs#DecedentDisposition
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:96d67254-1f3e-4bab-9a7d-15d19a9d80ca)
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:7146ab6b-335c-4f2e-a895-fb761bfb1913)
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:a1254fc2-c506-4c4e-b210-0118af976594)
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:1db975f6-1b06-43af-b7a9-2074abbdb1a5)

* section[CodedContent].title = "Coded Content"
* section[CodedContent].code = $vrdr-document-section-cs#CodedContent
* section[CodedContent].entry[+] = Reference(urn:uuid:83ad3f5a-2ee9-4406-966f-2dc208c859a4)
* section[CodedContent].entry[+] = Reference(urn:uuid:fbfe11a7-af33-41d6-9c2a-f9558e1d596d)
* section[CodedContent].entry[+] = Reference(urn:uuid:9c26ac31-71b3-4b11-b031-1aa17fc36bbb)
* section[CodedContent].entry[+] = Reference(urn:uuid:f8c29ba7-2dcf-4cb8-9b95-2d0286ce7467)
* section[CodedContent].entry[+] = Reference(urn:uuid:37c32784-cfa4-4892-9f2b-c285268230b7)
* section[CodedContent].entry[+] = Reference(urn:uuid:c169e513-c1e6-4f2e-b88d-5f72b3854457)
* section[CodedContent].entry[+] = Reference(urn:uuid:4065c123-311a-41aa-9a9c-e8240a45eb9c)
* section[CodedContent].entry[+] = Reference(urn:uuid:1247807f-6130-40c8-bf54-bcb9fb982e9a)

Instance: Decedent-pandemnicIPS-patient-1-stage-1
InstanceOf: Decedent
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
* id = "21225659-4bec-4512-b2f1-6936abf767d9"
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/SpouseAlive"
* extension[=].valueCodeableConcept = $v2-0136#Y
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
* extension[=].valueCodeableConcept = $administrative-gender#F "Female"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Roanoke"
* extension[=].valueAddress.state = "VA"
* extension[=].valueAddress.country = "US"
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "123456789"
* name.use = #anonymous
* name.text = "PseudoFamily"
* name.family = "PseudoFamily"
* name.given = "PseudoGiven"
* gender = #female
* birthDate = "1996-05-01"
* telecom.system = #phone
* telecom.value = "07 850 9900"
* telecom.use = #mobile
* address.use = #home 
* address.line = "Grenzstraße"
* address.city = "Oberhausen"
* address.postalCode = "46045"
* address.country = "DEU"
//* address.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-within-city-limits-indicator-vr"
//* address.extension[=].valueCoding = $v2-0136#Y "Yes"
//* address.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/StreetName"
//* address.extension[=].valueString = "Lockwood"
//* address.line = "5590 Lockwood Drive"
//* address.city = "Danville"
//* address.city.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CityCode"
//* address.city.extension.valuePositiveInt = 1234
//* address.district = "Fairfax"
//* address.district.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/DistrictCode"
//* address.district.extension.valuePositiveInt = 321
//* address.state = "VA"
//* address.country = "US"
* maritalStatus = $v3-MaritalStatus#S "Never Married"
* contact.relationship = $v2-0131#U
* contact.relationship.text = "Friend of family"
* contact.name.text = "Joe Smith"
* generalPractitioner = Reference(urn:uuid:d30e788b-7fcc-4440-8a40-cec41c70224a) "Yaser, Joseph"

Instance: PractitionerUvIps-vrdr-pandemicIPS-patient-1-stage-1
InstanceOf: PractitionerUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
* id = "d30e788b-7fcc-4440-8a40-cec41c70224a"
* name.text = "Joseph Yaser"
* name.family = "Joseph"
* name.given = "Yaser"

Instance: DecedentFather-pandemnicIPS-patient-1-stage-1
InstanceOf: DecedentFather
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-father"
* id = "b5615edf-3de5-4023-9ca2-98e80536a2b7"
* active = true
* patient = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* relationship = $v3-RoleCode#FTH
* name.use = #anonymous
* name.text = "Pseudo Dad"
* name.family = "PseudoFamilyDad"
* name.given = "PseudoGivenDad"
* name.suffix.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.suffix.extension.valueCode = #masked

Instance: DecedentMother-pandemnicIPS-patient-1-stage-1
InstanceOf: DecedentMother
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-mother"
* id = "365abcdd-7b5a-49aa-adef-2f0e1def849d"
* active = true
* patient = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* relationship = $v3-RoleCode#MTH
* name.use = #anonymous
* name.text = "Pseudo Mom"
* name.family = "PseudoFamilyMom"
* name.given = "PseudoGivenMom"

Instance: DecedentSpouse-pandemnicIPS-patient-1-stage-1
InstanceOf: DecedentSpouse
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-spouse"
* id = "b1e58832-86bf-4faa-9d1d-abd550bd628b"
* active = true
* patient = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* relationship = $v3-RoleCode#SPS
* name.use = #anonymous
* name.text = "Pseudo Spouse"
* name.family = "PseudoFamilySpouse"
* name.given = "PseudoGivenSpouse"
* name.suffix.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.suffix.extension.valueCode = #masked

Instance: DecedentAge-pandemnicIPS-patient-1-stage-1
InstanceOf: DecedentAge
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-age"
* id = "ad81d953-2f31-46e5-bdb6-954b32318ef0"
* status = #final
* code = $loinc#39016-1
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* valueQuantity = 29 'a' "years"

Instance: DecedentUsualWork-pandemnicIPS-patient-1-stage-1
InstanceOf: DecedentUsualWork
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work"
* id = "37f4d004-8839-4cb9-ac2d-cf0d2eb6c8a6"
* status = #final
* code = $loinc#21843-8
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component[odh-UsualIndustry].valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"

Instance: DecedentPregnancyStatus-pandemnicIPS-patient-1-stage-1
InstanceOf: DecedentPregnancyStatus
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-pregnancy-status"
* id = "2152723b-9eaa-447e-8ff4-0e859bf0e811"
* status = #final
* code = $loinc#69442-2
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* valueCodeableConcept = $CodeSystem-death-pregnancy-status#2 "Pregnant at time of death"

Instance: DeathDate-pandemnicIPS-patient-1-stage-1
InstanceOf: DeathDate
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date"
* id = "641f48cc-7f9e-4aea-845a-f78c1b4e558d"
* status = #final
* code = $loinc#81956-5
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(urn:uuid:5c0a4ab6-ebf3-4ed0-9fcb-6c03cb64af1d)
* valueDateTime.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-time-vr"
* valueDateTime.extension.extension[+].url = "day"
* valueDateTime.extension.extension[=].valueUnsignedInt.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueDateTime.extension.extension[=].valueUnsignedInt.extension.valueCode = #unknown
* valueDateTime.extension.extension[+].url = "year"
* valueDateTime.extension.extension[=].valueUnsignedInt = 2024
* valueDateTime.extension.extension[+].url = "month"
* valueDateTime.extension.extension[=].valueUnsignedInt = 6
* valueDateTime.extension.extension[+].url = "time"
* valueDateTime.extension.extension[=].valueTime = "12:13:14"
* valueDateTime.extension.extension[=].valueTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueDateTime.extension.extension[=].valueTime.extension.valueCode = #unknown
* component[datetimePronouncedDead].code = $loinc#80616-6
* component[datetimePronouncedDead].valueDateTime = "2024-06-30T16:39:40-05:00"
* component[placeOfDeath].code = $loinc#58332-8
* component[placeOfDeath].valueCodeableConcept = $sct#440081000124100 "Death in home"

Instance: Pronouncer-pandemnicIPS-patient-1-stage-1
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* id = "5c0a4ab6-ebf3-4ed0-9fcb-6c03cb64af1d"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339101"
* name.use = #official
* name.family = "Purple"
* name.given = "Jane"
* address.line = "44 South Street"
* address.city = "Rockville"
* address.state = "MD"
* address.postalCode = "20854"
* address.country = "US"

Instance: MannerOfDeath-pandemnicIPS-patient-1-stage-1
InstanceOf: MannerOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manner-of-death"
* id = "b410bec3-0ecf-45ba-b7c3-c0dd9297fe1c"
* status = #final
* code = $loinc#69449-7
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* performer = Reference(urn:uuid:1256ca08-8e8a-43fe-b7af-2dc549ae70db)
* valueCodeableConcept = $sct#38605008 "Natural death"

Instance: Certifier-pandemnicIPS-patient-1-stage-1
InstanceOf: Certifier
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-certifier"
* id = "1256ca08-8e8a-43fe-b7af-2dc549ae70db"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "9941339100"
* name.use = #official
* name.family = "Black"
* name.given = "Jim"
* address.line = "44 South Street"
* address.city = "Bird in Hand"
* address.state = "PA"
* address.postalCode = "17505"
* address.country = "US"

Instance: DeathCertification-pandemnicIPS-patient-1-stage-1
InstanceOf: DeathCertification
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certification"
* id = "ae9b834f-60bc-41f0-87ec-adccda8aebe2"
* identifier.value = "180"
* status = #completed
* code = $sct#308646001 "Death certification"
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* performedDateTime = "2024-01-21T16:39:40-05:00"
* performer.function = $v3-NullFlavor#OTH "Other"
* performer.function.text = "Nurse Practitioner"
* performer.actor = Reference(urn:uuid:1256ca08-8e8a-43fe-b7af-2dc549ae70db)

Instance: CauseOfDeathPart1-ex-1-pandemnicIPS-patient-1-stage-1
InstanceOf: CauseOfDeathPart1
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* id = "7094b605-507f-4d3e-a7b8-58606a288189"
* status = #final
* code = $loinc#69453-9
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* performer = Reference(urn:uuid:1256ca08-8e8a-43fe-b7af-2dc549ae70db)
* valueCodeableConcept.text = "Covid-19"
* component[lineNumber].valueInteger = 1
* component[interval].code = $loinc#69440-6
* component[interval].valueString = "4 hours"

Instance: CauseOfDeathPart1-ex-2-pandemnicIPS-patient-1-stage-1
InstanceOf: CauseOfDeathPart1
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* id = "c1598880-0082-44b9-a602-b1ed9ad381ae"
* status = #final
* code = $loinc#69453-9
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* performer = Reference(urn:uuid:1256ca08-8e8a-43fe-b7af-2dc549ae70db)
* valueCodeableConcept.text = "Eclampsia"
* component[lineNumber].valueInteger = 2
* component[interval].code = $loinc#69440-6
* component[interval].valueString = "3 months"

Instance: CauseOfDeathPart2-pandemnicIPS-patient-1-stage-1
InstanceOf: CauseOfDeathPart2
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part2"
* id = "1ea31462-32ba-4a02-a47f-d27e9eea4f65"
* status = #final
* code = $loinc#69441-4
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* performer = Reference(urn:uuid:1256ca08-8e8a-43fe-b7af-2dc549ae70db)
* valueCodeableConcept.text = "hypertensive heart disease"

Instance: DispositionLocation-pandemnicIPS-patient-1-stage-1
InstanceOf: DispositionLocation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-disposition-location"
* id = "96d67254-1f3e-4bab-9a7d-15d19a9d80ca"
* name = "Rosewood Cemetary"
* type = $vrdr-location-type-cs#disposition
* address.line = "303 Rosewood Ave"
* address.city = "Danville"
* address.state = "VA"
* address.postalCode = "24541"
* address.country = "US"
* physicalType = $location-physical-type#si "Site"

Instance: RecordAxisCauseOfDeath-pandemnicIPS-patient-1-stage-1
InstanceOf: RecordAxisCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-record-axis-cause-of-death"
* id = "c169e513-c1e6-4f2e-b88d-5f72b3854457"
* status = #final
* code = $loinc#80357-7
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* valueCodeableConcept = $ICD10#U07.1 "COVID-19"
* component[position].valueInteger = 1

Instance: EntityAxisCauseOfDeath-pandemnicIPS-patient-1-stage-1
InstanceOf: EntityAxisCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-entity-axis-cause-of-death"
* id = "4065c123-311a-41aa-9a9c-e8240a45eb9c"
* status = #final
* code = $loinc#80356-9
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* valueCodeableConcept = $ICD10#U07.1 "COVID-19"
* component[lineNumber].valueInteger = 1
* component[position].valueInteger = 1

Instance: Mortician-pandemnicIPS-patient-1-stage-1
InstanceOf: Mortician
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-mortician"
* id = "1db975f6-1b06-43af-b7a9-2074abbdb1a5"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "212222AB"
* name.text = "Ronald Q Smith"
* name.use = #official
* name.family = "Smith"
* name.given = "Ronald"
* name.given = "Q"

Instance: ActivityAtTimeOfDeath-pandemnicIPS-patient-1-stage-1
InstanceOf: ActivityAtTimeOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-activity-at-time-of-death"
* id = "83ad3f5a-2ee9-4406-966f-2dc208c859a4"
* status = #final
* valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-activity-at-time-of-death-cs#1 "While engaged in leisure activities."
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* effectiveDateTime = "2024-06-30T16:39:40-05:00"


Instance: CodedRaceAndEthnicity-pandemnicIPS-patient-1-stage-1
InstanceOf: ObservationCodedRaceAndEthnicityVitalRecords
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/coded-race-and-ethnicity-vr"
* id = "9c26ac31-71b3-4b11-b031-1aa17fc36bbb"
* status = #final
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* code = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-local-observation-codes-vr#CodedRaceAndEthnicity "Coded Race and Ethnicity Data produced by NCHS from submitted death record"
* component[FirstEditedCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#101 "White"
* component[SecondEditedCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#122 "Israeli"
* component[FirstAmericanIndianCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#A31 "Arikara"
* component[RaceRecode40].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#20 "AIAN and Asian"
* component[HispanicCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#233 "Chilean"

Instance: ManualUnderlyingCauseOfDeath-pandemnicIPS-patient-1-stage-1
InstanceOf: ManualUnderlyingCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manual-underlying-cause-of-death"
* id = "f8c29ba7-2dcf-4cb8-9b95-2d0286ce7467"
* status = #final
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* valueCodeableConcept = $ICD10#J96.0

Instance: AutomatedUnderlyingCauseOfDeath-pandemnicIPS-patient-1-stage-1
InstanceOf: AutomatedUnderlyingCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-automated-underlying-cause-of-death"
* id = "37c32784-cfa4-4892-9f2b-c285268230b7"
* status = #final
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* valueCodeableConcept = $ICD10#J96.0

Instance: FuneralHome-pandemnicIPS-patient-1-stage-1
InstanceOf: FuneralHome
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-funeral-home"
* id = "7146ab6b-335c-4f2e-a895-fb761bfb1913"
* active = true 
* name = "Lancaster Funeral Home and Crematory"
* address.line = "211 High Street"
* address.city = "Lancaster"
* address.state = "PA"
* address.country = "US"
* address.postalCode = "17573"

Instance: DecedentDispositionMethod-pandemnicIPS-patient-1-stage-1
InstanceOf: DecedentDispositionMethod
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-disposition-method"
* id = "a1254fc2-c506-4c4e-b210-0118af976594"
* status = #final
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* performer = Reference(urn:uuid:1db975f6-1b06-43af-b7a9-2074abbdb1a5)
* valueCodeableConcept = $sct#449971000124106 "Patient status determination, deceased and buried"

Instance: PlaceOfInjury-pandemnicIPS-patient-1-stage-1
InstanceOf: PlaceOfInjury
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-place-of-injury"
* id = "fbfe11a7-af33-41d6-9c2a-f9558e1d596d"
* status = #final
* subject = Reference(urn:uuid:21225659-4bec-4512-b2f1-6936abf767d9)
* valueCodeableConcept = $loinc#LA14084-0 "Home"

Instance: CodingStatusValues-pandemnicIPS-patient-1-stage-1
InstanceOf: CodingStatusValues
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-coding-status-values"
* id = "1247807f-6130-40c8-bf54-bcb9fb982e9a"
* parameter[shipmentNumber].valueString = "A2B2"
* parameter[receiptDate].valueDate = "2021-12-12"
* parameter[coderStatus].valueInteger = 5
* parameter[intentionalReject].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-intentional-reject-cs#1 "Reject1"
* parameter[acmeSystemReject].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-intentional-reject-cs#0 "Not Rejected"
* parameter[transaxConversion].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-transax-conversion-cs#3 "Conversion using non-ambivalent table entries"
