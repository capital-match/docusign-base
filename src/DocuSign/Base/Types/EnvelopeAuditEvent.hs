module DocuSign.Base.Types.EnvelopeAuditEvent where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue

data EnvelopeAuditEvent = EnvelopeAuditEvent
  { envelopeAuditEventEventFields :: Maybe [NameValue]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeAuditEvent where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeAuditEvent")
instance ToJSON EnvelopeAuditEvent where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeAuditEvent")

instance Default EnvelopeAuditEvent
