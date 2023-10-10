### IJE Mapping

| **Use Case** |  **IJE Field#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 91 | Receipt date -- Year | R_YR | parameter[receiptDate].value |date |See [PartialDatesAndTimes] |
| Mortality | 92 | Receipt date -- Month | R_MO | parameter[receiptDate].value |date |See [PartialDatesAndTimes] |
| Mortality | 93 | Receipt date -- Day | R_DY | parameter[receiptDate].value |date |See [PartialDatesAndTimes] |
| Mortality | 101 | Intentional Reject  | INT_REJ | parameter[intentionalReject].value |codeable |[IntentionalRejectVS] |
| Mortality | 102 | Acme System Reject Codes | SYS_REJ | parameter[acmeSystemReject].value  |codeable |[ACMESystemRejectVS] |
| Mortality | 107 | Transax conversion flag: Computer Generated | TRX_FLG | parameter[transaxConversion].value  |codeable |[TransaxConversionVS] |
| Mortality | NA | coder status  | CS (TRX Field, no IJE Mapping) | parameter[coderStatus].value |integer |- |
| Mortality | NA | shipment number  | SHIP (TRX Field, no IJE Mapping) | parameter[shipmentNumber].value |string |- |
{: .grid }
