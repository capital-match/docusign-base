module DocuSign.Base.Types.EnvelopeDocumentTabs where

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

data EnvelopeDocumentTabs = EnvelopeDocumentTabs
  { envelopeDocumentTabsApproveTabs          :: Maybe [Approve]
  , envelopeDocumentTabsCheckboxTabs         :: Maybe [Checkbox]
  , envelopeDocumentTabsCompanyTabs          :: Maybe [Company]
  , envelopeDocumentTabsDateSignedTabs       :: Maybe [DateSigned]
  , envelopeDocumentTabsDateTabs             :: Maybe [Date]
  , envelopeDocumentTabsDeclineTabs          :: Maybe [Decline]
  , envelopeDocumentTabsEmailAddressTabs     :: Maybe [EmailAddress]
  , envelopeDocumentTabsEmailTabs            :: Maybe [Email]
  , envelopeDocumentTabsEnvelopeIdTabs       :: Maybe [EnvelopeId]
  , envelopeDocumentTabsFirstNameTabs        :: Maybe [FirstName]
  , envelopeDocumentTabsFormulaTabs          :: Maybe [FormulaTab]
  , envelopeDocumentTabsFullNameTabs         :: Maybe [FullName]
  , envelopeDocumentTabsInitialHereTabs      :: Maybe [InitialHere]
  , envelopeDocumentTabsLastNameTabs         :: Maybe [LastName]
  , envelopeDocumentTabsListTabs             :: Maybe [List]
  , envelopeDocumentTabsNoteTabs             :: Maybe [Note]
  , envelopeDocumentTabsNumberTabs           :: Maybe [Double]
  , envelopeDocumentTabsRadioGroupTabs       :: Maybe [RadioGroup]
  , envelopeDocumentTabsSignerAttachmentTabs :: Maybe [SignerAttachment]
  , envelopeDocumentTabsSignHereTabs         :: Maybe [SignHere]
  , envelopeDocumentTabsSsnTabs              :: Maybe [Ssn]
  , envelopeDocumentTabsTextTabs             :: Maybe [Text]
  , envelopeDocumentTabsTitleTabs            :: Maybe [Title]
  , envelopeDocumentTabsViewTabs             :: Maybe [View]
  , envelopeDocumentTabsZipTabs              :: Maybe [Zip]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeDocumentTabs where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeDocumentTabs")
instance ToJSON EnvelopeDocumentTabs where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeDocumentTabs")

instance Default EnvelopeDocumentTabs
