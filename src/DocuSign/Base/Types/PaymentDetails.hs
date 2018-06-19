module DocuSign.Base.Types.PaymentDetails where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Money
import DocuSign.Base.Types.PaymentLineItem

data PaymentDetails = PaymentDetails
  { paymentDetailsChargeId         :: Maybe Text
  , paymentDetailsCurrencyCode     :: Maybe Text
  , paymentDetailsGatewayAccountId :: Maybe Text
  , paymentDetailsGatewayName      :: Maybe Text
  , paymentDetailsLineItems        :: Maybe [PaymentLineItem]
  , paymentDetailsStatus           :: Maybe Text
  , paymentDetailsTotal            :: Maybe Money
  } deriving (Show, Eq, Generic)

instance FromJSON PaymentDetails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "paymentDetails")
instance ToJSON PaymentDetails where
  toJSON = genericToJSON (removeFieldLabelPrefix "paymentDetails")

instance Default PaymentDetails
