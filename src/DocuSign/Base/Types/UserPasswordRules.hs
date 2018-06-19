module DocuSign.Base.Types.UserPasswordRules where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountPasswordRules

data UserPasswordRules = UserPasswordRules
  { userPasswordRulesPasswordRules :: Maybe AccountPasswordRules
  , userPasswordRulesUserId        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON UserPasswordRules where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userPasswordRules")
instance ToJSON UserPasswordRules where
  toJSON = genericToJSON (removeFieldLabelPrefix "userPasswordRules")

instance Default UserPasswordRules
