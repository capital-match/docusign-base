module DocuSign.Base.Types.Services where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ServiceVersion

data Services = Services
  { servicesBuildBranch                 :: Maybe Text
  , servicesBuildBranchDeployedDateTime :: Maybe Text
  , servicesBuildSHA                    :: Maybe Text
  , servicesBuildVersion                :: Maybe Text
  , servicesLinkedSites                 :: Maybe [Text]
  , servicesServiceVersions             :: Maybe [ServiceVersion]
  } deriving (Show, Eq, Generic)

instance FromJSON Services where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "services")
instance ToJSON Services where
  toJSON = genericToJSON (removeFieldLabelPrefix "services")

instance Default Services
