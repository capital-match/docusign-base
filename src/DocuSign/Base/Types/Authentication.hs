module DocuSign.Base.Types.Authentication where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.LoginAccount

data Authentication = Authentication
  { authenticationApiPassword   :: Maybe Text
  , authenticationLoginAccounts :: Maybe [LoginAccount]
  } deriving (Show, Eq, Generic)

instance FromJSON Authentication where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "authentication")
instance ToJSON Authentication where
  toJSON = genericToJSON (removeFieldLabelPrefix "authentication")

instance Default Authentication
