module DocuSign.Base.Types.ListCustomField where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data ListCustomField = ListCustomField
  { listCustomFieldConfigurationType :: Maybe Text
  , listCustomFieldErrorDetails      :: Maybe ErrorDetails
  , listCustomFieldFieldId           :: Maybe Text
  , listCustomFieldListItems         :: Maybe [Text]
  , listCustomFieldName              :: Maybe Text
  , listCustomFieldRequired          :: Maybe Text
  , listCustomFieldShow              :: Maybe Text
  , listCustomFieldValue             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ListCustomField where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "listCustomField")
instance ToJSON ListCustomField where
  toJSON = genericToJSON (removeFieldLabelPrefix "listCustomField")

instance Default ListCustomField
