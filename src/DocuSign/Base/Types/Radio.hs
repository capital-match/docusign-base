module DocuSign.Base.Types.Radio where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data Radio = Radio
  { radioAnchorCaseSensitive       :: Maybe Text
  , radioAnchorHorizontalAlignment :: Maybe Text
  , radioAnchorIgnoreIfNotPresent  :: Maybe Text
  , radioAnchorMatchWholeWord      :: Maybe Text
  , radioAnchorString              :: Maybe Text
  , radioAnchorUnits               :: Maybe Text
  , radioAnchorXOffset             :: Maybe Text
  , radioAnchorYOffset             :: Maybe Text
  , radioErrorDetails              :: Maybe ErrorDetails
  , radioLocked                    :: Maybe Text
  , radioPageNumber                :: Maybe Text
  , radioRequired                  :: Maybe Text
  , radioSelected                  :: Maybe Text
  , radioTabId                     :: Maybe Text
  , radioTabOrder                  :: Maybe Text
  , radioValue                     :: Maybe Text
  , radioXPosition                 :: Maybe Text
  , radioYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Radio where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "radio")
instance ToJSON Radio where
  toJSON = genericToJSON (removeFieldLabelPrefix "radio")

instance Default Radio
