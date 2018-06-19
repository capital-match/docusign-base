module DocuSign.Base.Types.PostTransactionsResponse where

import DocuSign.Base.Types.Common

data PostTransactionsResponse = PostTransactionsResponse
  { postTransactionsResponseDocumentData   :: Maybe Text
  , postTransactionsResponseTransactionSid :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PostTransactionsResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "postTransactionsResponse")
instance ToJSON PostTransactionsResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "postTransactionsResponse")

instance Default PostTransactionsResponse
