module DocuSign.Base.Types.UserSignatureDefinition where

import DocuSign.Base.Types.Common

data UserSignatureDefinition = UserSignatureDefinition
  { userSignatureDefinitionSignatureFont     :: Maybe Text
  , userSignatureDefinitionSignatureId       :: Maybe Text
  , userSignatureDefinitionSignatureInitials :: Maybe Text
  , userSignatureDefinitionSignatureName     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON UserSignatureDefinition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userSignatureDefinition")
instance ToJSON UserSignatureDefinition where
  toJSON = genericToJSON (removeFieldLabelPrefix "userSignatureDefinition")

instance Default UserSignatureDefinition
