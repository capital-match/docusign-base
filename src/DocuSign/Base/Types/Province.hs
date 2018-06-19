module DocuSign.Base.Types.Province where

import DocuSign.Base.Types.Common

data Province = Province
  { provinceIsoCode :: Maybe Text
  , provinceName    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Province where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "province")
instance ToJSON Province where
  toJSON = genericToJSON (removeFieldLabelPrefix "province")

instance Default Province
