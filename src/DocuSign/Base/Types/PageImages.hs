module DocuSign.Base.Types.PageImages where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Page

data PageImages = PageImages
  { pageImagesEndPosition   :: Maybe Text
  , pageImagesNextUri       :: Maybe Text
  , pageImagesPages         :: Maybe [Page]
  , pageImagesPreviousUri   :: Maybe Text
  , pageImagesResultSetSize :: Maybe Text
  , pageImagesStartPosition :: Maybe Text
  , pageImagesTotalSetSize  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PageImages where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "pageImages")
instance ToJSON PageImages where
  toJSON = genericToJSON (removeFieldLabelPrefix "pageImages")

instance Default PageImages
