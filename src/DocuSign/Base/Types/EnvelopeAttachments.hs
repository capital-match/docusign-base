module DocuSign.Base.Types.EnvelopeAttachments where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data EnvelopeAttachments = EnvelopeAttachments
  { envelopeAttachmentsAccessControl  :: Maybe Text
  , envelopeAttachmentsAttachmentId   :: Maybe Text
  , envelopeAttachmentsAttachmentType :: Maybe Text
  , envelopeAttachmentsErrorDetails   :: Maybe ErrorDetails
  , envelopeAttachmentsLabel          :: Maybe Text
  , envelopeAttachmentsName           :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeAttachments where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeAttachments")
instance ToJSON EnvelopeAttachments where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeAttachments")

instance Default EnvelopeAttachments
