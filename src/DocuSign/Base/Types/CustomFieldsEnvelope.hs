module DocuSign.Base.Types.CustomFieldsEnvelope where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ListCustomField
import DocuSign.Base.Types.TextCustomField

data CustomFieldsEnvelope = CustomFieldsEnvelope
  { customFieldsEnvelopeListCustomFields :: Maybe [ListCustomField]
  , customFieldsEnvelopeTextCustomFields :: Maybe [TextCustomField]
  } deriving (Show, Eq, Generic)

instance FromJSON CustomFieldsEnvelope where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "customFieldsEnvelope")
instance ToJSON CustomFieldsEnvelope where
  toJSON = genericToJSON (removeFieldLabelPrefix "customFieldsEnvelope")

instance Default CustomFieldsEnvelope
