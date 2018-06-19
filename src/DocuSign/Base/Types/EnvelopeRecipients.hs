module DocuSign.Base.Types.EnvelopeRecipients where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Agent
import DocuSign.Base.Types.CarbonCopy
import DocuSign.Base.Types.CertifiedDelivery
import DocuSign.Base.Types.Editor
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.InPersonSigner
import DocuSign.Base.Types.Intermediary
import DocuSign.Base.Types.Signer

data EnvelopeRecipients = EnvelopeRecipients
  { envelopeRecipientsAgents              :: Maybe [Agent]
  , envelopeRecipientsCarbonCopies        :: Maybe [CarbonCopy]
  , envelopeRecipientsCertifiedDeliveries :: Maybe [CertifiedDelivery]
  , envelopeRecipientsCurrentRoutingOrder :: Maybe Text
  , envelopeRecipientsEditors             :: Maybe [Editor]
  , envelopeRecipientsErrorDetails        :: Maybe ErrorDetails
  , envelopeRecipientsInPersonSigners     :: Maybe [InPersonSigner]
  , envelopeRecipientsIntermediaries      :: Maybe [Intermediary]
  , envelopeRecipientsRecipientCount      :: Maybe Text
  , envelopeRecipientsSigners             :: Maybe [Signer]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeRecipients where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeRecipients")
instance ToJSON EnvelopeRecipients where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeRecipients")

instance Default EnvelopeRecipients
