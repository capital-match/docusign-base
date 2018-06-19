module DocuSign.Base.Types.EnvelopeFormData where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue
import DocuSign.Base.Types.RecipientFormData

data EnvelopeFormData = EnvelopeFormData
  { envelopeFormDataEmailSubject      :: Maybe Text
  , envelopeFormDataEnvelopeId        :: Maybe Text
  , envelopeFormDataFormData          :: Maybe [NameValue]
  , envelopeFormDataRecipientFormData :: Maybe [RecipientFormData]
  , envelopeFormDataSentDateTime      :: Maybe Text
  , envelopeFormDataStatus            :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeFormData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeFormData")
instance ToJSON EnvelopeFormData where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeFormData")

instance Default EnvelopeFormData
