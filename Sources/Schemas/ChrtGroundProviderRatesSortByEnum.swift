import Foundation

public enum ChrtGroundProviderRatesSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case name
    case currencyCode = "currency_code"
    case createdAtTimestamp = "created_at_timestamp"
    case updatedAtTimestamp = "updated_at_timestamp"
}