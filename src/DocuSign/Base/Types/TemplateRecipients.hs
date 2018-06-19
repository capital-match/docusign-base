module DocuSign.Base.Types.TemplateRecipients where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Agent
import DocuSign.Base.Types.CarbonCopy
import DocuSign.Base.Types.CertifiedDelivery
import DocuSign.Base.Types.Editor
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.InPersonSigner
import DocuSign.Base.Types.Intermediary
import DocuSign.Base.Types.Signer

data TemplateRecipients = TemplateRecipients
  { templateRecipientsAgents              :: Maybe [Agent]
  , templateRecipientsCarbonCopies        :: Maybe [CarbonCopy]
  , templateRecipientsCertifiedDeliveries :: Maybe [CertifiedDelivery]
  , templateRecipientsCurrentRoutingOrder :: Maybe Text
  , templateRecipientsEditors             :: Maybe [Editor]
  , templateRecipientsErrorDetails        :: Maybe ErrorDetails
  , templateRecipientsInPersonSigners     :: Maybe [InPersonSigner]
  , templateRecipientsIntermediaries      :: Maybe [Intermediary]
  , templateRecipientsRecipientCount      :: Maybe Text
  , templateRecipientsSigners             :: Maybe [Signer]
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateRecipients where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateRecipients")
instance ToJSON TemplateRecipients where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateRecipients")

instance Default TemplateRecipients
