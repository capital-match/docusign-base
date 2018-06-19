module DocuSign.Base.Types.Document where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.MatchBox
import DocuSign.Base.Types.NameValue

data Document = Document
  { documentApplyAnchorTabs         :: Maybe Text
  , documentDisplay                 :: Maybe Text
  , documentDocumentBase64          :: Maybe Text
  , documentDocumentFields          :: Maybe [NameValue]
  , documentDocumentGroup           :: Maybe Text
  , documentDocumentId              :: Maybe Text
  , documentEncryptedWithKeyManager :: Maybe Text
  , documentFileExtension           :: Maybe Text
  , documentFileFormatHint          :: Maybe Text
  , documentIncludeInDownload       :: Maybe Text
  , documentMatchBoxes              :: Maybe [MatchBox]
  , documentName                    :: Maybe Text
  , documentOrder                   :: Maybe Text
  , documentPages                   :: Maybe Text
  , documentPassword                :: Maybe Text
  , documentRemoteUrl               :: Maybe Text
  , documentSignerMustAcknowledge   :: Maybe Text
  , documentTemplateLocked          :: Maybe Text
  , documentTemplateRequired        :: Maybe Text
  , documentTransformPdfFields      :: Maybe Text
  , documentUri                     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Document where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "document")
instance ToJSON Document where
  toJSON = genericToJSON (removeFieldLabelPrefix "document")

instance Default Document
