module DocuSign.Base.Types.BrandLink where

import DocuSign.Base.Types.Common

data BrandLink = BrandLink
  { brandLinkLinkText    :: Maybe Text
  , brandLinkLinkType    :: Maybe Text
  , brandLinkShowLink    :: Maybe Text
  , brandLinkUrlOrMailTo :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BrandLink where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "brandLink")
instance ToJSON BrandLink where
  toJSON = genericToJSON (removeFieldLabelPrefix "brandLink")

instance Default BrandLink
