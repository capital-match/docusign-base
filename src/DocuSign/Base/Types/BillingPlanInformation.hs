module DocuSign.Base.Types.BillingPlanInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountAddress
import DocuSign.Base.Types.AppStoreReceipt
import DocuSign.Base.Types.CreditCardInformation
import DocuSign.Base.Types.PaymentProcessorInformation
import DocuSign.Base.Types.PlanInformation
import DocuSign.Base.Types.ReferralInformation

data BillingPlanInformation = BillingPlanInformation
  { billingPlanInformationAppStoreReceipt               :: Maybe AppStoreReceipt
  , billingPlanInformationBillingAddress                :: Maybe AccountAddress
  , billingPlanInformationCreditCardInformation         :: Maybe CreditCardInformation
  , billingPlanInformationDowngradeReason               :: Maybe Text
  , billingPlanInformationEnableSupport                 :: Maybe Text
  , billingPlanInformationIncludedSeats                 :: Maybe Text
  , billingPlanInformationIncrementalSeats              :: Maybe Text
  , billingPlanInformationPaymentProcessorInformation   :: Maybe PaymentProcessorInformation
  , billingPlanInformationPlanInformation               :: Maybe PlanInformation
  , billingPlanInformationReferralInformation           :: Maybe ReferralInformation
  , billingPlanInformationRenewalStatus                 :: Maybe Text
  , billingPlanInformationSaleDiscountAmount            :: Maybe Text
  , billingPlanInformationSaleDiscountFixedAmount       :: Maybe Text
  , billingPlanInformationSaleDiscountPercent           :: Maybe Text
  , billingPlanInformationSaleDiscountPeriods           :: Maybe Text
  , billingPlanInformationSaleDiscountSeatPriceOverride :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPlanInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPlanInformation")
instance ToJSON BillingPlanInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPlanInformation")

instance Default BillingPlanInformation
