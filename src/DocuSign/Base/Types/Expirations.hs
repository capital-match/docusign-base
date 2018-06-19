module DocuSign.Base.Types.Expirations where

import DocuSign.Base.Types.Common

data Expirations = Expirations
  { expirationsExpireAfter   :: Maybe Text
  , expirationsExpireEnabled :: Maybe Text
  , expirationsExpireWarn    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Expirations where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "expirations")
instance ToJSON Expirations where
  toJSON = genericToJSON (removeFieldLabelPrefix "expirations")

instance Default Expirations
