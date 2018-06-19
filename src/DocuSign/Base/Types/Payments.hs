module DocuSign.Base.Types.Payments where

import DocuSign.Base.Types.Common

data Payments = Payments
  { paymentsAmount        :: Maybe Text
  , paymentsDescription   :: Maybe Text
  , paymentsPaymentDate   :: Maybe Text
  , paymentsPaymentId     :: Maybe Text
  , paymentsPaymentNumber :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Payments where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "payments")
instance ToJSON Payments where
  toJSON = genericToJSON (removeFieldLabelPrefix "payments")

instance Default Payments
