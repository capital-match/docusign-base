module DocuSign.Base.Types.BrandRequest where

import DocuSign.Base.Types.Common

data BrandRequest = BrandRequest
  { brandRequestBrandId :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BrandRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "brandRequest")
instance ToJSON BrandRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "brandRequest")

instance Default BrandRequest
