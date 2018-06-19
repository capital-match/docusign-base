module DocuSign.Base.Types.PaymentProcessorInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AddressInformation

data PaymentProcessorInformation = PaymentProcessorInformation
  { paymentProcessorInformationAddress            :: Maybe AddressInformation
  , paymentProcessorInformationBillingAgreementId :: Maybe Text
  , paymentProcessorInformationEmail              :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PaymentProcessorInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "paymentProcessorInformation")
instance ToJSON PaymentProcessorInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "paymentProcessorInformation")

instance Default PaymentProcessorInformation
