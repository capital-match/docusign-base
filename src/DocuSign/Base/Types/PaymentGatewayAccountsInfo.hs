module DocuSign.Base.Types.PaymentGatewayAccountsInfo where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.PaymentGatewayAccounts

data PaymentGatewayAccountsInfo = PaymentGatewayAccountsInfo
  { paymentGatewayAccountsInfoPaymentGatewayAccounts :: Maybe [PaymentGatewayAccounts]
  } deriving (Show, Eq, Generic)

instance FromJSON PaymentGatewayAccountsInfo where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "paymentGatewayAccountsInfo")
instance ToJSON PaymentGatewayAccountsInfo where
  toJSON = genericToJSON (removeFieldLabelPrefix "paymentGatewayAccountsInfo")

instance Default PaymentGatewayAccountsInfo
