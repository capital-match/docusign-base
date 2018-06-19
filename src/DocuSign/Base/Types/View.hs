module DocuSign.Base.Types.View where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data View = View
  { viewAnchorCaseSensitive       :: Maybe Text
  , viewAnchorHorizontalAlignment :: Maybe Text
  , viewAnchorIgnoreIfNotPresent  :: Maybe Text
  , viewAnchorMatchWholeWord      :: Maybe Text
  , viewAnchorString              :: Maybe Text
  , viewAnchorUnits               :: Maybe Text
  , viewAnchorXOffset             :: Maybe Text
  , viewAnchorYOffset             :: Maybe Text
  , viewBold                      :: Maybe Text
  , viewButtonText                :: Maybe Text
  , viewConditionalParentLabel    :: Maybe Text
  , viewConditionalParentValue    :: Maybe Text
  , viewCustomTabId               :: Maybe Text
  , viewDocumentId                :: Maybe Text
  , viewErrorDetails              :: Maybe ErrorDetails
  , viewFont                      :: Maybe Text
  , viewFontColor                 :: Maybe Text
  , viewFontSize                  :: Maybe Text
  , viewHeight                    :: Maybe Int
  , viewItalic                    :: Maybe Text
  , viewMergeField                :: Maybe MergeField
  , viewPageNumber                :: Maybe Text
  , viewRecipientId               :: Maybe Text
  , viewRequired                  :: Maybe Text
  , viewRequiredRead              :: Maybe Text
  , viewStatus                    :: Maybe Text
  , viewTabId                     :: Maybe Text
  , viewTabLabel                  :: Maybe Text
  , viewTabOrder                  :: Maybe Text
  , viewTemplateLocked            :: Maybe Text
  , viewTemplateRequired          :: Maybe Text
  , viewUnderline                 :: Maybe Text
  , viewWidth                     :: Maybe Int
  , viewXPosition                 :: Maybe Text
  , viewYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON View where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "view")
instance ToJSON View where
  toJSON = genericToJSON (removeFieldLabelPrefix "view")

instance Default View
