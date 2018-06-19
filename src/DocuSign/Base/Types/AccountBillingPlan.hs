module DocuSign.Base.Types.AccountBillingPlan where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AddOn
import DocuSign.Base.Types.FeatureSet
import DocuSign.Base.Types.SeatDiscount

data AccountBillingPlan = AccountBillingPlan
  { accountBillingPlanAddOns               :: Maybe [AddOn]
  , accountBillingPlanCanCancelRenewal     :: Maybe Text
  , accountBillingPlanCanUpgrade           :: Maybe Text
  , accountBillingPlanCurrencyCode         :: Maybe Text
  , accountBillingPlanEnableSupport        :: Maybe Text
  , accountBillingPlanIncludedSeats        :: Maybe Text
  , accountBillingPlanIncrementalSeats     :: Maybe Text
  , accountBillingPlanIsDowngrade          :: Maybe Text
  , accountBillingPlanOtherDiscountPercent :: Maybe Text
  , accountBillingPlanPaymentCycle         :: Maybe Text
  , accountBillingPlanPaymentMethod        :: Maybe Text
  , accountBillingPlanPerSeatPrice         :: Maybe Text
  , accountBillingPlanPlanClassification   :: Maybe Text
  , accountBillingPlanPlanFeatureSets      :: Maybe [FeatureSet]
  , accountBillingPlanPlanId               :: Maybe Text
  , accountBillingPlanPlanName             :: Maybe Text
  , accountBillingPlanRenewalStatus        :: Maybe Text
  , accountBillingPlanSeatDiscounts        :: Maybe [SeatDiscount]
  , accountBillingPlanSupportIncidentFee   :: Maybe Text
  , accountBillingPlanSupportPlanFee       :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountBillingPlan where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountBillingPlan")
instance ToJSON AccountBillingPlan where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountBillingPlan")

instance Default AccountBillingPlan
