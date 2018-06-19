module DocuSign.Base.Types.AccountPasswordQuestionsRequired where

import DocuSign.Base.Types.Common

data AccountPasswordQuestionsRequired = AccountPasswordQuestionsRequired
  { accountPasswordQuestionsRequiredMaximumQuestions :: Maybe Text
  , accountPasswordQuestionsRequiredMinimumQuestions :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountPasswordQuestionsRequired where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountPasswordQuestionsRequired")
instance ToJSON AccountPasswordQuestionsRequired where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountPasswordQuestionsRequired")

instance Default AccountPasswordQuestionsRequired
