module DocuSign.Base.Types.AccountPasswordMinimumPasswordAgeDays where

import DocuSign.Base.Types.Common

data AccountPasswordMinimumPasswordAgeDays = AccountPasswordMinimumPasswordAgeDays
  { accountPasswordMinimumPasswordAgeDaysMaximumAge :: Maybe Text
  , accountPasswordMinimumPasswordAgeDaysMinimumAge :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountPasswordMinimumPasswordAgeDays where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountPasswordMinimumPasswordAgeDays")
instance ToJSON AccountPasswordMinimumPasswordAgeDays where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountPasswordMinimumPasswordAgeDays")

instance Default AccountPasswordMinimumPasswordAgeDays
