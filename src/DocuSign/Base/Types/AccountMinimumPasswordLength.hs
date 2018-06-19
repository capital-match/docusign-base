module DocuSign.Base.Types.AccountMinimumPasswordLength where

import DocuSign.Base.Types.Common

data AccountMinimumPasswordLength = AccountMinimumPasswordLength
  { accountMinimumPasswordLengthMaximumLength :: Maybe Text
  , accountMinimumPasswordLengthMinimumLength :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountMinimumPasswordLength where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountMinimumPasswordLength")
instance ToJSON AccountMinimumPasswordLength where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountMinimumPasswordLength")

instance Default AccountMinimumPasswordLength
