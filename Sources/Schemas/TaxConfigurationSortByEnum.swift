import Foundation

public enum TaxConfigurationSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case name
    case createdAtTimestamp = "created_at_timestamp"
}