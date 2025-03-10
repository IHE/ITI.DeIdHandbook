## HL7 2.x Examples

### HL7 2.x

The following is an example of what a segment of an HL7 2.x message might look like after de-identification. In this example some of the fields have been removed, and some of the fields have had dummy values substituted.

**A08 Before:**

```hl7
MSH\|^\~\\&\|PROACCESS5\|DHIN\|BIOSENSE\|CDC01\|20080808290000\|\|ADT^A08\|1437549872\|P\|2.5\|\|

PID\|123\|12345\|00000123456\|123A\|Public^""^Corbin^""^""^""\|\|19900123\|M\|\|I\|Somestreet^1^Nieuwegein^^84063^""\|US\|+1-801-555-1212\|+1-801-555-1212\|Eng\|S\|Catholic\|MRN1234\|123-45-6789\|UTDL12345\|ID1234\|EthnicGrp\|Dayton,
OH\|""

ZPI\|1\|\|\|DoctorDr.^^""^""^""\|\|\|\|\|\|\|""

PV1\|1\|O\|\|

IN1\|\|Plan123\|PART\|InsureCo\|Address1\|Admin\|+1-801-555-1212\|Group12\|GroupNm\|EmpID\|CoNm\|20080101\|20081231\|Auth\|TypeP\|Spencer^Royce\|Son\|19990101\|Addr\|AOB\|COB\|\|\|\|\|\|\|\|\|\|\|\|\|\|\|""

```

**A08 After:**

“U” chars indicate empty content

```hl7

MSH\|^\~\\&\|PROACCESS5\|DHIN\|BIOSENSE\|CDC01\|20080808290000\|\|ADT^A08\|111122223333\|P\|2.5\|\|

PID\|SID\|PID\|PIDLIST\|ALTPID\|FamilyName^""^GivenName^""^""^""\|\|19900113\|U\|Alias\|U\|""^""^""^^840??^""\|US\|HomePh\|BusPh\|U\|U\|U\|PSEUDO1234\|U\|U\|U\|U\|U\|""

ZPI\|1\|\|\|DoctorDr.^^""^""^""\|\|\|\|\|\|\|""

PV1\|1\|O\|\|

IN1\|\|Plan123\|PART\|InsureCo\|Address1\|Admin\|+1-801-555-1212\|Group12\|GroupNm\|EmpID\|CoNm\|20080101\|20081231\|Auth\|TypeP\|Spencer^Royce\|Son\|19990101\|Addr\|AOB\|COB\|\|\|\|\|\|\|\|\|\|\|\|\|\|\|""

```

### Biosurveillance Specification (CDA)

An example of a de-identification plan for a bio-surveillance is available at ftp:// . This is the table that identifies what algorithm will be applied to all the identified potential input fields. It assumes that the original documents and resulting documents will both be CDA documents.  

??? TODO, where is this? 

