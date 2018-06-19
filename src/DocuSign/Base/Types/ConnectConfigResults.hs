module DocuSign.Base.Types.ConnectConfigResults where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ConnectConfigurations

data ConnectConfigResults = ConnectConfigResults
  { connectConfigResultsConfigurations :: Maybe [ConnectConfigurations]
  , connectConfigResultsTotalRecords   :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ConnectConfigResults where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "connectConfigResults")
instance ToJSON ConnectConfigResults where
  toJSON = genericToJSON (removeFieldLabelPrefix "connectConfigResults")

instance Default ConnectConfigResults
