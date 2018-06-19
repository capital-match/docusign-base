module DocuSign.Base.Types.BrandLogos where

import DocuSign.Base.Types.Common

data BrandLogos = BrandLogos
  { brandLogosEmail     :: Maybe Text
  , brandLogosPrimary   :: Maybe Text
  , brandLogosSecondary :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BrandLogos where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "brandLogos")
instance ToJSON BrandLogos where
  toJSON = genericToJSON (removeFieldLabelPrefix "brandLogos")

instance Default BrandLogos
