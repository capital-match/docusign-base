module DocuSign.Base.Types.TextContent where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data TextContent = TextContent
  { textContentAnchorCaseSensitive          :: Maybe Text
  , textContentAnchorHorizontalAlignment    :: Maybe Text
  , textContentAnchorIgnoreIfNotPresent     :: Maybe Text
  , textContentAnchorMatchWholeWord         :: Maybe Text
  , textContentAnchorString                 :: Maybe Text
  , textContentAnchorUnits                  :: Maybe Text
  , textContentAnchorXOffset                :: Maybe Text
  , textContentAnchorYOffset                :: Maybe Text
  , textContentBold                         :: Maybe Text
  , textContentConcealValueOnDocument       :: Maybe Text
  , textContentConditionalParentLabel       :: Maybe Text
  , textContentConditionalParentValue       :: Maybe Text
  , textContentCustomTabId                  :: Maybe Text
  , textContentDisableAutoSize              :: Maybe Text
  , textContentDocumentId                   :: Maybe Text
  , textContentErrorDetails                 :: Maybe ErrorDetails
  , textContentFont                         :: Maybe Text
  , textContentFontColor                    :: Maybe Text
  , textContentFontSize                     :: Maybe Text
  , textContentFormula                      :: Maybe Text
  , textContentHeight                       :: Maybe Int
  , textContentIsPaymentAmount              :: Maybe Text
  , textContentItalic                       :: Maybe Text
  , textContentLocked                       :: Maybe Text
  , textContentMaxLength                    :: Maybe Int
  , textContentMergeField                   :: Maybe MergeField
  , textContentName                         :: Maybe Text
  , textContentOriginalValue                :: Maybe Text
  , textContentPageNumber                   :: Maybe Text
  , textContentRecipientId                  :: Maybe Text
  , textContentRequireAll                   :: Maybe Text
  , textContentRequired                     :: Maybe Text
  , textContentRequireInitialOnSharedChange :: Maybe Text
  , textContentSenderRequired               :: Maybe Text
  , textContentShared                       :: Maybe Text
  , textContentStatus                       :: Maybe Text
  , textContentTabId                        :: Maybe Text
  , textContentTabLabel                     :: Maybe Text
  , textContentTabOrder                     :: Maybe Text
  , textContentTemplateLocked               :: Maybe Text
  , textContentTemplateRequired             :: Maybe Text
  , textContentUnderline                    :: Maybe Text
  , textContentValidationMessage            :: Maybe Text
  , textContentValidationPattern            :: Maybe Text
  , textContentValue                        :: Maybe Text
  , textContentWidth                        :: Maybe Int
  , textContentXPosition                    :: Maybe Text
  , textContentYPosition                    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON TextContent where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "textContent")
instance ToJSON TextContent where
  toJSON = genericToJSON (removeFieldLabelPrefix "textContent")

instance Default TextContent
