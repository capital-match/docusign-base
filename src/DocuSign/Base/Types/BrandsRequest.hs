module DocuSign.Base.Types.BrandsRequest where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BrandRequest

data BrandsRequest = BrandsRequest
  { brandsRequestBrands :: Maybe [BrandRequest]
  } deriving (Show, Eq, Generic)

instance FromJSON BrandsRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "brandsRequest")
instance ToJSON BrandsRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "brandsRequest")

instance Default BrandsRequest
