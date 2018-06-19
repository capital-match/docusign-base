module DocuSign.Base.Types.PowerForms where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Envelopes
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.PowerFormRecipient

data PowerForms = PowerForms
  { powerFormsCreatedDateTime         :: Maybe Text
  , powerFormsEmailBody               :: Maybe Text
  , powerFormsEmailSubject            :: Maybe Text
  , powerFormsEnvelopes               :: Maybe [Envelopes]
  , powerFormsErrorDetails            :: Maybe ErrorDetails
  , powerFormsInstructions            :: Maybe Text
  , powerFormsIsActive                :: Maybe Text
  , powerFormsLastUsed                :: Maybe Text
  , powerFormsLimitUseInterval        :: Maybe Text
  , powerFormsLimitUseIntervalEnabled :: Maybe Text
  , powerFormsLimitUseIntervalUnits   :: Maybe Text
  , powerFormsMaxUseEnabled           :: Maybe Text
  , powerFormsName                    :: Maybe Text
  , powerFormsPowerFormId             :: Maybe Text
  , powerFormsPowerFormUrl            :: Maybe Text
  , powerFormsRecipients              :: Maybe [PowerFormRecipient]
  , powerFormsSenderName              :: Maybe Text
  , powerFormsSenderUserId            :: Maybe Text
  , powerFormsSigningMode             :: Maybe Text
  , powerFormsTemplateId              :: Maybe Text
  , powerFormsTemplateName            :: Maybe Text
  , powerFormsTimesUsed               :: Maybe Text
  , powerFormsUri                     :: Maybe Text
  , powerFormsUsesRemaining           :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PowerForms where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "powerForms")
instance ToJSON PowerForms where
  toJSON = genericToJSON (removeFieldLabelPrefix "powerForms")

instance Default PowerForms
