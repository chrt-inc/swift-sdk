import Foundation

public enum BillingLedgerPeriodSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case periodEndAtTimestamp = "period_end_at_timestamp"
    case periodStartAtTimestamp = "period_start_at_timestamp"
    case openedAtTimestamp = "opened_at_timestamp"
}