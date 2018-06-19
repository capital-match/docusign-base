module DocuSign.Base.Types.PurchasedEnvelopesInformation where

import DocuSign.Base.Types.Common

data PurchasedEnvelopesInformation = PurchasedEnvelopesInformation
  { purchasedEnvelopesInformationAmount        :: Maybe Text
  , purchasedEnvelopesInformationAppName       :: Maybe Text
  , purchasedEnvelopesInformationCurrencyCode  :: Maybe Text
  , purchasedEnvelopesInformationPlatform      :: Maybe Text
  , purchasedEnvelopesInformationProductId     :: Maybe Text
  , purchasedEnvelopesInformationQuantity      :: Maybe Text
  , purchasedEnvelopesInformationReceiptData   :: Maybe Text
  , purchasedEnvelopesInformationStoreName     :: Maybe Text
  , purchasedEnvelopesInformationTransactionId :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PurchasedEnvelopesInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "purchasedEnvelopesInformation")
instance ToJSON PurchasedEnvelopesInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "purchasedEnvelopesInformation")

instance Default PurchasedEnvelopesInformation
