module DocuSign.Base.Types.SupportedLanguages where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue

data SupportedLanguages = SupportedLanguages
  { supportedLanguagesLanguages :: Maybe [NameValue]
  } deriving (Show, Eq, Generic)

instance FromJSON SupportedLanguages where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "supportedLanguages")
instance ToJSON SupportedLanguages where
  toJSON = genericToJSON (removeFieldLabelPrefix "supportedLanguages")

instance Default SupportedLanguages
