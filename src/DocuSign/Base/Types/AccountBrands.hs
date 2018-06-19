module DocuSign.Base.Types.AccountBrands where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Brand

data AccountBrands = AccountBrands
  { accountBrandsBrands                  :: Maybe [Brand]
  , accountBrandsRecipientBrandIdDefault :: Maybe Text
  , accountBrandsSenderBrandIdDefault    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountBrands where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountBrands")
instance ToJSON AccountBrands where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountBrands")

instance Default AccountBrands
