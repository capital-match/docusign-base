module DocuSign.Base.Types.DobInformationInput where

import DocuSign.Base.Types.Common

data DobInformationInput = DobInformationInput
  { dobInformationInputDateOfBirth       :: Maybe Text
  , dobInformationInputDisplayLevelCode  :: Maybe Text
  , dobInformationInputReceiveInResponse :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON DobInformationInput where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "dobInformationInput")
instance ToJSON DobInformationInput where
  toJSON = genericToJSON (removeFieldLabelPrefix "dobInformationInput")

instance Default DobInformationInput
