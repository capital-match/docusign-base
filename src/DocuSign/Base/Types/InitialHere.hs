module DocuSign.Base.Types.InitialHere where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data InitialHere = InitialHere
  { initialHereAnchorCaseSensitive       :: Maybe Text
  , initialHereAnchorHorizontalAlignment :: Maybe Text
  , initialHereAnchorIgnoreIfNotPresent  :: Maybe Text
  , initialHereAnchorMatchWholeWord      :: Maybe Text
  , initialHereAnchorString              :: Maybe Text
  , initialHereAnchorUnits               :: Maybe Text
  , initialHereAnchorXOffset             :: Maybe Text
  , initialHereAnchorYOffset             :: Maybe Text
  , initialHereConditionalParentLabel    :: Maybe Text
  , initialHereConditionalParentValue    :: Maybe Text
  , initialHereCustomTabId               :: Maybe Text
  , initialHereDocumentId                :: Maybe Text
  , initialHereErrorDetails              :: Maybe ErrorDetails
  , initialHereMergeField                :: Maybe MergeField
  , initialHereName                      :: Maybe Text
  , initialHereOptional                  :: Maybe Text
  , initialHerePageNumber                :: Maybe Text
  , initialHereRecipientId               :: Maybe Text
  , initialHereScaleValue                :: Maybe Double
  , initialHereStatus                    :: Maybe Text
  , initialHereTabId                     :: Maybe Text
  , initialHereTabLabel                  :: Maybe Text
  , initialHereTabOrder                  :: Maybe Text
  , initialHereTemplateLocked            :: Maybe Text
  , initialHereTemplateRequired          :: Maybe Text
  , initialHereXPosition                 :: Maybe Text
  , initialHereYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON InitialHere where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "initialHere")
instance ToJSON InitialHere where
  toJSON = genericToJSON (removeFieldLabelPrefix "initialHere")

instance Default InitialHere
