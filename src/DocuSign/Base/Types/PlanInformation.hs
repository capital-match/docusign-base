module DocuSign.Base.Types.PlanInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AddOn
import DocuSign.Base.Types.FeatureSet
import DocuSign.Base.Types.RecipientDomain

data PlanInformation = PlanInformation
  { planInformationAddOns                :: Maybe [AddOn]
  , planInformationCurrencyCode          :: Maybe Text
  , planInformationFreeTrialDaysOverride :: Maybe Text
  , planInformationPlanFeatureSets       :: Maybe [FeatureSet]
  , planInformationPlanId                :: Maybe Text
  , planInformationRecipientDomains      :: Maybe [RecipientDomain]
  } deriving (Show, Eq, Generic)

instance FromJSON PlanInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "planInformation")
instance ToJSON PlanInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "planInformation")

instance Default PlanInformation
