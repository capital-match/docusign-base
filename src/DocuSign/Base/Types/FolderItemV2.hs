module DocuSign.Base.Types.FolderItemV2 where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.EnvelopeRecipients

data FolderItemV2 = FolderItemV2
  { folderItemV2CompletedDateTime           :: Maybe Text
  , folderItemV2CreatedDateTime             :: Maybe Text
  , folderItemV2EnvelopeId                  :: Maybe Text
  , folderItemV2EnvelopeUri                 :: Maybe Text
  , folderItemV2ExpireDateTime              :: Maybe Text
  , folderItemV2FolderId                    :: Maybe Text
  , folderItemV2FolderUri                   :: Maybe Text
  , folderItemV2Is21CFRPart11               :: Maybe Text
  , folderItemV2IsSignatureProviderEnvelope :: Maybe Text
  , folderItemV2LastModifiedDateTime        :: Maybe Text
  , folderItemV2OwnerName                   :: Maybe Text
  , folderItemV2Recipients                  :: Maybe EnvelopeRecipients
  , folderItemV2RecipientsUri               :: Maybe Text
  , folderItemV2SenderCompany               :: Maybe Text
  , folderItemV2SenderEmail                 :: Maybe Text
  , folderItemV2SenderName                  :: Maybe Text
  , folderItemV2SenderUserId                :: Maybe Text
  , folderItemV2SentDateTime                :: Maybe Text
  , folderItemV2Status                      :: Maybe Text
  , folderItemV2Subject                     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON FolderItemV2 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "folderItemV2")
instance ToJSON FolderItemV2 where
  toJSON = genericToJSON (removeFieldLabelPrefix "folderItemV2")

instance Default FolderItemV2
