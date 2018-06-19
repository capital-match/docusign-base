module DocuSign.Base.Types.PropertyMetadata where

import DocuSign.Base.Types.Common

data PropertyMetadata = PropertyMetadata
  { propertyMetadataOptions :: Maybe [Text]
  , propertyMetadataRights  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PropertyMetadata where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "propertyMetadata")
instance ToJSON PropertyMetadata where
  toJSON = genericToJSON (removeFieldLabelPrefix "propertyMetadata")

instance Default PropertyMetadata
