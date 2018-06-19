module DocuSign.Base.Types.CustomField where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data CustomField = CustomField
  { customFieldCustomFieldType :: Maybe Text
  , customFieldErrorDetails    :: Maybe ErrorDetails
  , customFieldFieldId         :: Maybe Text
  , customFieldListItems       :: Maybe [Text]
  , customFieldName            :: Maybe Text
  , customFieldRequired        :: Maybe Text
  , customFieldShow            :: Maybe Text
  , customFieldValue           :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CustomField where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "customField")
instance ToJSON CustomField where
  toJSON = genericToJSON (removeFieldLabelPrefix "customField")

instance Default CustomField
