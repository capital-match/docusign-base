module DocuSign.Base.Types.EnvelopeLocks where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.UserInfo

data EnvelopeLocks = EnvelopeLocks
  { envelopeLocksErrorDetails          :: Maybe ErrorDetails
  , envelopeLocksLockDurationInSeconds :: Maybe Text
  , envelopeLocksLockedByApp           :: Maybe Text
  , envelopeLocksLockedByUser          :: Maybe UserInfo
  , envelopeLocksLockedUntilDateTime   :: Maybe Text
  , envelopeLocksLockToken             :: Maybe Text
  , envelopeLocksLockType              :: Maybe Text
  , envelopeLocksUseScratchPad         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeLocks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeLocks")
instance ToJSON EnvelopeLocks where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeLocks")

instance Default EnvelopeLocks
