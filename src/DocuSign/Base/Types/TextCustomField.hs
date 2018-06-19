module DocuSign.Base.Types.TextCustomField where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data TextCustomField = TextCustomField
  { textCustomFieldConfigurationType :: Maybe Text
  , textCustomFieldErrorDetails      :: Maybe ErrorDetails
  , textCustomFieldFieldId           :: Maybe Text
  , textCustomFieldName              :: Maybe Text
  , textCustomFieldRequired          :: Maybe Text
  , textCustomFieldShow              :: Maybe Text
  , textCustomFieldValue             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON TextCustomField where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "textCustomField")
instance ToJSON TextCustomField where
  toJSON = genericToJSON (removeFieldLabelPrefix "textCustomField")

instance Default TextCustomField
