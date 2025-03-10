# Security and Privacy Considerations

Every de-identification project will be the result of a specific
security analysis. De-identification is motivated by mitigation of some
security or privacy risk. The project may have residual risks, such as
third party escrow considerations, that require additions to the
original security analysis.

IHE provides guidelines for preparing security and privacy risk
assessments in <http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Whitepaper_Security_Cookbook_2008-11-10.pdf>

## ATNA and Other Logging Considerations

De-identification, pseudonymization, and re-identification are events that should be logged as part of the ATNA surveillance log. The specific audit messages that will be appropriate depend upon the usage, and will be profiled elsewhere.

The ATNA message schema identifies codes in the ParticipantObjectDataLifeCycle that are appropriate to various kinds of de-identification activity:

> “7” - De-identification
>
> “8” - Aggregation, summarization, derivation
>
> “11” - Disclosure
>
> “12” - Receipt of disclosure

