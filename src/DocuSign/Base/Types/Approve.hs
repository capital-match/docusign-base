module DocuSign.Base.Types.Approve where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data Approve = Approve
  { approveAnchorCaseSensitive       :: Maybe Text
  , approveAnchorHorizontalAlignment :: Maybe Text
  , approveAnchorIgnoreIfNotPresent  :: Maybe Text
  , approveAnchorMatchWholeWord      :: Maybe Text
  , approveAnchorString              :: Maybe Text
  , approveAnchorUnits               :: Maybe Text
  , approveAnchorXOffset             :: Maybe Text
  , approveAnchorYOffset             :: Maybe Text
  , approveBold                      :: Maybe Text
  , approveButtonText                :: Maybe Text
  , approveConditionalParentLabel    :: Maybe Text
  , approveConditionalParentValue    :: Maybe Text
  , approveCustomTabId               :: Maybe Text
  , approveDocumentId                :: Maybe Text
  , approveErrorDetails              :: Maybe ErrorDetails
  , approveFont                      :: Maybe Text
  , approveFontColor                 :: Maybe Text
  , approveFontSize                  :: Maybe Text
  , approveHeight                    :: Maybe Int
  , approveItalic                    :: Maybe Text
  , approveMergeField                :: Maybe MergeField
  , approvePageNumber                :: Maybe Text
  , approveRecipientId               :: Maybe Text
  , approveStatus                    :: Maybe Text
  , approveTabId                     :: Maybe Text
  , approveTabLabel                  :: Maybe Text
  , approveTabOrder                  :: Maybe Text
  , approveTemplateLocked            :: Maybe Text
  , approveTemplateRequired          :: Maybe Text
  , approveUnderline                 :: Maybe Text
  , approveWidth                     :: Maybe Int
  , approveXPosition                 :: Maybe Text
  , approveYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Approve where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "approve")
instance ToJSON Approve where
  toJSON = genericToJSON (removeFieldLabelPrefix "approve")

instance Default Approve
