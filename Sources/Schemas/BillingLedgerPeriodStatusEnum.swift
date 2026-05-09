import Foundation

public enum BillingLedgerPeriodStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case closed
}