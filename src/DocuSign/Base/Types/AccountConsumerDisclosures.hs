module DocuSign.Base.Types.AccountConsumerDisclosures where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.SettingsMetadata

data AccountConsumerDisclosures = AccountConsumerDisclosures
  { accountConsumerDisclosuresAccountEsignId                             :: Maybe Text
  , accountConsumerDisclosuresAllowCDWithdraw                            :: Maybe Text
  , accountConsumerDisclosuresAllowCDWithdrawMetadata                    :: Maybe SettingsMetadata
  , accountConsumerDisclosuresChangeEmail                                :: Maybe Text
  , accountConsumerDisclosuresChangeEmailOther                           :: Maybe Text
  , accountConsumerDisclosuresCompanyName                                :: Maybe Text
  , accountConsumerDisclosuresCompanyPhone                               :: Maybe Text
  , accountConsumerDisclosuresCopyCostPerPage                            :: Maybe Text
  , accountConsumerDisclosuresCopyFeeCollectionMethod                    :: Maybe Text
  , accountConsumerDisclosuresCopyRequestEmail                           :: Maybe Text
  , accountConsumerDisclosuresCustom                                     :: Maybe Text
  , accountConsumerDisclosuresEnableEsign                                :: Maybe Text
  , accountConsumerDisclosuresEsignAgreement                             :: Maybe Text
  , accountConsumerDisclosuresEsignText                                  :: Maybe Text
  , accountConsumerDisclosuresLanguageCode                               :: Maybe Text
  , accountConsumerDisclosuresMustAgreeToEsign                           :: Maybe Text
  , accountConsumerDisclosuresPdfId                                      :: Maybe Text
  , accountConsumerDisclosuresUseBrand                                   :: Maybe Text
  , accountConsumerDisclosuresUseConsumerDisclosureWithinAccount         :: Maybe Text
  , accountConsumerDisclosuresUseConsumerDisclosureWithinAccountMetadata :: Maybe SettingsMetadata
  , accountConsumerDisclosuresWithdrawAddressLine1                       :: Maybe Text
  , accountConsumerDisclosuresWithdrawAddressLine2                       :: Maybe Text
  , accountConsumerDisclosuresWithdrawByEmail                            :: Maybe Text
  , accountConsumerDisclosuresWithdrawByMail                             :: Maybe Text
  , accountConsumerDisclosuresWithdrawByPhone                            :: Maybe Text
  , accountConsumerDisclosuresWithdrawCity                               :: Maybe Text
  , accountConsumerDisclosuresWithdrawConsequences                       :: Maybe Text
  , accountConsumerDisclosuresWithdrawEmail                              :: Maybe Text
  , accountConsumerDisclosuresWithdrawOther                              :: Maybe Text
  , accountConsumerDisclosuresWithdrawPhone                              :: Maybe Text
  , accountConsumerDisclosuresWithdrawPostalCode                         :: Maybe Text
  , accountConsumerDisclosuresWithdrawState                              :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountConsumerDisclosures where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountConsumerDisclosures")
instance ToJSON AccountConsumerDisclosures where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountConsumerDisclosures")

instance Default AccountConsumerDisclosures
