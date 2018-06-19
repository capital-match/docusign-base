module DocuSign.Base.Types.SignHere where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField
import DocuSign.Base.Types.PropertyMetadata

data SignHere = SignHere
  { signHereAnchorCaseSensitive       :: Maybe Text
  , signHereAnchorHorizontalAlignment :: Maybe Text
  , signHereAnchorIgnoreIfNotPresent  :: Maybe Text
  , signHereAnchorMatchWholeWord      :: Maybe Text
  , signHereAnchorString              :: Maybe Text
  , signHereAnchorUnits               :: Maybe Text
  , signHereAnchorXOffset             :: Maybe Text
  , signHereAnchorYOffset             :: Maybe Text
  , signHereConditionalParentLabel    :: Maybe Text
  , signHereConditionalParentValue    :: Maybe Text
  , signHereCustomTabId               :: Maybe Text
  , signHereDocumentId                :: Maybe Text
  , signHereErrorDetails              :: Maybe ErrorDetails
  , signHereMergeField                :: Maybe MergeField
  , signHereName                      :: Maybe Text
  , signHereOptional                  :: Maybe Text
  , signHerePageNumber                :: Maybe Text
  , signHereRecipientId               :: Maybe Text
  , signHereScaleValue                :: Maybe Double
  , signHereStampType                 :: Maybe Text
  , signHereStampTypeMetadata         :: Maybe PropertyMetadata
  , signHereStatus                    :: Maybe Text
  , signHereTabId                     :: Maybe Text
  , signHereTabLabel                  :: Maybe Text
  , signHereTabOrder                  :: Maybe Text
  , signHereTemplateLocked            :: Maybe Text
  , signHereTemplateRequired          :: Maybe Text
  , signHereXPosition                 :: Maybe Text
  , signHereYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON SignHere where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "signHere")
instance ToJSON SignHere where
  toJSON = genericToJSON (removeFieldLabelPrefix "signHere")

instance Default SignHere
