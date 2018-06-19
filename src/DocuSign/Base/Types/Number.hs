module DocuSign.Base.Types.Number where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data Number = Number
  { numberAnchorCaseSensitive          :: Maybe Text
  , numberAnchorHorizontalAlignment    :: Maybe Text
  , numberAnchorIgnoreIfNotPresent     :: Maybe Text
  , numberAnchorMatchWholeWord         :: Maybe Text
  , numberAnchorString                 :: Maybe Text
  , numberAnchorUnits                  :: Maybe Text
  , numberAnchorXOffset                :: Maybe Text
  , numberAnchorYOffset                :: Maybe Text
  , numberBold                         :: Maybe Text
  , numberConcealValueOnDocument       :: Maybe Text
  , numberConditionalParentLabel       :: Maybe Text
  , numberConditionalParentValue       :: Maybe Text
  , numberCustomTabId                  :: Maybe Text
  , numberDisableAutoSize              :: Maybe Text
  , numberDocumentId                   :: Maybe Text
  , numberErrorDetails                 :: Maybe ErrorDetails
  , numberFont                         :: Maybe Text
  , numberFontColor                    :: Maybe Text
  , numberFontSize                     :: Maybe Text
  , numberFormula                      :: Maybe Text
  , numberIsPaymentAmount              :: Maybe Text
  , numberItalic                       :: Maybe Text
  , numberLocked                       :: Maybe Text
  , numberMaxLength                    :: Maybe Int
  , numberMergeField                   :: Maybe MergeField
  , numberName                         :: Maybe Text
  , numberOriginalValue                :: Maybe Text
  , numberPageNumber                   :: Maybe Text
  , numberRecipientId                  :: Maybe Text
  , numberRequireAll                   :: Maybe Text
  , numberRequired                     :: Maybe Text
  , numberRequireInitialOnSharedChange :: Maybe Text
  , numberSenderRequired               :: Maybe Text
  , numberShared                       :: Maybe Text
  , numberStatus                       :: Maybe Text
  , numberTabId                        :: Maybe Text
  , numberTabLabel                     :: Maybe Text
  , numberTabOrder                     :: Maybe Text
  , numberTemplateLocked               :: Maybe Text
  , numberTemplateRequired             :: Maybe Text
  , numberUnderline                    :: Maybe Text
  , numberValidationMessage            :: Maybe Text
  , numberValidationPattern            :: Maybe Text
  , numberValue                        :: Maybe Text
  , numberWidth                        :: Maybe Int
  , numberXPosition                    :: Maybe Text
  , numberYPosition                    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Number where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "number")
instance ToJSON Number where
  toJSON = genericToJSON (removeFieldLabelPrefix "number")

instance Default Number
