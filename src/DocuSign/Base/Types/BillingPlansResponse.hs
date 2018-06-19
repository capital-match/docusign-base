module DocuSign.Base.Types.BillingPlansResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BillingPlan

data BillingPlansResponse = BillingPlansResponse
  { billingPlansResponseBillingPlans :: Maybe [BillingPlan]
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPlansResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPlansResponse")
instance ToJSON BillingPlansResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPlansResponse")

instance Default BillingPlansResponse
