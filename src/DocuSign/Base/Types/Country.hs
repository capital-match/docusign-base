module DocuSign.Base.Types.Country where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Province

data Country = Country
  { countryIsoCode           :: Maybe Text
  , countryName              :: Maybe Text
  , countryProvinces         :: Maybe [Province]
  , countryProvinceValidated :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Country where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "country")
instance ToJSON Country where
  toJSON = genericToJSON (removeFieldLabelPrefix "country")

instance Default Country
