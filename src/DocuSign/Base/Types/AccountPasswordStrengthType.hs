module DocuSign.Base.Types.AccountPasswordStrengthType where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountPasswordStrengthTypeOption

data AccountPasswordStrengthType = AccountPasswordStrengthType
  { accountPasswordStrengthTypeOptions :: Maybe [AccountPasswordStrengthTypeOption]
  } deriving (Show, Eq, Generic)

instance FromJSON AccountPasswordStrengthType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountPasswordStrengthType")
instance ToJSON AccountPasswordStrengthType where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountPasswordStrengthType")

instance Default AccountPasswordStrengthType
