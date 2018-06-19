module DocuSign.Base.Types.CustomFieldV2 where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data CustomFieldV2 = CustomFieldV2
  { customFieldV2ConfigurationType :: Maybe Text
  , customFieldV2ErrorDetails      :: Maybe ErrorDetails
  , customFieldV2FieldId           :: Maybe Text
  , customFieldV2Name              :: Maybe Text
  , customFieldV2Required          :: Maybe Text
  , customFieldV2Show              :: Maybe Text
  , customFieldV2Value             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CustomFieldV2 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "customFieldV2")
instance ToJSON CustomFieldV2 where
  toJSON = genericToJSON (removeFieldLabelPrefix "customFieldV2")

instance Default CustomFieldV2
