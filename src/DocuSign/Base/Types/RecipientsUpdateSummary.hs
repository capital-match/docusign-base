module DocuSign.Base.Types.RecipientsUpdateSummary where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.RecipientUpdateResponse

data RecipientsUpdateSummary = RecipientsUpdateSummary
  { recipientsUpdateSummaryRecipientUpdateResults :: Maybe [RecipientUpdateResponse]
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientsUpdateSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientsUpdateSummary")
instance ToJSON RecipientsUpdateSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientsUpdateSummary")

instance Default RecipientsUpdateSummary
