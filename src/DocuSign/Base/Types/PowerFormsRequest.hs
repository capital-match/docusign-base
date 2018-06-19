module DocuSign.Base.Types.PowerFormsRequest where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.PowerForms

data PowerFormsRequest = PowerFormsRequest
  { powerFormsRequestPowerForms :: Maybe [PowerForms]
  } deriving (Show, Eq, Generic)

instance FromJSON PowerFormsRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "powerFormsRequest")
instance ToJSON PowerFormsRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "powerFormsRequest")

instance Default PowerFormsRequest
