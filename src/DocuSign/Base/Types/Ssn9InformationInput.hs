module DocuSign.Base.Types.Ssn9InformationInput where

import DocuSign.Base.Types.Common

data Ssn9InformationInput = Ssn9InformationInput
  { ssn9InformationInputDisplayLevelCode :: Maybe Text
  , ssn9InformationInputSsn9             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Ssn9InformationInput where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "ssn9InformationInput")
instance ToJSON Ssn9InformationInput where
  toJSON = genericToJSON (removeFieldLabelPrefix "ssn9InformationInput")

instance Default Ssn9InformationInput
