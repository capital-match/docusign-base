module DocuSign.Base.Types.Decline where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data Decline = Decline
  { declineAnchorCaseSensitive       :: Maybe Text
  , declineAnchorHorizontalAlignment :: Maybe Text
  , declineAnchorIgnoreIfNotPresent  :: Maybe Text
  , declineAnchorMatchWholeWord      :: Maybe Text
  , declineAnchorString              :: Maybe Text
  , declineAnchorUnits               :: Maybe Text
  , declineAnchorXOffset             :: Maybe Text
  , declineAnchorYOffset             :: Maybe Text
  , declineBold                      :: Maybe Text
  , declineButtonText                :: Maybe Text
  , declineConditionalParentLabel    :: Maybe Text
  , declineConditionalParentValue    :: Maybe Text
  , declineCustomTabId               :: Maybe Text
  , declineDeclineReason             :: Maybe Text
  , declineDocumentId                :: Maybe Text
  , declineErrorDetails              :: Maybe ErrorDetails
  , declineFont                      :: Maybe Text
  , declineFontColor                 :: Maybe Text
  , declineFontSize                  :: Maybe Text
  , declineHeight                    :: Maybe Int
  , declineItalic                    :: Maybe Text
  , declineMergeField                :: Maybe MergeField
  , declinePageNumber                :: Maybe Text
  , declineRecipientId               :: Maybe Text
  , declineStatus                    :: Maybe Text
  , declineTabId                     :: Maybe Text
  , declineTabLabel                  :: Maybe Text
  , declineTabOrder                  :: Maybe Text
  , declineTemplateLocked            :: Maybe Text
  , declineTemplateRequired          :: Maybe Text
  , declineUnderline                 :: Maybe Text
  , declineWidth                     :: Maybe Int
  , declineXPosition                 :: Maybe Text
  , declineYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Decline where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "decline")
instance ToJSON Decline where
  toJSON = genericToJSON (removeFieldLabelPrefix "decline")

instance Default Decline
