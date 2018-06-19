module DocuSign.Base.Types.ConsoleViewRequest where

import DocuSign.Base.Types.Common

data ConsoleViewRequest = ConsoleViewRequest
  { consoleViewRequestEnvelopeId :: Maybe Text
  , consoleViewRequestReturnUrl  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ConsoleViewRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "consoleViewRequest")
instance ToJSON ConsoleViewRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "consoleViewRequest")

instance Default ConsoleViewRequest
