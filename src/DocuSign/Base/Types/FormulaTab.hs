module DocuSign.Base.Types.FormulaTab where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField
import DocuSign.Base.Types.PaymentDetails

data FormulaTab = FormulaTab
  { formulaTabAnchorCaseSensitive          :: Maybe Text
  , formulaTabAnchorHorizontalAlignment    :: Maybe Text
  , formulaTabAnchorIgnoreIfNotPresent     :: Maybe Text
  , formulaTabAnchorMatchWholeWord         :: Maybe Text
  , formulaTabAnchorString                 :: Maybe Text
  , formulaTabAnchorUnits                  :: Maybe Text
  , formulaTabAnchorXOffset                :: Maybe Text
  , formulaTabAnchorYOffset                :: Maybe Text
  , formulaTabBold                         :: Maybe Text
  , formulaTabConcealValueOnDocument       :: Maybe Text
  , formulaTabConditionalParentLabel       :: Maybe Text
  , formulaTabConditionalParentValue       :: Maybe Text
  , formulaTabCustomTabId                  :: Maybe Text
  , formulaTabDisableAutoSize              :: Maybe Text
  , formulaTabDocumentId                   :: Maybe Text
  , formulaTabErrorDetails                 :: Maybe ErrorDetails
  , formulaTabFont                         :: Maybe Text
  , formulaTabFontColor                    :: Maybe Text
  , formulaTabFontSize                     :: Maybe Text
  , formulaTabFormula                      :: Maybe Text
  , formulaTabHidden                       :: Maybe Text
  , formulaTabIsPaymentAmount              :: Maybe Text
  , formulaTabItalic                       :: Maybe Text
  , formulaTabLocked                       :: Maybe Text
  , formulaTabMaxLength                    :: Maybe Int
  , formulaTabMergeField                   :: Maybe MergeField
  , formulaTabName                         :: Maybe Text
  , formulaTabOriginalValue                :: Maybe Text
  , formulaTabPageNumber                   :: Maybe Text
  , formulaTabPaymentDetails               :: Maybe PaymentDetails
  , formulaTabRecipientId                  :: Maybe Text
  , formulaTabRequireAll                   :: Maybe Text
  , formulaTabRequired                     :: Maybe Text
  , formulaTabRequireInitialOnSharedChange :: Maybe Text
  , formulaTabRoundDecimalPlaces           :: Maybe Text
  , formulaTabSenderRequired               :: Maybe Text
  , formulaTabShared                       :: Maybe Text
  , formulaTabStatus                       :: Maybe Text
  , formulaTabTabId                        :: Maybe Text
  , formulaTabTabLabel                     :: Maybe Text
  , formulaTabTabOrder                     :: Maybe Text
  , formulaTabTemplateLocked               :: Maybe Text
  , formulaTabTemplateRequired             :: Maybe Text
  , formulaTabUnderline                    :: Maybe Text
  , formulaTabValidationMessage            :: Maybe Text
  , formulaTabValidationPattern            :: Maybe Text
  , formulaTabValue                        :: Maybe Text
  , formulaTabWidth                        :: Maybe Int
  , formulaTabXPosition                    :: Maybe Text
  , formulaTabYPosition                    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON FormulaTab where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "formulaTab")
instance ToJSON FormulaTab where
  toJSON = genericToJSON (removeFieldLabelPrefix "formulaTab")

instance Default FormulaTab
