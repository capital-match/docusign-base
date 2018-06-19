module DocuSign.Base.Types.NewAccountDefinition where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountAddress
import DocuSign.Base.Types.CreditCardInformation
import DocuSign.Base.Types.NameValue
import DocuSign.Base.Types.PaymentProcessorInformation
import DocuSign.Base.Types.PlanInformation
import DocuSign.Base.Types.ReferralInformation
import DocuSign.Base.Types.Users
import DocuSign.Base.Types.UserSocialAccountLogins

data NewAccountDefinition = NewAccountDefinition
  { newAccountDefinitionAccountName                 :: Maybe Text
  , newAccountDefinitionAccountSettings             :: Maybe [NameValue]
  , newAccountDefinitionAddressInformation          :: Maybe AccountAddress
  , newAccountDefinitionCreditCardInformation       :: Maybe CreditCardInformation
  , newAccountDefinitionDistributorCode             :: Maybe Text
  , newAccountDefinitionDistributorPassword         :: Maybe Text
  , newAccountDefinitionInitialUser                 :: Maybe Users
  , newAccountDefinitionPaymentProcessorInformation :: Maybe PaymentProcessorInformation
  , newAccountDefinitionPlanInformation             :: Maybe PlanInformation
  , newAccountDefinitionReferralInformation         :: Maybe ReferralInformation
  , newAccountDefinitionSocialAccountInformation    :: Maybe UserSocialAccountLogins
  } deriving (Show, Eq, Generic)

instance FromJSON NewAccountDefinition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "newAccountDefinition")
instance ToJSON NewAccountDefinition where
  toJSON = genericToJSON (removeFieldLabelPrefix "newAccountDefinition")

instance Default NewAccountDefinition
