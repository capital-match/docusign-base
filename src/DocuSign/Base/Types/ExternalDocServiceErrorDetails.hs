module DocuSign.Base.Types.ExternalDocServiceErrorDetails where

import DocuSign.Base.Types.Common

data ExternalDocServiceErrorDetails = ExternalDocServiceErrorDetails
  { externalDocServiceErrorDetailsAuthenticationUrl :: Maybe Text
  , externalDocServiceErrorDetailsErrorCode         :: Maybe Text
  , externalDocServiceErrorDetailsMessage           :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ExternalDocServiceErrorDetails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "externalDocServiceErrorDetails")
instance ToJSON ExternalDocServiceErrorDetails where
  toJSON = genericToJSON (removeFieldLabelPrefix "externalDocServiceErrorDetails")

instance Default ExternalDocServiceErrorDetails
