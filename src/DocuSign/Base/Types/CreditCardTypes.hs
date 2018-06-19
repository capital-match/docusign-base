module DocuSign.Base.Types.CreditCardTypes where

import DocuSign.Base.Types.Common

data CreditCardTypes = CreditCardTypes
  { creditCardTypesCardTypes :: Maybe [Text]
  } deriving (Show, Eq, Generic)

instance FromJSON CreditCardTypes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "creditCardTypes")
instance ToJSON CreditCardTypes where
  toJSON = genericToJSON (removeFieldLabelPrefix "creditCardTypes")

instance Default CreditCardTypes
