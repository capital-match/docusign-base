module DocuSign.Base.Types.RecipientViewRequest where

import DocuSign.Base.Types.Common

data RecipientViewRequest = RecipientViewRequest
  { recipientViewRequestAssertionId               :: Maybe Text
  , recipientViewRequestAuthenticationInstant     :: Maybe Text
  , recipientViewRequestAuthenticationMethod      :: Maybe Text
  , recipientViewRequestClientUserId              :: Maybe Text
  , recipientViewRequestEmail                     :: Maybe Text
  , recipientViewRequestPingFrequency             :: Maybe Text
  , recipientViewRequestPingUrl                   :: Maybe Text
  , recipientViewRequestRecipientId               :: Maybe Text
  , recipientViewRequestReturnUrl                 :: Maybe Text
  , recipientViewRequestSecurityDomain            :: Maybe Text
  , recipientViewRequestUserId                    :: Maybe Text
  , recipientViewRequestUserName                  :: Maybe Text
  , recipientViewRequestXFrameOptions             :: Maybe Text
  , recipientViewRequestXFrameOptionsAllowFromUrl :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientViewRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientViewRequest")
instance ToJSON RecipientViewRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientViewRequest")

instance Default RecipientViewRequest
