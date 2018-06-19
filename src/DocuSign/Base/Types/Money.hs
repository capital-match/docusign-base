module DocuSign.Base.Types.Money where

import DocuSign.Base.Types.Common

data Money = Money
  { moneyAmountInBaseUnit :: Maybe Text
  , moneyCurrency         :: Maybe Text
  , moneyDisplayAmount    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Money where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "money")
instance ToJSON Money where
  toJSON = genericToJSON (removeFieldLabelPrefix "money")

instance Default Money
