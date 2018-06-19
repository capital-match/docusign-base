module DocuSign.Base.Types.BillingPlanResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BillingPlan

data BillingPlanResponse = BillingPlanResponse
  { billingPlanResponseBillingPlan    :: Maybe BillingPlan
  , billingPlanResponseSuccessorPlans :: Maybe [BillingPlan]
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPlanResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPlanResponse")
instance ToJSON BillingPlanResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPlanResponse")

instance Default BillingPlanResponse
