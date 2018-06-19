module DocuSign.Base.Types.AccountPasswordStrengthTypeOption where

import DocuSign.Base.Types.Common

data AccountPasswordStrengthTypeOption = AccountPasswordStrengthTypeOption
  { accountPasswordStrengthTypeOptionMinimumLength                          :: Maybe Text
  , accountPasswordStrengthTypeOptionName                                   :: Maybe Text
  , accountPasswordStrengthTypeOptionPasswordIncludeDigit                   :: Maybe Text
  , accountPasswordStrengthTypeOptionPasswordIncludeDigitOrSpecialCharacter :: Maybe Text
  , accountPasswordStrengthTypeOptionPasswordIncludeLowerCase               :: Maybe Text
  , accountPasswordStrengthTypeOptionPasswordIncludeSpecialCharacter        :: Maybe Text
  , accountPasswordStrengthTypeOptionPasswordIncludeUpperCase               :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountPasswordStrengthTypeOption where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountPasswordStrengthTypeOption")
instance ToJSON AccountPasswordStrengthTypeOption where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountPasswordStrengthTypeOption")

instance Default AccountPasswordStrengthTypeOption
