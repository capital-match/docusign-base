module DocuSign.Base.Types.RadioGroup where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Radio

data RadioGroup = RadioGroup
  { radioGroupConditionalParentLabel       :: Maybe Text
  , radioGroupConditionalParentValue       :: Maybe Text
  , radioGroupDocumentId                   :: Maybe Text
  , radioGroupGroupName                    :: Maybe Text
  , radioGroupRadios                       :: Maybe [Radio]
  , radioGroupRecipientId                  :: Maybe Text
  , radioGroupRequireAll                   :: Maybe Text
  , radioGroupRequireInitialOnSharedChange :: Maybe Text
  , radioGroupShared                       :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RadioGroup where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "radioGroup")
instance ToJSON RadioGroup where
  toJSON = genericToJSON (removeFieldLabelPrefix "radioGroup")

instance Default RadioGroup
