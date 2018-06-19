module DocuSign.Base.Types.EnvelopeConsumerDisclosures where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.SettingsMetadata

data EnvelopeConsumerDisclosures = EnvelopeConsumerDisclosures
  { envelopeConsumerDisclosuresAccountEsignId                             :: Maybe Text
  , envelopeConsumerDisclosuresAllowCDWithdraw                            :: Maybe Text
  , envelopeConsumerDisclosuresAllowCDWithdrawMetadata                    :: Maybe SettingsMetadata
  , envelopeConsumerDisclosuresChangeEmail                                :: Maybe Text
  , envelopeConsumerDisclosuresChangeEmailOther                           :: Maybe Text
  , envelopeConsumerDisclosuresCompanyName                                :: Maybe Text
  , envelopeConsumerDisclosuresCompanyPhone                               :: Maybe Text
  , envelopeConsumerDisclosuresCopyCostPerPage                            :: Maybe Text
  , envelopeConsumerDisclosuresCopyFeeCollectionMethod                    :: Maybe Text
  , envelopeConsumerDisclosuresCopyRequestEmail                           :: Maybe Text
  , envelopeConsumerDisclosuresCustom                                     :: Maybe Text
  , envelopeConsumerDisclosuresEnableEsign                                :: Maybe Text
  , envelopeConsumerDisclosuresEsignAgreement                             :: Maybe Text
  , envelopeConsumerDisclosuresEsignText                                  :: Maybe Text
  , envelopeConsumerDisclosuresLanguageCode                               :: Maybe Text
  , envelopeConsumerDisclosuresMustAgreeToEsign                           :: Maybe Text
  , envelopeConsumerDisclosuresPdfId                                      :: Maybe Text
  , envelopeConsumerDisclosuresUseBrand                                   :: Maybe Text
  , envelopeConsumerDisclosuresUseConsumerDisclosureWithinAccount         :: Maybe Text
  , envelopeConsumerDisclosuresUseConsumerDisclosureWithinAccountMetadata :: Maybe SettingsMetadata
  , envelopeConsumerDisclosuresWithdrawAddressLine1                       :: Maybe Text
  , envelopeConsumerDisclosuresWithdrawAddressLine2                       :: Maybe Text
  , envelopeConsumerDisclosuresWithdrawByEmail                            :: Maybe Text
  , envelopeConsumerDisclosuresWithdrawByMail                             :: Maybe Text
  , envelopeConsumerDisclosuresWithdrawByPhone                            :: Maybe Text
  , envelopeConsumerDisclosuresWithdrawCity                               :: Maybe Text
  , envelopeConsumerDisclosuresWithdrawConsequences                       :: Maybe Text
  , envelopeConsumerDisclosuresWithdrawEmail                              :: Maybe Text
  , envelopeConsumerDisclosuresWithdrawOther                              :: Maybe Text
  , envelopeConsumerDisclosuresWithdrawPhone                              :: Maybe Text
  , envelopeConsumerDisclosuresWithdrawPostalCode                         :: Maybe Text
  , envelopeConsumerDisclosuresWithdrawState                              :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeConsumerDisclosures where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeConsumerDisclosures")
instance ToJSON EnvelopeConsumerDisclosures where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeConsumerDisclosures")

instance Default EnvelopeConsumerDisclosures
