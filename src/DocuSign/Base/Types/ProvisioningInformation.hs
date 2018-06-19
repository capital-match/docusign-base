module DocuSign.Base.Types.ProvisioningInformation where

import DocuSign.Base.Types.Common

data ProvisioningInformation = ProvisioningInformation
  { provisioningInformationDefaultConnectionId        :: Maybe Text
  , provisioningInformationDefaultPlanId              :: Maybe Text
  , provisioningInformationDistributorCode            :: Maybe Text
  , provisioningInformationDistributorPassword        :: Maybe Text
  , provisioningInformationPasswordRuleText           :: Maybe Text
  , provisioningInformationPlanPromotionText          :: Maybe Text
  , provisioningInformationPurchaseOrderOrPromAllowed :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ProvisioningInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "provisioningInformation")
instance ToJSON ProvisioningInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "provisioningInformation")

instance Default ProvisioningInformation
