module DocuSign.Base.Types.CurrencyPlanPrice where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.CreditCardTypes

data CurrencyPlanPrice = CurrencyPlanPrice
  { currencyPlanPriceCurrencyCode       :: Maybe Text
  , currencyPlanPriceCurrencySymbol     :: Maybe Text
  , currencyPlanPricePerSeatPrice       :: Maybe Text
  , currencyPlanPriceSupportedCardTypes :: Maybe CreditCardTypes
  , currencyPlanPriceSupportIncidentFee :: Maybe Text
  , currencyPlanPriceSupportPlanFee     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CurrencyPlanPrice where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "currencyPlanPrice")
instance ToJSON CurrencyPlanPrice where
  toJSON = genericToJSON (removeFieldLabelPrefix "currencyPlanPrice")

instance Default CurrencyPlanPrice
