module DocuSign.Base.Types.EnvelopeAttachmentsRequest where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Attachment

data EnvelopeAttachmentsRequest = EnvelopeAttachmentsRequest
  { envelopeAttachmentsRequestAttachments :: Maybe [Attachment]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeAttachmentsRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeAttachmentsRequest")
instance ToJSON EnvelopeAttachmentsRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeAttachmentsRequest")

instance Default EnvelopeAttachmentsRequest
