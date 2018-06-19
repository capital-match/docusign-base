module DocuSign.Base.Types.CreditCardInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AddressInformation

data CreditCardInformation = CreditCardInformation
  { creditCardInformationAddress         :: Maybe AddressInformation
  , creditCardInformationCardNumber      :: Maybe Text
  , creditCardInformationCardType        :: Maybe Text
  , creditCardInformationExpirationMonth :: Maybe Text
  , creditCardInformationExpirationYear  :: Maybe Text
  , creditCardInformationNameOnCard      :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CreditCardInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "creditCardInformation")
instance ToJSON CreditCardInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "creditCardInformation")

instance Default CreditCardInformation
