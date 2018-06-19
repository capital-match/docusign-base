module DocuSign.Base.Types.TemplateCustomFields where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ListCustomField
import DocuSign.Base.Types.TextCustomField

data TemplateCustomFields = TemplateCustomFields
  { templateCustomFieldsListCustomFields :: Maybe [ListCustomField]
  , templateCustomFieldsTextCustomFields :: Maybe [TextCustomField]
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateCustomFields where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateCustomFields")
instance ToJSON TemplateCustomFields where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateCustomFields")

instance Default TemplateCustomFields
