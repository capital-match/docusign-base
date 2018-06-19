module DocuSign.Base.Types.EnvelopeId where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data EnvelopeId = EnvelopeId
  { envelopeIdAnchorCaseSensitive       :: Maybe Text
  , envelopeIdAnchorHorizontalAlignment :: Maybe Text
  , envelopeIdAnchorIgnoreIfNotPresent  :: Maybe Text
  , envelopeIdAnchorMatchWholeWord      :: Maybe Text
  , envelopeIdAnchorString              :: Maybe Text
  , envelopeIdAnchorUnits               :: Maybe Text
  , envelopeIdAnchorXOffset             :: Maybe Text
  , envelopeIdAnchorYOffset             :: Maybe Text
  , envelopeIdBold                      :: Maybe Text
  , envelopeIdConditionalParentLabel    :: Maybe Text
  , envelopeIdConditionalParentValue    :: Maybe Text
  , envelopeIdCustomTabId               :: Maybe Text
  , envelopeIdDocumentId                :: Maybe Text
  , envelopeIdErrorDetails              :: Maybe ErrorDetails
  , envelopeIdFont                      :: Maybe Text
  , envelopeIdFontColor                 :: Maybe Text
  , envelopeIdFontSize                  :: Maybe Text
  , envelopeIdItalic                    :: Maybe Text
  , envelopeIdMergeField                :: Maybe MergeField
  , envelopeIdName                      :: Maybe Text
  , envelopeIdPageNumber                :: Maybe Text
  , envelopeIdRecipientId               :: Maybe Text
  , envelopeIdStatus                    :: Maybe Text
  , envelopeIdTabId                     :: Maybe Text
  , envelopeIdTabLabel                  :: Maybe Text
  , envelopeIdTabOrder                  :: Maybe Text
  , envelopeIdTemplateLocked            :: Maybe Text
  , envelopeIdTemplateRequired          :: Maybe Text
  , envelopeIdUnderline                 :: Maybe Text
  , envelopeIdXPosition                 :: Maybe Text
  , envelopeIdYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeId where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeId")
instance ToJSON EnvelopeId where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeId")

instance Default EnvelopeId
