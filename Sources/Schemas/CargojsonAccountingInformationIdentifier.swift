import Foundation

/// https://github.com/champ-cargosystems-gmbh/cargojson.champ.aero/blob/master/src/main/java/aero/champ/cargojson/common/AccountingInformationIdentifier.java
public enum CargojsonAccountingInformationIdentifier: String, Codable, Hashable, CaseIterable, Sendable {
    case creditCardNumber = "CreditCardNumber"
    case creditCardExpiryDate = "CreditCardExpiryDate"
    case creditCardIssuanceName = "CreditCardIssuanceName"
    case generalInformation = "GeneralInformation"
    case governmentBillOfLading = "GovernmentBillOfLading"
    case miscellaneousChargeOrder = "MiscellaneousChargeOrder"
    case modeOfSettlement = "ModeOfSettlement"
    case returnToOrigin = "ReturnToOrigin"
    case shippersReferenceNumber = "ShippersReferenceNumber"
}