module DocuSign.Base.Types.BillingCharge where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BillingDiscount
import DocuSign.Base.Types.BillingPrice

data BillingCharge = BillingCharge
  { billingChargeAllowedQuantity     :: Maybe Text
  , billingChargeBlocked             :: Maybe Text
  , billingChargeChargeName          :: Maybe Text
  , billingChargeChargeType          :: Maybe Text
  , billingChargeChargeUnitOfMeasure :: Maybe Text
  , billingChargeDiscounts           :: Maybe [BillingDiscount]
  , billingChargeFirstEffectiveDate  :: Maybe Text
  , billingChargeIncludedQuantity    :: Maybe Text
  , billingChargeIncrementalQuantity :: Maybe Text
  , billingChargeLastEffectiveDate   :: Maybe Text
  , billingChargePrices              :: Maybe [BillingPrice]
  , billingChargeUnitPrice           :: Maybe Text
  , billingChargeUsedQuantity        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingCharge where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingCharge")
instance ToJSON BillingCharge where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingCharge")

instance Default BillingCharge
