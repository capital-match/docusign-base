module DocuSign.Base.Types.EnvelopeAuditEventResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.EnvelopeAuditEvent

data EnvelopeAuditEventResponse = EnvelopeAuditEventResponse
  { envelopeAuditEventResponseAuditEvents :: Maybe [EnvelopeAuditEvent]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeAuditEventResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeAuditEventResponse")
instance ToJSON EnvelopeAuditEventResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeAuditEventResponse")

instance Default EnvelopeAuditEventResponse
