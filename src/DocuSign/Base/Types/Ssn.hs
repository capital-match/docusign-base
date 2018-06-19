module DocuSign.Base.Types.Ssn where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data Ssn = Ssn
  { ssnAnchorCaseSensitive          :: Maybe Text
  , ssnAnchorHorizontalAlignment    :: Maybe Text
  , ssnAnchorIgnoreIfNotPresent     :: Maybe Text
  , ssnAnchorMatchWholeWord         :: Maybe Text
  , ssnAnchorString                 :: Maybe Text
  , ssnAnchorUnits                  :: Maybe Text
  , ssnAnchorXOffset                :: Maybe Text
  , ssnAnchorYOffset                :: Maybe Text
  , ssnBold                         :: Maybe Text
  , ssnConcealValueOnDocument       :: Maybe Text
  , ssnConditionalParentLabel       :: Maybe Text
  , ssnConditionalParentValue       :: Maybe Text
  , ssnCustomTabId                  :: Maybe Text
  , ssnDisableAutoSize              :: Maybe Text
  , ssnDocumentId                   :: Maybe Text
  , ssnErrorDetails                 :: Maybe ErrorDetails
  , ssnFont                         :: Maybe Text
  , ssnFontColor                    :: Maybe Text
  , ssnFontSize                     :: Maybe Text
  , ssnItalic                       :: Maybe Text
  , ssnLocked                       :: Maybe Text
  , ssnMaxLength                    :: Maybe Int
  , ssnMergeField                   :: Maybe MergeField
  , ssnName                         :: Maybe Text
  , ssnOriginalValue                :: Maybe Text
  , ssnPageNumber                   :: Maybe Text
  , ssnRecipientId                  :: Maybe Text
  , ssnRequireAll                   :: Maybe Text
  , ssnRequired                     :: Maybe Text
  , ssnRequireInitialOnSharedChange :: Maybe Text
  , ssnSenderRequired               :: Maybe Text
  , ssnShared                       :: Maybe Text
  , ssnStatus                       :: Maybe Text
  , ssnTabId                        :: Maybe Text
  , ssnTabLabel                     :: Maybe Text
  , ssnTabOrder                     :: Maybe Text
  , ssnTemplateLocked               :: Maybe Text
  , ssnTemplateRequired             :: Maybe Text
  , ssnUnderline                    :: Maybe Text
  , ssnValidationMessage            :: Maybe Text
  , ssnValidationPattern            :: Maybe Text
  , ssnValue                        :: Maybe Text
  , ssnWidth                        :: Maybe Int
  , ssnXPosition                    :: Maybe Text
  , ssnYPosition                    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Ssn where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "ssn")
instance ToJSON Ssn where
  toJSON = genericToJSON (removeFieldLabelPrefix "ssn")

instance Default Ssn
