module DocuSign.Base.Types.FeatureSet where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.CurrencyFeatureSetPrice

data FeatureSet = FeatureSet
  { featureSetCurrencyFeatureSetPrices :: Maybe [CurrencyFeatureSetPrice]
  , featureSetEnvelopeFee              :: Maybe Text
  , featureSetFeatureSetId             :: Maybe Text
  , featureSetFixedFee                 :: Maybe Text
  , featureSetIs21CFRPart11            :: Maybe Text
  , featureSetIsActive                 :: Maybe Text
  , featureSetIsEnabled                :: Maybe Text
  , featureSetName                     :: Maybe Text
  , featureSetSeatFee                  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON FeatureSet where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "featureSet")
instance ToJSON FeatureSet where
  toJSON = genericToJSON (removeFieldLabelPrefix "featureSet")

instance Default FeatureSet
