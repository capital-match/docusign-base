module DocuSign.Base.Types.BillingChargeResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BillingCharge

data BillingChargeResponse = BillingChargeResponse
  { billingChargeResponseBillingChargeItems :: Maybe [BillingCharge]
  } deriving (Show, Eq, Generic)

instance FromJSON BillingChargeResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingChargeResponse")
instance ToJSON BillingChargeResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingChargeResponse")

instance Default BillingChargeResponse
