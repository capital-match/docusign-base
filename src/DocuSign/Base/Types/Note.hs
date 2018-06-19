module DocuSign.Base.Types.Note where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data Note = Note
  { noteAnchorCaseSensitive       :: Maybe Text
  , noteAnchorHorizontalAlignment :: Maybe Text
  , noteAnchorIgnoreIfNotPresent  :: Maybe Text
  , noteAnchorMatchWholeWord      :: Maybe Text
  , noteAnchorString              :: Maybe Text
  , noteAnchorUnits               :: Maybe Text
  , noteAnchorXOffset             :: Maybe Text
  , noteAnchorYOffset             :: Maybe Text
  , noteBold                      :: Maybe Text
  , noteConditionalParentLabel    :: Maybe Text
  , noteConditionalParentValue    :: Maybe Text
  , noteCustomTabId               :: Maybe Text
  , noteDocumentId                :: Maybe Text
  , noteErrorDetails              :: Maybe ErrorDetails
  , noteFont                      :: Maybe Text
  , noteFontColor                 :: Maybe Text
  , noteFontSize                  :: Maybe Text
  , noteHeight                    :: Maybe Int
  , noteItalic                    :: Maybe Text
  , noteMergeField                :: Maybe MergeField
  , noteName                      :: Maybe Text
  , notePageNumber                :: Maybe Text
  , noteRecipientId               :: Maybe Text
  , noteShared                    :: Maybe Text
  , noteStatus                    :: Maybe Text
  , noteTabId                     :: Maybe Text
  , noteTabLabel                  :: Maybe Text
  , noteTabOrder                  :: Maybe Text
  , noteTemplateLocked            :: Maybe Text
  , noteTemplateRequired          :: Maybe Text
  , noteUnderline                 :: Maybe Text
  , noteValue                     :: Maybe Text
  , noteWidth                     :: Maybe Int
  , noteXPosition                 :: Maybe Text
  , noteYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Note where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "note")
instance ToJSON Note where
  toJSON = genericToJSON (removeFieldLabelPrefix "note")

instance Default Note
