### HL7 FHIR data for secondary use

HL7 FHIR (Fast Healthcare Interoperability Resources) is a modern standard for exchanging hea
lthcare information electronically. FHIR uses RESTful APIs and represents healthcare data as modular "resources" such as Patient, Observation, Condition, and MedicationStatement. In secondary use, FHIR data is repurposed beyond direct patient care for research, public health surveillance, quality improvement, and analytics. This involves extracting and de-identifying data while preserving its utility for analysis. Secondary use of FHIR data enables large-scale studies, population health management, and the development of clinical decision support tools, while ensuring compliance with privacy regulations like HIPAA and GDPR.                    
FHIR provides several mechanisms to support de-identification:

**Table: FHIR De-identification Mechanisms**

| Mechanism | Description |
|-----------|-------------|
| Data Absent Reason | Extension to indicate why data is missing (e.g., "masked" for privacy)
 |                                                                                           | Security Labels | Meta.security tags to mark de-identification status and handling requirem
ents |                                                                                       | Redaction | Removal of resource elements containing identifiers |
| Generalization | Replacing precise values with ranges or categories |
| Pseudonymization | Replacing identifiers with consistent pseudonyms to maintain referential
 integrity |                                                                                 {:.grid}

### Two stages of de-identification for secondary use of FHIR

In this example, we assume a dedicated anonymization service is deployed in an environment se
rving secondary FHIR data use, which is separated from the environment where the operational EHR system is deployed. The de-identification at the source EHR typically follows basic pseudonymization practices (processing direct identifiers like patient names, contact information, and medical record numbers). In this example, we assume the de-identification behavior can be customized as a pseudonymization policy. Anonymizing the quasi-identifiers, like patient age and geographic location, will be processed by the dedicated anonymization service. The diagram below shows a workflow of the two stages of de-identification.                           
<figure>
  <img src="example-multi-stage-deid-fhir.png" alt="two stages of de-identification for FHIR"
>                                                                                              <figcaption><strong>Two stages of de-identification for FHIR data</strong></figcaption>
</figure>

**Process Steps: Stage 1**

1. Enable pseudonymization policy on the EHR system.
As we explained, in this example, we assume the EHR system supports customization of the de-i
dentification behavior to enable a pseudonymization policy. The pseudonymization policy covers all the attributes which are direct identifiers, like Patient.name, Patient.identifier (MRN, SSN), Patient.telecom, Patient.address, and resource IDs.                                  
2. Export pseudonymized FHIR data.
After properly setting the pseudonymization policy, an authorized user initiates a bulk data 
export. The EHR system performs de-identification by following the pseudonymization policy, and then exports the pseudonymized FHIR resources. We assume the EHR exports the pseudonymized FHIR data using the FHIR Bulk Data Access specification (FHIR $export operation) to a secure storage location or FHIR server.                                                            
3. Transfer the pseudonymized data to the anonymization environment.
The pseudonymized FHIR data is transferred via a secure network connection (e.g., HTTPS, SFTP
) or through encrypted portable media to the research data center. Access is controlled through authentication and authorization mechanisms.                                              
**Process Steps: Stage 2**

1. Import the pseudonymized FHIR data.
The research data center imports the pseudonymized FHIR data into the dedicated de-identifica
tion system. The system validates the FHIR resources and prepares them for advanced anonymization processing.                                                                             
2. Select anonymization policy.
An anonymization policy needs to be selected and applied to the pseudonymized FHIR data. For 
some cases, a default anonymization policy could be deployed together with the anonymization service. The anonymization policy describes the behavior of processing quasi-identifiers, such as Patient.birthDate, Patient.address.postalCode, and Patient.gender. The processing behavior cannot be unified to fit the requirements of all data collection cases. For example, patient age usually needs to be transformed into a ranged value from the original birthDate, but the range scope may be different for different cases. Some require 5-year ranges (e.g., 20-24, 25-29), others may require 10-year ranges or age categories (e.g., adult, pediatric). Geographic data may need to be generalized to 3-digit ZIP codes for some studies or to state level for others. Therefore, ideally, the anonymization policy is customized and approved in a case-by-case manner based on the research protocol and IRB requirements.                         
3. Process pseudonymized FHIR data with anonymization policy.
The anonymization service applies the selected policy to transform quasi-identifiers:
   - **Temporal data**: Apply date-shifting to all date/dateTime elements while maintaining r
elative time intervals between related events                                                   - **Geographic data**: Generalize address.postalCode to 3-digit ZIP codes or remove entire
ly                                                                                              - **Demographic data**: Convert birthDate to age ranges, retain gender if low risk
   - **Free-text content**: Apply NLP-based redaction to narrative text, notes, and comments
   - **Clinical codes**: Review for rare or facility-specific codes that could identify the s
ource                                                                                           - **References**: Ensure all resource references use pseudonymized identifiers consistentl
y                                                                                            
4. Perform risk assessment.
The anonymization service performs a quantitative re-identification risk assessment (e.g., k-
anonymity analysis) on the processed dataset to ensure it meets the acceptable risk threshold defined in the project requirements.                                                        
5. Mark de-identification status.
The anonymization service adds appropriate FHIR security labels and provenance information to
 indicate the de-identification status:                                                         - Add Meta.security labels (e.g., "PSEUDED" for pseudonymized, "ANONYED" for anonymized)
   - Use Data Absent Reason extension where data has been removed for privacy
   - Add Provenance resource documenting the de-identification process

6. Export anonymized FHIR data.
After successful anonymization and risk assessment, the service exports the anonymized FHIR d
ata to the research environment. The data can be exported as FHIR Bundles, NDJSON files, or loaded into a research FHIR server for query access.                                          
### FHIR Data Absent Reason Extension

When data elements are removed or masked during de-identification, FHIR provides the Data Abs
ent Reason extension to indicate why the data is not present. This is analogous to DICOM's requirement to set the Patient Identity Removed attribute.                                     
**Data Absent Reason Codes for De-identification:**

| Code | Display | Definition |
|------|---------|------------|
| masked | Masked | The information is not available due to security, privacy or related reas
ons |                                                                                        | unknown | Unknown | The source was asked but does not know the value |
{:.grid}

**Example Usage:**

When Patient.name is removed during de-identification:

```json
{
  "resourceType": "Patient",
  "id": "pseudo-12345",
  "meta": {
    "security": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
        "code": "PSEUDED",
        "display": "Pseudonymized"
      }
    ]
  },
  "_name": [
    {
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
          "valueCode": "masked"
        }
      ]
    }
  ],
  "gender": "female",
  "birthDate": "1985"
}
```

### FHIR Security Labels for De-identification Status

FHIR resources should be labeled with appropriate security tags to indicate their de-identifi
cation status. This helps downstream systems handle the data appropriately.                  
**Recommended Security Labels:**

| Code | System | Display | Use |
|------|--------|---------|-----|
| PSEUDED | http://terminology.hl7.org/CodeSystem/v3-ObservationValue | Pseudonymized | Data 
with direct identifiers replaced by pseudonyms |                                             | ANONYED | http://terminology.hl7.org/CodeSystem/v3-ObservationValue | Anonymized | Data pro
cessed to remove/transform identifiers to acceptable risk level |                            {:.grid}

### Example: Patient Resource De-identification

**Before De-identification (Identified Data):**

```json
{
  "resourceType": "Patient",
  "id": "patient-12345",
  "identifier": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "MR"
          }
        ]
      },
      "system": "http://hospital.example.org/mrn",
      "value": "MRN123456"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "SS"
          }
        ]
      },
      "system": "http://hl7.org/fhir/sid/us-ssn",
      "value": "123-45-6789"
    }
  ],
  "name": [
    {
      "family": "Smith",
      "given": ["John", "Robert"]
    }
  ],
  "telecom": [
    {
      "system": "phone",
      "value": "+1-555-123-4567",
      "use": "home"
    },
    {
      "system": "email",
      "value": "john.smith@example.com"
    }
  ],
  "gender": "male",
  "birthDate": "1985-03-15",
  "address": [
    {
      "line": ["123 Main Street", "Apt 4B"],
      "city": "Springfield",
      "state": "IL",
      "postalCode": "62701",
      "country": "US"
    }
  ]
}
```

**After Stage 1 (Pseudonymized Data):**

```json
{
  "resourceType": "Patient",
  "id": "pseudo-a1b2c3d4",
  "meta": {
    "security": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
        "code": "PSEUDED",
        "display": "Pseudonymized"
      }
    ]
  },
  "identifier": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "MR"
          }
        ]
      },
      "system": "http://research.example.org/study-id",
      "value": "STUDY-PSEUDO-12345"
    }
  ],
  "_name": [
    {
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
          "valueCode": "masked"
        }
      ]
    }
  ],
  "_telecom": [
    {
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
          "valueCode": "masked"
        }
      ]
    }
  ],
  "gender": "male",
  "birthDate": "1985-03-15",
  "address": [
    {
      "state": "IL",
      "postalCode": "62701",
      "country": "US"
    }
  ]
}
```

**After Stage 2 (Anonymized Data):**

```json
{
  "resourceType": "Patient",
  "id": "pseudo-a1b2c3d4",
  "meta": {
    "security": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
        "code": "ANONYED",
        "display": "Anonymized"
      }
    ]
  },
  "identifier": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "MR"
          }
        ]
      },
      "system": "http://research.example.org/study-id",
      "value": "STUDY-PSEUDO-12345"
    }
  ],
  "_name": [
    {
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
          "valueCode": "masked"
        }
      ]
    }
  ],
  "_telecom": [
    {
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
          "valueCode": "masked"
        }
      ]
    }
  ],
  "gender": "male",
  "_birthDate": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode": "masked"
      },
      {
        "url": "http://example.org/fhir/StructureDefinition/age-range",
        "valueString": "35-39"
      }
    ]
  },
  "address": [
    {
      "state": "IL",
      "postalCode": "627",
      "country": "US"
    }
  ]
}
```
