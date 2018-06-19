module DocuSign.Base.Types.TemplateLocks where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.UserInfo

data TemplateLocks = TemplateLocks
  { templateLocksErrorDetails          :: Maybe ErrorDetails
  , templateLocksLockDurationInSeconds :: Maybe Text
  , templateLocksLockedByApp           :: Maybe Text
  , templateLocksLockedByUser          :: Maybe UserInfo
  , templateLocksLockedUntilDateTime   :: Maybe Text
  , templateLocksLockToken             :: Maybe Text
  , templateLocksLockType              :: Maybe Text
  , templateLocksUseScratchPad         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateLocks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateLocks")
instance ToJSON TemplateLocks where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateLocks")

instance Default TemplateLocks
