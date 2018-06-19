module DocuSign.Base.Types.BulkRecipientsUpdateResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Signer

data BulkRecipientsUpdateResponse = BulkRecipientsUpdateResponse
  { bulkRecipientsUpdateResponseSigner :: Maybe Signer
  } deriving (Show, Eq, Generic)

instance FromJSON BulkRecipientsUpdateResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "bulkRecipientsUpdateResponse")
instance ToJSON BulkRecipientsUpdateResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "bulkRecipientsUpdateResponse")

instance Default BulkRecipientsUpdateResponse
