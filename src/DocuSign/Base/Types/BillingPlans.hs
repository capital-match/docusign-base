module DocuSign.Base.Types.BillingPlans where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountAddress
import DocuSign.Base.Types.AccountBillingPlan
import DocuSign.Base.Types.BillingPlan
import DocuSign.Base.Types.CreditCardInformation
import DocuSign.Base.Types.PaymentProcessorInformation
import DocuSign.Base.Types.ReferralInformation

data BillingPlans = BillingPlans
  { billingPlansBillingAddress                    :: Maybe AccountAddress
  , billingPlansBillingAddressIsCreditCardAddress :: Maybe Text
  , billingPlansBillingPlan                       :: Maybe AccountBillingPlan
  , billingPlansCreditCardInformation             :: Maybe CreditCardInformation
  , billingPlansPaymentProcessorInformation       :: Maybe PaymentProcessorInformation
  , billingPlansReferralInformation               :: Maybe ReferralInformation
  , billingPlansSuccessorPlans                    :: Maybe [BillingPlan]
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPlans where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPlans")
instance ToJSON BillingPlans where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPlans")

instance Default BillingPlans
