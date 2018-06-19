module DocuSign.Base.Types.SignatureType where

import DocuSign.Base.Types.Common

data SignatureType = SignatureType
  { signatureTypeIsDefault :: Maybe Text
  , signatureTypeType      :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON SignatureType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "signatureType")
instance ToJSON SignatureType where
  toJSON = genericToJSON (removeFieldLabelPrefix "signatureType")

instance Default SignatureType
