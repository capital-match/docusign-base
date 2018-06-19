module DocuSign.Base.Types.NewUsersDefinition where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Users

data NewUsersDefinition = NewUsersDefinition
  { newUsersDefinitionNewUsers :: Maybe [Users]
  } deriving (Show, Eq, Generic)

instance FromJSON NewUsersDefinition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "newUsersDefinition")
instance ToJSON NewUsersDefinition where
  toJSON = genericToJSON (removeFieldLabelPrefix "newUsersDefinition")

instance Default NewUsersDefinition
