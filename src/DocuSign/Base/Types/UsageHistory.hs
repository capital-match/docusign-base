module DocuSign.Base.Types.UsageHistory where

import DocuSign.Base.Types.Common

data UsageHistory = UsageHistory
  { usageHistoryLastSentDateTime   :: Maybe Text
  , usageHistoryLastSignedDateTime :: Maybe Text
  , usageHistorySentCount          :: Maybe Int
  , usageHistorySignedCount        :: Maybe Int
  } deriving (Show, Eq, Generic)

instance FromJSON UsageHistory where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "usageHistory")
instance ToJSON UsageHistory where
  toJSON = genericToJSON (removeFieldLabelPrefix "usageHistory")

instance Default UsageHistory
