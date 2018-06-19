module DocuSign.Base.Types.AppStoreReceipt where

import DocuSign.Base.Types.Common

data AppStoreReceipt = AppStoreReceipt
  { appStoreReceiptProductId   :: Maybe Text
  , appStoreReceiptReceiptData :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AppStoreReceipt where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "appStoreReceipt")
instance ToJSON AppStoreReceipt where
  toJSON = genericToJSON (removeFieldLabelPrefix "appStoreReceipt")

instance Default AppStoreReceipt
