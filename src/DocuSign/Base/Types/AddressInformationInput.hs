module DocuSign.Base.Types.AddressInformationInput where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AddressInformation

data AddressInformationInput = AddressInformationInput
  { addressInformationInputAddressInformation :: Maybe AddressInformation
  , addressInformationInputDisplayLevelCode   :: Maybe Text
  , addressInformationInputReceiveInResponse  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AddressInformationInput where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "addressInformationInput")
instance ToJSON AddressInformationInput where
  toJSON = genericToJSON (removeFieldLabelPrefix "addressInformationInput")

instance Default AddressInformationInput
