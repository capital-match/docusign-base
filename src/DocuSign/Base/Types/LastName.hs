module DocuSign.Base.Types.LastName where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data LastName = LastName
  { lastNameAnchorCaseSensitive       :: Maybe Text
  , lastNameAnchorHorizontalAlignment :: Maybe Text
  , lastNameAnchorIgnoreIfNotPresent  :: Maybe Text
  , lastNameAnchorMatchWholeWord      :: Maybe Text
  , lastNameAnchorString              :: Maybe Text
  , lastNameAnchorUnits               :: Maybe Text
  , lastNameAnchorXOffset             :: Maybe Text
  , lastNameAnchorYOffset             :: Maybe Text
  , lastNameBold                      :: Maybe Text
  , lastNameConditionalParentLabel    :: Maybe Text
  , lastNameConditionalParentValue    :: Maybe Text
  , lastNameCustomTabId               :: Maybe Text
  , lastNameDocumentId                :: Maybe Text
  , lastNameErrorDetails              :: Maybe ErrorDetails
  , lastNameFont                      :: Maybe Text
  , lastNameFontColor                 :: Maybe Text
  , lastNameFontSize                  :: Maybe Text
  , lastNameItalic                    :: Maybe Text
  , lastNameMergeField                :: Maybe MergeField
  , lastNameName                      :: Maybe Text
  , lastNamePageNumber                :: Maybe Text
  , lastNameRecipientId               :: Maybe Text
  , lastNameStatus                    :: Maybe Text
  , lastNameTabId                     :: Maybe Text
  , lastNameTabLabel                  :: Maybe Text
  , lastNameTabOrder                  :: Maybe Text
  , lastNameTemplateLocked            :: Maybe Text
  , lastNameTemplateRequired          :: Maybe Text
  , lastNameUnderline                 :: Maybe Text
  , lastNameValue                     :: Maybe Text
  , lastNameXPosition                 :: Maybe Text
  , lastNameYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON LastName where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "lastName")
instance ToJSON LastName where
  toJSON = genericToJSON (removeFieldLabelPrefix "lastName")

instance Default LastName
