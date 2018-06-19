module DocuSign.Base.Types.Zip where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data Zip = Zip
  { zipAnchorCaseSensitive          :: Maybe Text
  , zipAnchorHorizontalAlignment    :: Maybe Text
  , zipAnchorIgnoreIfNotPresent     :: Maybe Text
  , zipAnchorMatchWholeWord         :: Maybe Text
  , zipAnchorString                 :: Maybe Text
  , zipAnchorUnits                  :: Maybe Text
  , zipAnchorXOffset                :: Maybe Text
  , zipAnchorYOffset                :: Maybe Text
  , zipBold                         :: Maybe Text
  , zipConcealValueOnDocument       :: Maybe Text
  , zipConditionalParentLabel       :: Maybe Text
  , zipConditionalParentValue       :: Maybe Text
  , zipCustomTabId                  :: Maybe Text
  , zipDisableAutoSize              :: Maybe Text
  , zipDocumentId                   :: Maybe Text
  , zipErrorDetails                 :: Maybe ErrorDetails
  , zipFont                         :: Maybe Text
  , zipFontColor                    :: Maybe Text
  , zipFontSize                     :: Maybe Text
  , zipItalic                       :: Maybe Text
  , zipLocked                       :: Maybe Text
  , zipMaxLength                    :: Maybe Int
  , zipMergeField                   :: Maybe MergeField
  , zipName                         :: Maybe Text
  , zipOriginalValue                :: Maybe Text
  , zipPageNumber                   :: Maybe Text
  , zipRecipientId                  :: Maybe Text
  , zipRequireAll                   :: Maybe Text
  , zipRequired                     :: Maybe Text
  , zipRequireInitialOnSharedChange :: Maybe Text
  , zipSenderRequired               :: Maybe Text
  , zipShared                       :: Maybe Text
  , zipStatus                       :: Maybe Text
  , zipTabId                        :: Maybe Text
  , zipTabLabel                     :: Maybe Text
  , zipTabOrder                     :: Maybe Text
  , zipTemplateLocked               :: Maybe Text
  , zipTemplateRequired             :: Maybe Text
  , zipUnderline                    :: Maybe Text
  , zipUseDash4                     :: Maybe Text
  , zipValidationMessage            :: Maybe Text
  , zipValidationPattern            :: Maybe Text
  , zipValue                        :: Maybe Text
  , zipWidth                        :: Maybe Int
  , zipXPosition                    :: Maybe Text
  , zipYPosition                    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Zip where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "zip")
instance ToJSON Zip where
  toJSON = genericToJSON (removeFieldLabelPrefix "zip")

instance Default Zip
