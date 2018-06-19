module DocuSign.Base.Types.UserPasswordInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ForgottenPasswordInformation

data UserPasswordInformation = UserPasswordInformation
  { userPasswordInformationCurrentPassword       :: Maybe Text
  , userPasswordInformationEmail                 :: Maybe Text
  , userPasswordInformationForgottenPasswordInfo :: Maybe ForgottenPasswordInformation
  , userPasswordInformationNewPassword           :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON UserPasswordInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userPasswordInformation")
instance ToJSON UserPasswordInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "userPasswordInformation")

instance Default UserPasswordInformation
