module DocuSign.Base.Types.EnvelopeCustomFields where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ListCustomField
import DocuSign.Base.Types.TextCustomField

data EnvelopeCustomFields = EnvelopeCustomFields
  { envelopeCustomFieldsListCustomFields :: Maybe [ListCustomField]
  , envelopeCustomFieldsTextCustomFields :: Maybe [TextCustomField]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeCustomFields where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeCustomFields")
instance ToJSON EnvelopeCustomFields where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeCustomFields")

instance Default EnvelopeCustomFields
