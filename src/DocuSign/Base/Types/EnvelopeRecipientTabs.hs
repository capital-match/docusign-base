module DocuSign.Base.Types.EnvelopeRecipientTabs where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Approve
import DocuSign.Base.Types.Checkbox
import DocuSign.Base.Types.Company
import DocuSign.Base.Types.Date
import DocuSign.Base.Types.DateSigned
import DocuSign.Base.Types.Decline
import DocuSign.Base.Types.Email
import DocuSign.Base.Types.EmailAddress
import DocuSign.Base.Types.EnvelopeId
import DocuSign.Base.Types.FirstName
import DocuSign.Base.Types.FormulaTab
import DocuSign.Base.Types.FullName
import DocuSign.Base.Types.InitialHere
import DocuSign.Base.Types.LastName
import DocuSign.Base.Types.List
import DocuSign.Base.Types.Note
import DocuSign.Base.Types.RadioGroup
import DocuSign.Base.Types.SignerAttachment
import DocuSign.Base.Types.SignHere
import DocuSign.Base.Types.Ssn
import DocuSign.Base.Types.Title
import DocuSign.Base.Types.View
import DocuSign.Base.Types.Zip

data EnvelopeRecipientTabs = EnvelopeRecipientTabs
  { envelopeRecipientTabsApproveTabs          :: Maybe [Approve]
  , envelopeRecipientTabsCheckboxTabs         :: Maybe [Checkbox]
  , envelopeRecipientTabsCompanyTabs          :: Maybe [Company]
  , envelopeRecipientTabsDateSignedTabs       :: Maybe [DateSigned]
  , envelopeRecipientTabsDateTabs             :: Maybe [Date]
  , envelopeRecipientTabsDeclineTabs          :: Maybe [Decline]
  , envelopeRecipientTabsEmailAddressTabs     :: Maybe [EmailAddress]
  , envelopeRecipientTabsEmailTabs            :: Maybe [Email]
  , envelopeRecipientTabsEnvelopeIdTabs       :: Maybe [EnvelopeId]
  , envelopeRecipientTabsFirstNameTabs        :: Maybe [FirstName]
  , envelopeRecipientTabsFormulaTabs          :: Maybe [FormulaTab]
  , envelopeRecipientTabsFullNameTabs         :: Maybe [FullName]
  , envelopeRecipientTabsInitialHereTabs      :: Maybe [InitialHere]
  , envelopeRecipientTabsLastNameTabs         :: Maybe [LastName]
  , envelopeRecipientTabsListTabs             :: Maybe [List]
  , envelopeRecipientTabsNoteTabs             :: Maybe [Note]
  , envelopeRecipientTabsNumberTabs           :: Maybe [Double]
  , envelopeRecipientTabsRadioGroupTabs       :: Maybe [RadioGroup]
  , envelopeRecipientTabsSignerAttachmentTabs :: Maybe [SignerAttachment]
  , envelopeRecipientTabsSignHereTabs         :: Maybe [SignHere]
  , envelopeRecipientTabsSsnTabs              :: Maybe [Ssn]
  , envelopeRecipientTabsTextTabs             :: Maybe [Text]
  , envelopeRecipientTabsTitleTabs            :: Maybe [Title]
  , envelopeRecipientTabsViewTabs             :: Maybe [View]
  , envelopeRecipientTabsZipTabs              :: Maybe [Zip]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeRecipientTabs where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeRecipientTabs")
instance ToJSON EnvelopeRecipientTabs where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeRecipientTabs")

instance Default EnvelopeRecipientTabs
