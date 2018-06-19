module DocuSign.Base.Types.Title where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data Title = Title
  { titleAnchorCaseSensitive       :: Maybe Text
  , titleAnchorHorizontalAlignment :: Maybe Text
  , titleAnchorIgnoreIfNotPresent  :: Maybe Text
  , titleAnchorMatchWholeWord      :: Maybe Text
  , titleAnchorString              :: Maybe Text
  , titleAnchorUnits               :: Maybe Text
  , titleAnchorXOffset             :: Maybe Text
  , titleAnchorYOffset             :: Maybe Text
  , titleBold                      :: Maybe Text
  , titleConcealValueOnDocument    :: Maybe Text
  , titleConditionalParentLabel    :: Maybe Text
  , titleConditionalParentValue    :: Maybe Text
  , titleCustomTabId               :: Maybe Text
  , titleDisableAutoSize           :: Maybe Text
  , titleDocumentId                :: Maybe Text
  , titleErrorDetails              :: Maybe ErrorDetails
  , titleFont                      :: Maybe Text
  , titleFontColor                 :: Maybe Text
  , titleFontSize                  :: Maybe Text
  , titleItalic                    :: Maybe Text
  , titleLocked                    :: Maybe Text
  , titleMaxLength                 :: Maybe Int
  , titleMergeField                :: Maybe MergeField
  , titleName                      :: Maybe Text
  , titleOriginalValue             :: Maybe Text
  , titlePageNumber                :: Maybe Text
  , titleRecipientId               :: Maybe Text
  , titleRequired                  :: Maybe Text
  , titleStatus                    :: Maybe Text
  , titleTabId                     :: Maybe Text
  , titleTabLabel                  :: Maybe Text
  , titleTabOrder                  :: Maybe Text
  , titleTemplateLocked            :: Maybe Text
  , titleTemplateRequired          :: Maybe Text
  , titleUnderline                 :: Maybe Text
  , titleValue                     :: Maybe Text
  , titleWidth                     :: Maybe Int
  , titleXPosition                 :: Maybe Text
  , titleYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Title where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "title")
instance ToJSON Title where
  toJSON = genericToJSON (removeFieldLabelPrefix "title")

instance Default Title
