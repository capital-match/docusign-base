module DocuSign.Base.Types.BillingPlan where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AppStoreProduct
import DocuSign.Base.Types.CurrencyPlanPrice
import DocuSign.Base.Types.FeatureSet
import DocuSign.Base.Types.SeatDiscount

data BillingPlan = BillingPlan
  { billingPlanAppStoreProducts     :: Maybe [AppStoreProduct]
  , billingPlanCurrencyPlanPrices   :: Maybe [CurrencyPlanPrice]
  , billingPlanEnableSupport        :: Maybe Text
  , billingPlanIncludedSeats        :: Maybe Text
  , billingPlanOtherDiscountPercent :: Maybe Text
  , billingPlanPaymentCycle         :: Maybe Text
  , billingPlanPaymentMethod        :: Maybe Text
  , billingPlanPerSeatPrice         :: Maybe Text
  , billingPlanPlanClassification   :: Maybe Text
  , billingPlanPlanFeatureSets      :: Maybe [FeatureSet]
  , billingPlanPlanId               :: Maybe Text
  , billingPlanPlanName             :: Maybe Text
  , billingPlanSeatDiscounts        :: Maybe [SeatDiscount]
  , billingPlanSupportIncidentFee   :: Maybe Text
  , billingPlanSupportPlanFee       :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPlan where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPlan")
instance ToJSON BillingPlan where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPlan")

instance Default BillingPlan
