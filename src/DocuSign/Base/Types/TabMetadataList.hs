module DocuSign.Base.Types.TabMetadataList where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.CustomTabs

data TabMetadataList = TabMetadataList
  { tabMetadataListTabs :: Maybe [CustomTabs]
  } deriving (Show, Eq, Generic)

instance FromJSON TabMetadataList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "tabMetadataList")
instance ToJSON TabMetadataList where
  toJSON = genericToJSON (removeFieldLabelPrefix "tabMetadataList")

instance Default TabMetadataList
