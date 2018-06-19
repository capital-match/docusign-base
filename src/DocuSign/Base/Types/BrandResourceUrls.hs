module DocuSign.Base.Types.BrandResourceUrls where

import DocuSign.Base.Types.Common

data BrandResourceUrls = BrandResourceUrls
  { brandResourceUrlsEmail          :: Maybe Text
  , brandResourceUrlsSending        :: Maybe Text
  , brandResourceUrlsSigning        :: Maybe Text
  , brandResourceUrlsSigningCaptive :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BrandResourceUrls where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "brandResourceUrls")
instance ToJSON BrandResourceUrls where
  toJSON = genericToJSON (removeFieldLabelPrefix "brandResourceUrls")

instance Default BrandResourceUrls
