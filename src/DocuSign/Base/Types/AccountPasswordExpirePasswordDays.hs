module DocuSign.Base.Types.AccountPasswordExpirePasswordDays where

import DocuSign.Base.Types.Common

data AccountPasswordExpirePasswordDays = AccountPasswordExpirePasswordDays
  { accountPasswordExpirePasswordDaysMaximumDays :: Maybe Text
  , accountPasswordExpirePasswordDaysMinimumDays :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountPasswordExpirePasswordDays where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountPasswordExpirePasswordDays")
instance ToJSON AccountPasswordExpirePasswordDays where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountPasswordExpirePasswordDays")

instance Default AccountPasswordExpirePasswordDays
