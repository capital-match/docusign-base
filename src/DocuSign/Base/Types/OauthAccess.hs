module DocuSign.Base.Types.OauthAccess where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue

data OauthAccess = OauthAccess
  { oauthAccessAccess'Underscoretoken  :: Maybe Text
  , oauthAccessData                    :: Maybe [NameValue]
  , oauthAccessExpires'Underscorein    :: Maybe Text
  , oauthAccessRefresh'Underscoretoken :: Maybe Text
  , oauthAccessScope                   :: Maybe Text
  , oauthAccessToken'Underscoretype    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON OauthAccess where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "oauthAccess")
instance ToJSON OauthAccess where
  toJSON = genericToJSON (removeFieldLabelPrefix "oauthAccess")

instance Default OauthAccess
