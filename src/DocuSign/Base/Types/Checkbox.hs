module DocuSign.Base.Types.Checkbox where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data Checkbox = Checkbox
  { checkboxAnchorCaseSensitive          :: Maybe Text
  , checkboxAnchorHorizontalAlignment    :: Maybe Text
  , checkboxAnchorIgnoreIfNotPresent     :: Maybe Text
  , checkboxAnchorMatchWholeWord         :: Maybe Text
  , checkboxAnchorString                 :: Maybe Text
  , checkboxAnchorUnits                  :: Maybe Text
  , checkboxAnchorXOffset                :: Maybe Text
  , checkboxAnchorYOffset                :: Maybe Text
  , checkboxConditionalParentLabel       :: Maybe Text
  , checkboxConditionalParentValue       :: Maybe Text
  , checkboxCustomTabId                  :: Maybe Text
  , checkboxDocumentId                   :: Maybe Text
  , checkboxErrorDetails                 :: Maybe ErrorDetails
  , checkboxLocked                       :: Maybe Text
  , checkboxMergeField                   :: Maybe MergeField
  , checkboxName                         :: Maybe Text
  , checkboxPageNumber                   :: Maybe Text
  , checkboxRecipientId                  :: Maybe Text
  , checkboxRequired                     :: Maybe Text
  , checkboxRequireInitialOnSharedChange :: Maybe Text
  , checkboxSelected                     :: Maybe Text
  , checkboxShared                       :: Maybe Text
  , checkboxStatus                       :: Maybe Text
  , checkboxTabId                        :: Maybe Text
  , checkboxTabLabel                     :: Maybe Text
  , checkboxTabOrder                     :: Maybe Text
  , checkboxTemplateLocked               :: Maybe Text
  , checkboxTemplateRequired             :: Maybe Text
  , checkboxXPosition                    :: Maybe Text
  , checkboxYPosition                    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Checkbox where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "checkbox")
instance ToJSON Checkbox where
  toJSON = genericToJSON (removeFieldLabelPrefix "checkbox")

instance Default Checkbox
