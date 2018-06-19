module DocuSign.Base.Types.ConnectConfigurations where

import DocuSign.Base.Types.Common

data ConnectConfigurations = ConnectConfigurations
  { connectConfigurationsAllowEnvelopePublish              :: Maybe Text
  , connectConfigurationsAllUsers                          :: Maybe Text
  , connectConfigurationsConfigurationType                 :: Maybe Text
  , connectConfigurationsConnectId                         :: Maybe Text
  , connectConfigurationsEnableLog                         :: Maybe Text
  , connectConfigurationsEnvelopeEvents                    :: Maybe Text
  , connectConfigurationsIncludeCertificateOfCompletion    :: Maybe Text
  , connectConfigurationsIncludeCertSoapHeader             :: Maybe Text
  , connectConfigurationsIncludeDocumentFields             :: Maybe Text
  , connectConfigurationsIncludeDocuments                  :: Maybe Text
  , connectConfigurationsIncludeEnvelopeVoidReason         :: Maybe Text
  , connectConfigurationsIncludeSenderAccountasCustomField :: Maybe Text
  , connectConfigurationsIncludeTimeZoneInformation        :: Maybe Text
  , connectConfigurationsName                              :: Maybe Text
  , connectConfigurationsRecipientEvents                   :: Maybe Text
  , connectConfigurationsRequiresAcknowledgement           :: Maybe Text
  , connectConfigurationsSignMessageWithX509Certificate    :: Maybe Text
  , connectConfigurationsSoapNamespace                     :: Maybe Text
  , connectConfigurationsUrlToPublishTo                    :: Maybe Text
  , connectConfigurationsUserIds                           :: Maybe Text
  , connectConfigurationsUseSoapInterface                  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ConnectConfigurations where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "connectConfigurations")
instance ToJSON ConnectConfigurations where
  toJSON = genericToJSON (removeFieldLabelPrefix "connectConfigurations")

instance Default ConnectConfigurations
