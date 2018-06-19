module DocuSign.Base.Types.DocumentVisibility where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data DocumentVisibility = DocumentVisibility
  { documentVisibilityDocumentId   :: Maybe Text
  , documentVisibilityErrorDetails :: Maybe ErrorDetails
  , documentVisibilityRecipientId  :: Maybe Text
  , documentVisibilityRights       :: Maybe Text
  , documentVisibilityVisible      :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON DocumentVisibility where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "documentVisibility")
instance ToJSON DocumentVisibility where
  toJSON = genericToJSON (removeFieldLabelPrefix "documentVisibility")

instance Default DocumentVisibility
