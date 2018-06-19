module DocuSign.Base.Types.AccountPasswordLockoutDurationType where

import DocuSign.Base.Types.Common

data AccountPasswordLockoutDurationType = AccountPasswordLockoutDurationType
  { accountPasswordLockoutDurationTypeOptions :: Maybe [Text]
  } deriving (Show, Eq, Generic)

instance FromJSON AccountPasswordLockoutDurationType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountPasswordLockoutDurationType")
instance ToJSON AccountPasswordLockoutDurationType where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountPasswordLockoutDurationType")

instance Default AccountPasswordLockoutDurationType
