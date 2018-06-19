module DocuSign.Base.Types.SignerAttachment where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data SignerAttachment = SignerAttachment
  { signerAttachmentAnchorCaseSensitive       :: Maybe Text
  , signerAttachmentAnchorHorizontalAlignment :: Maybe Text
  , signerAttachmentAnchorIgnoreIfNotPresent  :: Maybe Text
  , signerAttachmentAnchorMatchWholeWord      :: Maybe Text
  , signerAttachmentAnchorString              :: Maybe Text
  , signerAttachmentAnchorUnits               :: Maybe Text
  , signerAttachmentAnchorXOffset             :: Maybe Text
  , signerAttachmentAnchorYOffset             :: Maybe Text
  , signerAttachmentConditionalParentLabel    :: Maybe Text
  , signerAttachmentConditionalParentValue    :: Maybe Text
  , signerAttachmentCustomTabId               :: Maybe Text
  , signerAttachmentDocumentId                :: Maybe Text
  , signerAttachmentErrorDetails              :: Maybe ErrorDetails
  , signerAttachmentMergeField                :: Maybe MergeField
  , signerAttachmentName                      :: Maybe Text
  , signerAttachmentOptional                  :: Maybe Text
  , signerAttachmentPageNumber                :: Maybe Text
  , signerAttachmentRecipientId               :: Maybe Text
  , signerAttachmentScaleValue                :: Maybe Double
  , signerAttachmentStatus                    :: Maybe Text
  , signerAttachmentTabId                     :: Maybe Text
  , signerAttachmentTabLabel                  :: Maybe Text
  , signerAttachmentTabOrder                  :: Maybe Text
  , signerAttachmentTemplateLocked            :: Maybe Text
  , signerAttachmentTemplateRequired          :: Maybe Text
  , signerAttachmentXPosition                 :: Maybe Text
  , signerAttachmentYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON SignerAttachment where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "signerAttachment")
instance ToJSON SignerAttachment where
  toJSON = genericToJSON (removeFieldLabelPrefix "signerAttachment")

instance Default SignerAttachment
