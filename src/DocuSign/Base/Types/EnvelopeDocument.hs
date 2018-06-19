module DocuSign.Base.Types.EnvelopeDocument where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.NameValue
import DocuSign.Base.Types.SignatureType

data EnvelopeDocument = EnvelopeDocument
  { envelopeDocumentAttachmentTabId        :: Maybe Text
  , envelopeDocumentAvailableDocumentTypes :: Maybe [SignatureType]
  , envelopeDocumentContainsPdfFormFields  :: Maybe Text
  , envelopeDocumentDisplay                :: Maybe Text
  , envelopeDocumentDocumentFields         :: Maybe [NameValue]
  , envelopeDocumentDocumentGroup          :: Maybe Text
  , envelopeDocumentDocumentId             :: Maybe Text
  , envelopeDocumentErrorDetails           :: Maybe ErrorDetails
  , envelopeDocumentIncludeInDownload      :: Maybe Text
  , envelopeDocumentName                   :: Maybe Text
  , envelopeDocumentOrder                  :: Maybe Text
  , envelopeDocumentPages                  :: Maybe Text
  , envelopeDocumentSignerMustAcknowledge  :: Maybe Text
  , envelopeDocumentType                   :: Maybe Text
  , envelopeDocumentUri                    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeDocument where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeDocument")
instance ToJSON EnvelopeDocument where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeDocument")

instance Default EnvelopeDocument
