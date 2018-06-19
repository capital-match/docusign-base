module DocuSign.Base.Types.EMortgageTransactions where

import DocuSign.Base.Types.Common

data EMortgageTransactions = EMortgageTransactions
  { eMortgageTransactionsDocumentData        :: Maybe Text
  , eMortgageTransactionsDptName             :: Maybe Text
  , eMortgageTransactionsTransactionName     :: Maybe Text
  , eMortgageTransactionsTransactionTypeName :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EMortgageTransactions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "eMortgageTransactions")
instance ToJSON EMortgageTransactions where
  toJSON = genericToJSON (removeFieldLabelPrefix "eMortgageTransactions")

instance Default EMortgageTransactions
