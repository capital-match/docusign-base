module DocuSign.Base.Types.FirstName where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data FirstName = FirstName
  { firstNameAnchorCaseSensitive       :: Maybe Text
  , firstNameAnchorHorizontalAlignment :: Maybe Text
  , firstNameAnchorIgnoreIfNotPresent  :: Maybe Text
  , firstNameAnchorMatchWholeWord      :: Maybe Text
  , firstNameAnchorString              :: Maybe Text
  , firstNameAnchorUnits               :: Maybe Text
  , firstNameAnchorXOffset             :: Maybe Text
  , firstNameAnchorYOffset             :: Maybe Text
  , firstNameBold                      :: Maybe Text
  , firstNameConditionalParentLabel    :: Maybe Text
  , firstNameConditionalParentValue    :: Maybe Text
  , firstNameCustomTabId               :: Maybe Text
  , firstNameDocumentId                :: Maybe Text
  , firstNameErrorDetails              :: Maybe ErrorDetails
  , firstNameFont                      :: Maybe Text
  , firstNameFontColor                 :: Maybe Text
  , firstNameFontSize                  :: Maybe Text
  , firstNameItalic                    :: Maybe Text
  , firstNameMergeField                :: Maybe MergeField
  , firstNameName                      :: Maybe Text
  , firstNamePageNumber                :: Maybe Text
  , firstNameRecipientId               :: Maybe Text
  , firstNameStatus                    :: Maybe Text
  , firstNameTabId                     :: Maybe Text
  , firstNameTabLabel                  :: Maybe Text
  , firstNameTabOrder                  :: Maybe Text
  , firstNameTemplateLocked            :: Maybe Text
  , firstNameTemplateRequired          :: Maybe Text
  , firstNameUnderline                 :: Maybe Text
  , firstNameValue                     :: Maybe Text
  , firstNameXPosition                 :: Maybe Text
  , firstNameYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON FirstName where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "firstName")
instance ToJSON FirstName where
  toJSON = genericToJSON (removeFieldLabelPrefix "firstName")

instance Default FirstName
