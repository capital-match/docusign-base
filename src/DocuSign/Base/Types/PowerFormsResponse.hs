module DocuSign.Base.Types.PowerFormsResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.PowerForms

data PowerFormsResponse = PowerFormsResponse
  { powerFormsResponseEndPosition   :: Maybe Text
  , powerFormsResponseNextUri       :: Maybe Text
  , powerFormsResponsePowerForms    :: Maybe [PowerForms]
  , powerFormsResponsePreviousUri   :: Maybe Text
  , powerFormsResponseResultSetSize :: Maybe Text
  , powerFormsResponseStartPosition :: Maybe Text
  , powerFormsResponseTotalSetSize  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PowerFormsResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "powerFormsResponse")
instance ToJSON PowerFormsResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "powerFormsResponse")

instance Default PowerFormsResponse
