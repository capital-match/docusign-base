module DocuSign.Base.Types.NewUsersSummary where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NewUser

data NewUsersSummary = NewUsersSummary
  { newUsersSummaryNewUsers :: Maybe [NewUser]
  } deriving (Show, Eq, Generic)

instance FromJSON NewUsersSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "newUsersSummary")
instance ToJSON NewUsersSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix "newUsersSummary")

instance Default NewUsersSummary
