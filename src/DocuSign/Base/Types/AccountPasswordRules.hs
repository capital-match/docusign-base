module DocuSign.Base.Types.AccountPasswordRules where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountMinimumPasswordLength
import DocuSign.Base.Types.AccountPasswordExpirePasswordDays
import DocuSign.Base.Types.AccountPasswordLockoutDurationMinutes
import DocuSign.Base.Types.AccountPasswordLockoutDurationType
import DocuSign.Base.Types.AccountPasswordMinimumPasswordAgeDays
import DocuSign.Base.Types.AccountPasswordQuestionsRequired
import DocuSign.Base.Types.AccountPasswordStrengthType

data AccountPasswordRules = AccountPasswordRules
  { accountPasswordRulesExpirePassword                         :: Maybe Text
  , accountPasswordRulesExpirePasswordDays                     :: Maybe Text
  , accountPasswordRulesExpirePasswordDaysMetadata             :: Maybe AccountPasswordExpirePasswordDays
  , accountPasswordRulesLockoutDurationMinutes                 :: Maybe Text
  , accountPasswordRulesLockoutDurationMinutesMetadata         :: Maybe AccountPasswordLockoutDurationMinutes
  , accountPasswordRulesLockoutDurationType                    :: Maybe Text
  , accountPasswordRulesLockoutDurationTypeMetadata            :: Maybe AccountPasswordLockoutDurationType
  , accountPasswordRulesMinimumPasswordAgeDays                 :: Maybe Text
  , accountPasswordRulesMinimumPasswordAgeDaysMetadata         :: Maybe AccountPasswordMinimumPasswordAgeDays
  , accountPasswordRulesMinimumPasswordLength                  :: Maybe Text
  , accountPasswordRulesMinimumPasswordLengthMetadata          :: Maybe AccountMinimumPasswordLength
  , accountPasswordRulesPasswordIncludeDigit                   :: Maybe Text
  , accountPasswordRulesPasswordIncludeDigitOrSpecialCharacter :: Maybe Text
  , accountPasswordRulesPasswordIncludeLowerCase               :: Maybe Text
  , accountPasswordRulesPasswordIncludeSpecialCharacter        :: Maybe Text
  , accountPasswordRulesPasswordIncludeUpperCase               :: Maybe Text
  , accountPasswordRulesPasswordStrengthType                   :: Maybe Text
  , accountPasswordRulesPasswordStrengthTypeMetadata           :: Maybe AccountPasswordStrengthType
  , accountPasswordRulesQuestionsRequired                      :: Maybe Text
  , accountPasswordRulesQuestionsRequiredMetadata              :: Maybe AccountPasswordQuestionsRequired
  } deriving (Show, Eq, Generic)

instance FromJSON AccountPasswordRules where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountPasswordRules")
instance ToJSON AccountPasswordRules where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountPasswordRules")

instance Default AccountPasswordRules
