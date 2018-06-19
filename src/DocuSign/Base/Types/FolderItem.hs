module DocuSign.Base.Types.FolderItem where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.CustomFieldV2

data FolderItem = FolderItem
  { folderItemCompletedDateTime           :: Maybe Text
  , folderItemCreatedDateTime             :: Maybe Text
  , folderItemCustomFields                :: Maybe [CustomFieldV2]
  , folderItemDescription                 :: Maybe Text
  , folderItemEnvelopeId                  :: Maybe Text
  , folderItemEnvelopeUri                 :: Maybe Text
  , folderItemIs21CFRPart11               :: Maybe Text
  , folderItemIsSignatureProviderEnvelope :: Maybe Text
  , folderItemLastModified                :: Maybe Text
  , folderItemName                        :: Maybe Text
  , folderItemOwnerName                   :: Maybe Text
  , folderItemPageCount                   :: Maybe Int
  , folderItemPassword                    :: Maybe Text
  , folderItemSenderEmail                 :: Maybe Text
  , folderItemSenderName                  :: Maybe Text
  , folderItemSentDateTime                :: Maybe Text
  , folderItemShared                      :: Maybe Text
  , folderItemStatus                      :: Maybe Text
  , folderItemSubject                     :: Maybe Text
  , folderItemTemplateId                  :: Maybe Text
  , folderItemUri                         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON FolderItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "folderItem")
instance ToJSON FolderItem where
  toJSON = genericToJSON (removeFieldLabelPrefix "folderItem")

instance Default FolderItem
