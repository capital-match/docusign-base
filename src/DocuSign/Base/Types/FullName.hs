module DocuSign.Base.Types.FullName where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data FullName = FullName
  { fullNameAnchorCaseSensitive       :: Maybe Text
  , fullNameAnchorHorizontalAlignment :: Maybe Text
  , fullNameAnchorIgnoreIfNotPresent  :: Maybe Text
  , fullNameAnchorMatchWholeWord      :: Maybe Text
  , fullNameAnchorString              :: Maybe Text
  , fullNameAnchorUnits               :: Maybe Text
  , fullNameAnchorXOffset             :: Maybe Text
  , fullNameAnchorYOffset             :: Maybe Text
  , fullNameBold                      :: Maybe Text
  , fullNameConditionalParentLabel    :: Maybe Text
  , fullNameConditionalParentValue    :: Maybe Text
  , fullNameCustomTabId               :: Maybe Text
  , fullNameDocumentId                :: Maybe Text
  , fullNameErrorDetails              :: Maybe ErrorDetails
  , fullNameFont                      :: Maybe Text
  , fullNameFontColor                 :: Maybe Text
  , fullNameFontSize                  :: Maybe Text
  , fullNameItalic                    :: Maybe Text
  , fullNameMergeField                :: Maybe MergeField
  , fullNameName                      :: Maybe Text
  , fullNamePageNumber                :: Maybe Text
  , fullNameRecipientId               :: Maybe Text
  , fullNameStatus                    :: Maybe Text
  , fullNameTabId                     :: Maybe Text
  , fullNameTabLabel                  :: Maybe Text
  , fullNameTabOrder                  :: Maybe Text
  , fullNameTemplateLocked            :: Maybe Text
  , fullNameTemplateRequired          :: Maybe Text
  , fullNameUnderline                 :: Maybe Text
  , fullNameValue                     :: Maybe Text
  , fullNameXPosition                 :: Maybe Text
  , fullNameYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON FullName where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "fullName")
instance ToJSON FullName where
  toJSON = genericToJSON (removeFieldLabelPrefix "fullName")

instance Default FullName
