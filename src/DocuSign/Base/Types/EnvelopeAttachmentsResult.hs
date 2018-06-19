module DocuSign.Base.Types.EnvelopeAttachmentsResult where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.EnvelopeAttachments

data EnvelopeAttachmentsResult = EnvelopeAttachmentsResult
  { envelopeAttachmentsResultAttachments :: Maybe [EnvelopeAttachments]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeAttachmentsResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeAttachmentsResult")
instance ToJSON EnvelopeAttachmentsResult where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeAttachmentsResult")

instance Default EnvelopeAttachmentsResult
