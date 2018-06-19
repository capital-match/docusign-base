module DocuSign.Base.Types.CurrencyFeatureSetPrice where

import DocuSign.Base.Types.Common

data CurrencyFeatureSetPrice = CurrencyFeatureSetPrice
  { currencyFeatureSetPriceCurrencyCode   :: Maybe Text
  , currencyFeatureSetPriceCurrencySymbol :: Maybe Text
  , currencyFeatureSetPriceEnvelopeFee    :: Maybe Text
  , currencyFeatureSetPriceFixedFee       :: Maybe Text
  , currencyFeatureSetPriceSeatFee        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CurrencyFeatureSetPrice where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "currencyFeatureSetPrice")
instance ToJSON CurrencyFeatureSetPrice where
  toJSON = genericToJSON (removeFieldLabelPrefix "currencyFeatureSetPrice")

instance Default CurrencyFeatureSetPrice
