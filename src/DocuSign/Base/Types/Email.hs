module DocuSign.Base.Types.Email where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data Email = Email
  { emailAnchorCaseSensitive          :: Maybe Text
  , emailAnchorHorizontalAlignment    :: Maybe Text
  , emailAnchorIgnoreIfNotPresent     :: Maybe Text
  , emailAnchorMatchWholeWord         :: Maybe Text
  , emailAnchorString                 :: Maybe Text
  , emailAnchorUnits                  :: Maybe Text
  , emailAnchorXOffset                :: Maybe Text
  , emailAnchorYOffset                :: Maybe Text
  , emailBold                         :: Maybe Text
  , emailConcealValueOnDocument       :: Maybe Text
  , emailConditionalParentLabel       :: Maybe Text
  , emailConditionalParentValue       :: Maybe Text
  , emailCustomTabId                  :: Maybe Text
  , emailDisableAutoSize              :: Maybe Text
  , emailDocumentId                   :: Maybe Text
  , emailErrorDetails                 :: Maybe ErrorDetails
  , emailFont                         :: Maybe Text
  , emailFontColor                    :: Maybe Text
  , emailFontSize                     :: Maybe Text
  , emailItalic                       :: Maybe Text
  , emailLocked                       :: Maybe Text
  , emailMaxLength                    :: Maybe Int
  , emailMergeField                   :: Maybe MergeField
  , emailName                         :: Maybe Text
  , emailOriginalValue                :: Maybe Text
  , emailPageNumber                   :: Maybe Text
  , emailRecipientId                  :: Maybe Text
  , emailRequireAll                   :: Maybe Text
  , emailRequired                     :: Maybe Text
  , emailRequireInitialOnSharedChange :: Maybe Text
  , emailSenderRequired               :: Maybe Text
  , emailShared                       :: Maybe Text
  , emailStatus                       :: Maybe Text
  , emailTabId                        :: Maybe Text
  , emailTabLabel                     :: Maybe Text
  , emailTabOrder                     :: Maybe Text
  , emailTemplateLocked               :: Maybe Text
  , emailTemplateRequired             :: Maybe Text
  , emailUnderline                    :: Maybe Text
  , emailValidationMessage            :: Maybe Text
  , emailValidationPattern            :: Maybe Text
  , emailValue                        :: Maybe Text
  , emailWidth                        :: Maybe Int
  , emailXPosition                    :: Maybe Text
  , emailYPosition                    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Email where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "email")
instance ToJSON Email where
  toJSON = genericToJSON (removeFieldLabelPrefix "email")

instance Default Email
