module DocuSign.Base.Types.DateSigned where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data DateSigned = DateSigned
  { dateSignedAnchorCaseSensitive       :: Maybe Text
  , dateSignedAnchorHorizontalAlignment :: Maybe Text
  , dateSignedAnchorIgnoreIfNotPresent  :: Maybe Text
  , dateSignedAnchorMatchWholeWord      :: Maybe Text
  , dateSignedAnchorString              :: Maybe Text
  , dateSignedAnchorUnits               :: Maybe Text
  , dateSignedAnchorXOffset             :: Maybe Text
  , dateSignedAnchorYOffset             :: Maybe Text
  , dateSignedBold                      :: Maybe Text
  , dateSignedConditionalParentLabel    :: Maybe Text
  , dateSignedConditionalParentValue    :: Maybe Text
  , dateSignedCustomTabId               :: Maybe Text
  , dateSignedDocumentId                :: Maybe Text
  , dateSignedErrorDetails              :: Maybe ErrorDetails
  , dateSignedFont                      :: Maybe Text
  , dateSignedFontColor                 :: Maybe Text
  , dateSignedFontSize                  :: Maybe Text
  , dateSignedItalic                    :: Maybe Text
  , dateSignedMergeField                :: Maybe MergeField
  , dateSignedName                      :: Maybe Text
  , dateSignedPageNumber                :: Maybe Text
  , dateSignedRecipientId               :: Maybe Text
  , dateSignedStatus                    :: Maybe Text
  , dateSignedTabId                     :: Maybe Text
  , dateSignedTabLabel                  :: Maybe Text
  , dateSignedTabOrder                  :: Maybe Text
  , dateSignedTemplateLocked            :: Maybe Text
  , dateSignedTemplateRequired          :: Maybe Text
  , dateSignedUnderline                 :: Maybe Text
  , dateSignedValue                     :: Maybe Text
  , dateSignedXPosition                 :: Maybe Text
  , dateSignedYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON DateSigned where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "dateSigned")
instance ToJSON DateSigned where
  toJSON = genericToJSON (removeFieldLabelPrefix "dateSigned")

instance Default DateSigned
