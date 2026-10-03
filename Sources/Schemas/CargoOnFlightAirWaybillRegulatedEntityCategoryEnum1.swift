import Foundation

public enum CargoOnFlightAirWaybillRegulatedEntityCategoryEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case regulatedAgent = "regulated_agent"
    case knownConsignor = "known_consignor"
    case accountConsignor = "account_consignor"
    case regulatedCarrier = "regulated_carrier"
}