module DocuSign.Base.Types.BillingPlanUpdateResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BillingPlanPreview

data BillingPlanUpdateResponse = BillingPlanUpdateResponse
  { billingPlanUpdateResponseAccountPaymentMethod :: Maybe Text
  , billingPlanUpdateResponseBillingPlanPreview   :: Maybe BillingPlanPreview
  , billingPlanUpdateResponseCurrencyCode         :: Maybe Text
  , billingPlanUpdateResponseIncludedSeats        :: Maybe Text
  , billingPlanUpdateResponsePaymentCycle         :: Maybe Text
  , billingPlanUpdateResponsePaymentMethod        :: Maybe Text
  , billingPlanUpdateResponsePlanId               :: Maybe Text
  , billingPlanUpdateResponsePlanName             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPlanUpdateResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPlanUpdateResponse")
instance ToJSON BillingPlanUpdateResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPlanUpdateResponse")

instance Default BillingPlanUpdateResponse
