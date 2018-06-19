module DocuSign.Base.Types.CompositeTemplate where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Document
import DocuSign.Base.Types.InlineTemplate
import DocuSign.Base.Types.ServerTemplate

data CompositeTemplate = CompositeTemplate
  { compositeTemplateCompositeTemplateId         :: Maybe Text
  , compositeTemplateDocument                    :: Maybe Document
  , compositeTemplateInlineTemplates             :: Maybe [InlineTemplate]
  , compositeTemplatePdfMetaDataTemplateSequence :: Maybe Text
  , compositeTemplateServerTemplates             :: Maybe [ServerTemplate]
  } deriving (Show, Eq, Generic)

instance FromJSON CompositeTemplate where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "compositeTemplate")
instance ToJSON CompositeTemplate where
  toJSON = genericToJSON (removeFieldLabelPrefix "compositeTemplate")

instance Default CompositeTemplate
