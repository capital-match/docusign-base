module DocuSign.Base.Types.RecipientAttachment where

import DocuSign.Base.Types.Common

data RecipientAttachment = RecipientAttachment
  { recipientAttachmentAttachmentId   :: Maybe Text
  , recipientAttachmentAttachmentType :: Maybe Text
  , recipientAttachmentData           :: Maybe Text
  , recipientAttachmentLabel          :: Maybe Text
  , recipientAttachmentName           :: Maybe Text
  , recipientAttachmentRemoteUrl      :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientAttachment where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientAttachment")
instance ToJSON RecipientAttachment where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientAttachment")

instance Default RecipientAttachment
