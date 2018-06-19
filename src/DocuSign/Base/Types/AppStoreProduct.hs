module DocuSign.Base.Types.AppStoreProduct where

import DocuSign.Base.Types.Common

data AppStoreProduct = AppStoreProduct
  { appStoreProductMarketPlace :: Maybe Text
  , appStoreProductProductId   :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AppStoreProduct where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "appStoreProduct")
instance ToJSON AppStoreProduct where
  toJSON = genericToJSON (removeFieldLabelPrefix "appStoreProduct")

instance Default AppStoreProduct
