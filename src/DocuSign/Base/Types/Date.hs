module DocuSign.Base.Types.Date where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data Date = Date
  { dateAnchorCaseSensitive          :: Maybe Text
  , dateAnchorHorizontalAlignment    :: Maybe Text
  , dateAnchorIgnoreIfNotPresent     :: Maybe Text
  , dateAnchorMatchWholeWord         :: Maybe Text
  , dateAnchorString                 :: Maybe Text
  , dateAnchorUnits                  :: Maybe Text
  , dateAnchorXOffset                :: Maybe Text
  , dateAnchorYOffset                :: Maybe Text
  , dateBold                         :: Maybe Text
  , dateConcealValueOnDocument       :: Maybe Text
  , dateConditionalParentLabel       :: Maybe Text
  , dateConditionalParentValue       :: Maybe Text
  , dateCustomTabId                  :: Maybe Text
  , dateDisableAutoSize              :: Maybe Text
  , dateDocumentId                   :: Maybe Text
  , dateErrorDetails                 :: Maybe ErrorDetails
  , dateFont                         :: Maybe Text
  , dateFontColor                    :: Maybe Text
  , dateFontSize                     :: Maybe Text
  , dateItalic                       :: Maybe Text
  , dateLocked                       :: Maybe Text
  , dateMaxLength                    :: Maybe Int
  , dateMergeField                   :: Maybe MergeField
  , dateName                         :: Maybe Text
  , dateOriginalValue                :: Maybe Text
  , datePageNumber                   :: Maybe Text
  , dateRecipientId                  :: Maybe Text
  , dateRequireAll                   :: Maybe Text
  , dateRequired                     :: Maybe Text
  , dateRequireInitialOnSharedChange :: Maybe Text
  , dateSenderRequired               :: Maybe Text
  , dateShared                       :: Maybe Text
  , dateStatus                       :: Maybe Text
  , dateTabId                        :: Maybe Text
  , dateTabLabel                     :: Maybe Text
  , dateTabOrder                     :: Maybe Text
  , dateTemplateLocked               :: Maybe Text
  , dateTemplateRequired             :: Maybe Text
  , dateUnderline                    :: Maybe Text
  , dateValidationMessage            :: Maybe Text
  , dateValidationPattern            :: Maybe Text
  , dateValue                        :: Maybe Text
  , dateWidth                        :: Maybe Int
  , dateXPosition                    :: Maybe Text
  , dateYPosition                    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Date where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "date")
instance ToJSON Date where
  toJSON = genericToJSON (removeFieldLabelPrefix "date")

instance Default Date
