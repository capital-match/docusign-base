module DocuSign.Base.Types.AccountCustomFields where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ListCustomField
import DocuSign.Base.Types.TextCustomField

data AccountCustomFields = AccountCustomFields
  { accountCustomFieldsListCustomFields :: Maybe [ListCustomField]
  , accountCustomFieldsTextCustomFields :: Maybe [TextCustomField]
  } deriving (Show, Eq, Generic)

instance FromJSON AccountCustomFields where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountCustomFields")
instance ToJSON AccountCustomFields where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountCustomFields")

instance Default AccountCustomFields
