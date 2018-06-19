module DocuSign.Base.Types.Accounts where

import DocuSign.Base.Types.Common

data Accounts = Accounts
  { accountsAccountIdGuid                   :: Maybe Text
  , accountsAccountName                     :: Maybe Text
  , accountsAllowTransactionRooms           :: Maybe Text
  , accountsBillingPeriodDaysRemaining      :: Maybe Text
  , accountsBillingPeriodEndDate            :: Maybe Text
  , accountsBillingPeriodEnvelopesAllowed   :: Maybe Text
  , accountsBillingPeriodEnvelopesSent      :: Maybe Text
  , accountsBillingPeriodStartDate          :: Maybe Text
  , accountsBillingProfile                  :: Maybe Text
  , accountsCanCancelRenewal                :: Maybe Text
  , accountsCanUpgrade                      :: Maybe Text
  , accountsConnectPermission               :: Maybe Text
  , accountsCreatedDate                     :: Maybe Text
  , accountsCurrencyCode                    :: Maybe Text
  , accountsCurrentPlanId                   :: Maybe Text
  , accountsDistributorCode                 :: Maybe Text
  , accountsDocuSignLandingUrl              :: Maybe Text
  , accountsEnvelopeSendingBlocked          :: Maybe Text
  , accountsEnvelopeUnitPrice               :: Maybe Text
  , accountsForgottenPasswordQuestionsCount :: Maybe Text
  , accountsIsDowngrade                     :: Maybe Text
  , accountsPaymentMethod                   :: Maybe Text
  , accountsPlanClassification              :: Maybe Text
  , accountsPlanEndDate                     :: Maybe Text
  , accountsPlanName                        :: Maybe Text
  , accountsPlanStartDate                   :: Maybe Text
  , accountsSeatsAllowed                    :: Maybe Text
  , accountsSeatsInUse                      :: Maybe Text
  , accountsStatus21CFRPart11               :: Maybe Text
  , accountsSuspensionDate                  :: Maybe Text
  , accountsSuspensionStatus                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Accounts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accounts")
instance ToJSON Accounts where
  toJSON = genericToJSON (removeFieldLabelPrefix "accounts")

instance Default Accounts
