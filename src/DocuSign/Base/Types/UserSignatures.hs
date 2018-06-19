module DocuSign.Base.Types.UserSignatures where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.DateStampProperties
import DocuSign.Base.Types.ErrorDetails

data UserSignatures = UserSignatures
  { userSignaturesAdoptedDateTime     :: Maybe Text
  , userSignaturesCreatedDateTime     :: Maybe Text
  , userSignaturesDateStampProperties :: Maybe DateStampProperties
  , userSignaturesErrorDetails        :: Maybe ErrorDetails
  , userSignaturesExternalID          :: Maybe Text
  , userSignaturesImageType           :: Maybe Text
  , userSignaturesInitials150ImageId  :: Maybe Text
  , userSignaturesInitialsImageUri    :: Maybe Text
  , userSignaturesIsDefault           :: Maybe Text
  , userSignaturesPhoneticName        :: Maybe Text
  , userSignaturesSignature150ImageId :: Maybe Text
  , userSignaturesSignatureFont       :: Maybe Text
  , userSignaturesSignatureId         :: Maybe Text
  , userSignaturesSignatureImageUri   :: Maybe Text
  , userSignaturesSignatureInitials   :: Maybe Text
  , userSignaturesSignatureName       :: Maybe Text
  , userSignaturesSignatureType       :: Maybe Text
  , userSignaturesStampFormat         :: Maybe Text
  , userSignaturesStampImageUri       :: Maybe Text
  , userSignaturesStampSizeMM         :: Maybe Text
  , userSignaturesStampType           :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON UserSignatures where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userSignatures")
instance ToJSON UserSignatures where
  toJSON = genericToJSON (removeFieldLabelPrefix "userSignatures")

instance Default UserSignatures
