module DocuSign.Base.Types.AuthenticationStatus where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.EventResult

data AuthenticationStatus = AuthenticationStatus
  { authenticationStatusAccessCodeResult        :: Maybe EventResult
  , authenticationStatusAgeVerifyResult         :: Maybe EventResult
  , authenticationStatusAnySocialIDResult       :: Maybe EventResult
  , authenticationStatusFacebookResult          :: Maybe EventResult
  , authenticationStatusGoogleResult            :: Maybe EventResult
  , authenticationStatusIdLookupResult          :: Maybe EventResult
  , authenticationStatusIdQuestionsResult       :: Maybe EventResult
  , authenticationStatusLinkedinResult          :: Maybe EventResult
  , authenticationStatusLiveIDResult            :: Maybe EventResult
  , authenticationStatusOfacResult              :: Maybe EventResult
  , authenticationStatusOpenIDResult            :: Maybe EventResult
  , authenticationStatusPhoneAuthResult         :: Maybe EventResult
  , authenticationStatusSalesforceResult        :: Maybe EventResult
  , authenticationStatusSignatureProviderResult :: Maybe EventResult
  , authenticationStatusSmsAuthResult           :: Maybe EventResult
  , authenticationStatusSTANPinResult           :: Maybe EventResult
  , authenticationStatusTwitterResult           :: Maybe EventResult
  , authenticationStatusYahooResult             :: Maybe EventResult
  } deriving (Show, Eq, Generic)

instance FromJSON AuthenticationStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "authenticationStatus")
instance ToJSON AuthenticationStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix "authenticationStatus")

instance Default AuthenticationStatus
