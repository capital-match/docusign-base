module DocuSign.Base.Types.Resources where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue

data Resources = Resources
  { resourcesResources :: Maybe [NameValue]
  } deriving (Show, Eq, Generic)

instance FromJSON Resources where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "resources")
instance ToJSON Resources where
  toJSON = genericToJSON (removeFieldLabelPrefix "resources")

instance Default Resources
