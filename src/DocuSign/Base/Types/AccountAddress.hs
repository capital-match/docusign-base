module DocuSign.Base.Types.AccountAddress where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Country

data AccountAddress = AccountAddress
  { accountAddressAddress1           :: Maybe Text
  , accountAddressAddress2           :: Maybe Text
  , accountAddressCity               :: Maybe Text
  , accountAddressCountry            :: Maybe Text
  , accountAddressEmail              :: Maybe Text
  , accountAddressFax                :: Maybe Text
  , accountAddressFirstName          :: Maybe Text
  , accountAddressLastName           :: Maybe Text
  , accountAddressPhone              :: Maybe Text
  , accountAddressPostalCode         :: Maybe Text
  , accountAddressState              :: Maybe Text
  , accountAddressSupportedCountries :: Maybe [Country]
  } deriving (Show, Eq, Generic)

instance FromJSON AccountAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountAddress")
instance ToJSON AccountAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountAddress")

instance Default AccountAddress
