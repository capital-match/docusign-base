module DocuSign.Base.Types.AddressInformation where

import DocuSign.Base.Types.Common

data AddressInformation = AddressInformation
  { addressInformationCity    :: Maybe Text
  , addressInformationCountry :: Maybe Text
  , addressInformationFax     :: Maybe Text
  , addressInformationPhone   :: Maybe Text
  , addressInformationState   :: Maybe Text
  , addressInformationStreet1 :: Maybe Text
  , addressInformationStreet2 :: Maybe Text
  , addressInformationZip     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AddressInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "addressInformation")
instance ToJSON AddressInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "addressInformation")

instance Default AddressInformation
