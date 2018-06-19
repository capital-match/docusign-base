module DocuSign.Base.Types.Attachment where

import DocuSign.Base.Types.Common

data Attachment = Attachment
  { attachmentAccessControl  :: Maybe Text
  , attachmentAttachmentId   :: Maybe Text
  , attachmentAttachmentType :: Maybe Text
  , attachmentData           :: Maybe Text
  , attachmentLabel          :: Maybe Text
  , attachmentName           :: Maybe Text
  , attachmentRemoteUrl      :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Attachment where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "attachment")
instance ToJSON Attachment where
  toJSON = genericToJSON (removeFieldLabelPrefix "attachment")

instance Default Attachment
