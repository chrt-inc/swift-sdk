import Foundation

public enum BillingPeriodCycleEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case daily
    case weekly
    case monthly
    case quarterly
    case yearly
}