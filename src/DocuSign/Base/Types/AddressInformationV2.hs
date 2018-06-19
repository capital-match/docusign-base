module DocuSign.Base.Types.AddressInformationV2 where

import DocuSign.Base.Types.Common

data AddressInformationV2 = AddressInformationV2
  { addressInformationV2Address1        :: Maybe Text
  , addressInformationV2Address2        :: Maybe Text
  , addressInformationV2City            :: Maybe Text
  , addressInformationV2Country         :: Maybe Text
  , addressInformationV2Fax             :: Maybe Text
  , addressInformationV2Phone           :: Maybe Text
  , addressInformationV2PostalCode      :: Maybe Text
  , addressInformationV2StateOrProvince :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AddressInformationV2 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "addressInformationV2")
instance ToJSON AddressInformationV2 where
  toJSON = genericToJSON (removeFieldLabelPrefix "addressInformationV2")

instance Default AddressInformationV2
