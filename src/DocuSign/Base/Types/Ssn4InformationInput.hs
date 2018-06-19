module DocuSign.Base.Types.Ssn4InformationInput where

import DocuSign.Base.Types.Common

data Ssn4InformationInput = Ssn4InformationInput
  { ssn4InformationInputDisplayLevelCode  :: Maybe Text
  , ssn4InformationInputReceiveInResponse :: Maybe Text
  , ssn4InformationInputSsn4              :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Ssn4InformationInput where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "ssn4InformationInput")
instance ToJSON Ssn4InformationInput where
  toJSON = genericToJSON (removeFieldLabelPrefix "ssn4InformationInput")

instance Default Ssn4InformationInput
