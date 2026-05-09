import Foundation

public enum BillingCycleEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case daily
    case weekly
    case monthly
    case quarterly
    case yearly
}