module DocuSign.Base.Types.LockRequest where

import DocuSign.Base.Types.Common

data LockRequest = LockRequest
  { lockRequestLockDurationInSeconds :: Maybe Text
  , lockRequestLockedByApp           :: Maybe Text
  , lockRequestLockType              :: Maybe Text
  , lockRequestTemplatePassword      :: Maybe Text
  , lockRequestUseScratchPad         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON LockRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "lockRequest")
instance ToJSON LockRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "lockRequest")

instance Default LockRequest
