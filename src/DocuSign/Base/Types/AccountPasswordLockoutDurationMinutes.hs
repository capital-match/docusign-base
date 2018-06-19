module DocuSign.Base.Types.AccountPasswordLockoutDurationMinutes where

import DocuSign.Base.Types.Common

data AccountPasswordLockoutDurationMinutes = AccountPasswordLockoutDurationMinutes
  { accountPasswordLockoutDurationMinutesMaximumMinutes :: Maybe Text
  , accountPasswordLockoutDurationMinutesMinimumMinutes :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountPasswordLockoutDurationMinutes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountPasswordLockoutDurationMinutes")
instance ToJSON AccountPasswordLockoutDurationMinutes where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountPasswordLockoutDurationMinutes")

instance Default AccountPasswordLockoutDurationMinutes
