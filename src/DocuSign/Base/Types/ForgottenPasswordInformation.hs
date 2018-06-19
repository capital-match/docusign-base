module DocuSign.Base.Types.ForgottenPasswordInformation where

import DocuSign.Base.Types.Common

data ForgottenPasswordInformation = ForgottenPasswordInformation
  { forgottenPasswordInformationForgottenPasswordAnswer1   :: Maybe Text
  , forgottenPasswordInformationForgottenPasswordAnswer2   :: Maybe Text
  , forgottenPasswordInformationForgottenPasswordAnswer3   :: Maybe Text
  , forgottenPasswordInformationForgottenPasswordAnswer4   :: Maybe Text
  , forgottenPasswordInformationForgottenPasswordQuestion1 :: Maybe Text
  , forgottenPasswordInformationForgottenPasswordQuestion2 :: Maybe Text
  , forgottenPasswordInformationForgottenPasswordQuestion3 :: Maybe Text
  , forgottenPasswordInformationForgottenPasswordQuestion4 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ForgottenPasswordInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "forgottenPasswordInformation")
instance ToJSON ForgottenPasswordInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "forgottenPasswordInformation")

instance Default ForgottenPasswordInformation
