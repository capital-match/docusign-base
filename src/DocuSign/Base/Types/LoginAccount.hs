module DocuSign.Base.Types.LoginAccount where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue

data LoginAccount = LoginAccount
  { loginAccountAccountId            :: Maybe Text
  , loginAccountAccountIdGuid        :: Maybe Text
  , loginAccountBaseUrl              :: Maybe Text
  , loginAccountEmail                :: Maybe Text
  , loginAccountIsDefault            :: Maybe Text
  , loginAccountLoginAccountSettings :: Maybe [NameValue]
  , loginAccountLoginUserSettings    :: Maybe [NameValue]
  , loginAccountName                 :: Maybe Text
  , loginAccountSiteDescription      :: Maybe Text
  , loginAccountUserId               :: Maybe Text
  , loginAccountUserName             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON LoginAccount where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "loginAccount")
instance ToJSON LoginAccount where
  toJSON = genericToJSON (removeFieldLabelPrefix "loginAccount")

instance Default LoginAccount
