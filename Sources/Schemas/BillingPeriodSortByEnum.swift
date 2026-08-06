import Foundation

public enum BillingPeriodSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case lastEditedAtTimestamp = "last_edited_at_timestamp"
    case periodStartAtTimestamp = "period_start_at_timestamp"
    case periodEndAtTimestamp = "period_end_at_timestamp"
    case amount
    case name
}