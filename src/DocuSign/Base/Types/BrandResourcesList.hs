module DocuSign.Base.Types.BrandResourcesList where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BrandResources

data BrandResourcesList = BrandResourcesList
  { brandResourcesListResourcesContentTypes :: Maybe [BrandResources]
  } deriving (Show, Eq, Generic)

instance FromJSON BrandResourcesList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "brandResourcesList")
instance ToJSON BrandResourcesList where
  toJSON = genericToJSON (removeFieldLabelPrefix "brandResourcesList")

instance Default BrandResourcesList
