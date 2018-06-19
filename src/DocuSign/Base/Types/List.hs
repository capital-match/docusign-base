module DocuSign.Base.Types.List where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.ListItem
import DocuSign.Base.Types.MergeField

data List = List
  { listAnchorCaseSensitive          :: Maybe Text
  , listAnchorHorizontalAlignment    :: Maybe Text
  , listAnchorIgnoreIfNotPresent     :: Maybe Text
  , listAnchorMatchWholeWord         :: Maybe Text
  , listAnchorString                 :: Maybe Text
  , listAnchorUnits                  :: Maybe Text
  , listAnchorXOffset                :: Maybe Text
  , listAnchorYOffset                :: Maybe Text
  , listBold                         :: Maybe Text
  , listConditionalParentLabel       :: Maybe Text
  , listConditionalParentValue       :: Maybe Text
  , listCustomTabId                  :: Maybe Text
  , listDocumentId                   :: Maybe Text
  , listErrorDetails                 :: Maybe ErrorDetails
  , listFont                         :: Maybe Text
  , listFontColor                    :: Maybe Text
  , listFontSize                     :: Maybe Text
  , listItalic                       :: Maybe Text
  , listListItems                    :: Maybe [ListItem]
  , listLocked                       :: Maybe Text
  , listMergeField                   :: Maybe MergeField
  , listPageNumber                   :: Maybe Text
  , listRecipientId                  :: Maybe Text
  , listRequireAll                   :: Maybe Text
  , listRequired                     :: Maybe Text
  , listRequireInitialOnSharedChange :: Maybe Text
  , listSenderRequired               :: Maybe Text
  , listShared                       :: Maybe Text
  , listStatus                       :: Maybe Text
  , listTabId                        :: Maybe Text
  , listTabLabel                     :: Maybe Text
  , listTabOrder                     :: Maybe Text
  , listTemplateLocked               :: Maybe Text
  , listTemplateRequired             :: Maybe Text
  , listUnderline                    :: Maybe Text
  , listValue                        :: Maybe Text
  , listWidth                        :: Maybe Int
  , listXPosition                    :: Maybe Text
  , listYPosition                    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON List where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "list")
instance ToJSON List where
  toJSON = genericToJSON (removeFieldLabelPrefix "list")

instance Default List
