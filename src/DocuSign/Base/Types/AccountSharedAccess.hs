module DocuSign.Base.Types.AccountSharedAccess where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MemberSharedItems

data AccountSharedAccess = AccountSharedAccess
  { accountSharedAccessAccountId     :: Maybe Text
  , accountSharedAccessEndPosition   :: Maybe Text
  , accountSharedAccessErrorDetails  :: Maybe ErrorDetails
  , accountSharedAccessNextUri       :: Maybe Text
  , accountSharedAccessPreviousUri   :: Maybe Text
  , accountSharedAccessResultSetSize :: Maybe Text
  , accountSharedAccessSharedAccess  :: Maybe [MemberSharedItems]
  , accountSharedAccessStartPosition :: Maybe Text
  , accountSharedAccessTotalSetSize  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountSharedAccess where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountSharedAccess")
instance ToJSON AccountSharedAccess where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountSharedAccess")

instance Default AccountSharedAccess
