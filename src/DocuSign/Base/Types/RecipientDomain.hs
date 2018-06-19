module DocuSign.Base.Types.RecipientDomain where

import DocuSign.Base.Types.Common

data RecipientDomain = RecipientDomain
  { recipientDomainActive            :: Maybe Text
  , recipientDomainDomainCode        :: Maybe Text
  , recipientDomainDomainName        :: Maybe Text
  , recipientDomainRecipientDomainId :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientDomain where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientDomain")
instance ToJSON RecipientDomain where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientDomain")

instance Default RecipientDomain
