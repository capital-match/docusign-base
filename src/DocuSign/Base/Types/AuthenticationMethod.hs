module DocuSign.Base.Types.AuthenticationMethod where

import DocuSign.Base.Types.Common

data AuthenticationMethod = AuthenticationMethod
  { authenticationMethodAuthenticationType :: Maybe Text
  , authenticationMethodLastProvider       :: Maybe Text
  , authenticationMethodLastTimestamp      :: Maybe Text
  , authenticationMethodTotalCount         :: Maybe Int
  } deriving (Show, Eq, Generic)

instance FromJSON AuthenticationMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "authenticationMethod")
instance ToJSON AuthenticationMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix "authenticationMethod")

instance Default AuthenticationMethod
