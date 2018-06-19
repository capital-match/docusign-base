module DocuSign.Base.Types.ReferralInformation where

import DocuSign.Base.Types.Common

data ReferralInformation = ReferralInformation
  { referralInformationAdvertisementId               :: Maybe Text
  , referralInformationEnableSupport                 :: Maybe Text
  , referralInformationExternalOrgId                 :: Maybe Text
  , referralInformationGroupMemberId                 :: Maybe Text
  , referralInformationIdType                        :: Maybe Text
  , referralInformationIncludedSeats                 :: Maybe Text
  , referralInformationIndustry                      :: Maybe Text
  , referralInformationPlanStartMonth                :: Maybe Text
  , referralInformationPromoCode                     :: Maybe Text
  , referralInformationPublisherId                   :: Maybe Text
  , referralInformationReferralCode                  :: Maybe Text
  , referralInformationReferrerName                  :: Maybe Text
  , referralInformationSaleDiscountAmount            :: Maybe Text
  , referralInformationSaleDiscountFixedAmount       :: Maybe Text
  , referralInformationSaleDiscountPercent           :: Maybe Text
  , referralInformationSaleDiscountPeriods           :: Maybe Text
  , referralInformationSaleDiscountSeatPriceOverride :: Maybe Text
  , referralInformationShopperId                     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ReferralInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "referralInformation")
instance ToJSON ReferralInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "referralInformation")

instance Default ReferralInformation
