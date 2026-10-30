import Foundation

public enum FuelSurchargeConfigurationSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case name
    case createdAtTimestamp = "created_at_timestamp"
}