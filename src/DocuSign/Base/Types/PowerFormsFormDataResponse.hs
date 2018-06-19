module DocuSign.Base.Types.PowerFormsFormDataResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.PowerFormData

data PowerFormsFormDataResponse = PowerFormsFormDataResponse
  { powerFormsFormDataResponseEnvelopes :: Maybe [PowerFormData]
  } deriving (Show, Eq, Generic)

instance FromJSON PowerFormsFormDataResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "powerFormsFormDataResponse")
instance ToJSON PowerFormsFormDataResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "powerFormsFormDataResponse")

instance Default PowerFormsFormDataResponse
