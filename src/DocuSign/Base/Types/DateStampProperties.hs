module DocuSign.Base.Types.DateStampProperties where

import DocuSign.Base.Types.Common

data DateStampProperties = DateStampProperties
  { dateStampPropertiesDateAreaHeight :: Maybe Text
  , dateStampPropertiesDateAreaWidth  :: Maybe Text
  , dateStampPropertiesDateAreaX      :: Maybe Text
  , dateStampPropertiesDateAreaY      :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON DateStampProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "dateStampProperties")
instance ToJSON DateStampProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix "dateStampProperties")

instance Default DateStampProperties
