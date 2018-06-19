module DocuSign.Base.Types.InlineTemplate where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountCustomFields
import DocuSign.Base.Types.Document
import DocuSign.Base.Types.EnvelopeRecipients
import DocuSign.Base.Types.Envelopes

data InlineTemplate = InlineTemplate
  { inlineTemplateCustomFields :: Maybe AccountCustomFields
  , inlineTemplateDocuments    :: Maybe [Document]
  , inlineTemplateEnvelope     :: Maybe Envelopes
  , inlineTemplateRecipients   :: Maybe EnvelopeRecipients
  , inlineTemplateSequence     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON InlineTemplate where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "inlineTemplate")
instance ToJSON InlineTemplate where
  toJSON = genericToJSON (removeFieldLabelPrefix "inlineTemplate")

instance Default InlineTemplate
