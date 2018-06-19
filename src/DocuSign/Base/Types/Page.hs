module DocuSign.Base.Types.Page where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data Page = Page
  { pageDpi          :: Maybe Text
  , pageErrorDetails :: Maybe ErrorDetails
  , pageHeight       :: Maybe Text
  , pageImageBytes   :: Maybe Text
  , pageMimeType     :: Maybe Text
  , pagePageId       :: Maybe Text
  , pageSequence     :: Maybe Text
  , pageWidth        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Page where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "page")
instance ToJSON Page where
  toJSON = genericToJSON (removeFieldLabelPrefix "page")

instance Default Page
