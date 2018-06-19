module DocuSign.Base.Types.EnvelopeTemplateDefinition where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.UserInfo

data EnvelopeTemplateDefinition = EnvelopeTemplateDefinition
  { envelopeTemplateDefinitionDescription     :: Maybe Text
  , envelopeTemplateDefinitionFolderId        :: Maybe Text
  , envelopeTemplateDefinitionFolderName      :: Maybe Text
  , envelopeTemplateDefinitionFolderUri       :: Maybe Text
  , envelopeTemplateDefinitionLastModified    :: Maybe Text
  , envelopeTemplateDefinitionLastModifiedBy  :: Maybe UserInfo
  , envelopeTemplateDefinitionName            :: Maybe Text
  , envelopeTemplateDefinitionNewPassword     :: Maybe Text
  , envelopeTemplateDefinitionOwner           :: Maybe UserInfo
  , envelopeTemplateDefinitionPageCount       :: Maybe Int
  , envelopeTemplateDefinitionParentFolderUri :: Maybe Text
  , envelopeTemplateDefinitionPassword        :: Maybe Text
  , envelopeTemplateDefinitionShared          :: Maybe Text
  , envelopeTemplateDefinitionTemplateId      :: Maybe Text
  , envelopeTemplateDefinitionUri             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeTemplateDefinition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeTemplateDefinition")
instance ToJSON EnvelopeTemplateDefinition where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeTemplateDefinition")

instance Default EnvelopeTemplateDefinition
