module DocuSign.Base.Types.ServerTemplate where

import DocuSign.Base.Types.Common

data ServerTemplate = ServerTemplate
  { serverTemplateSequence   :: Maybe Text
  , serverTemplateTemplateId :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ServerTemplate where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "serverTemplate")
instance ToJSON ServerTemplate where
  toJSON = genericToJSON (removeFieldLabelPrefix "serverTemplate")

instance Default ServerTemplate
