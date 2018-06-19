module DocuSign.Base.Types.SocialAuthentication where

import DocuSign.Base.Types.Common

data SocialAuthentication = SocialAuthentication
  { socialAuthenticationAuthentication :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON SocialAuthentication where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "socialAuthentication")
instance ToJSON SocialAuthentication where
  toJSON = genericToJSON (removeFieldLabelPrefix "socialAuthentication")

instance Default SocialAuthentication
