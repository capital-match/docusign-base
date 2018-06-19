module DocuSign.Base.Types.GroupBrands where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Brand

data GroupBrands = GroupBrands
  { groupBrandsBrands                  :: Maybe [Brand]
  , groupBrandsRecipientBrandIdDefault :: Maybe Text
  , groupBrandsSenderBrandIdDefault    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON GroupBrands where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "groupBrands")
instance ToJSON GroupBrands where
  toJSON = genericToJSON (removeFieldLabelPrefix "groupBrands")

instance Default GroupBrands
