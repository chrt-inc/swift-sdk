import Foundation

public enum StatementSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case amount
    case stagedAtTimestamp = "staged_at_timestamp"
    case openedAtTimestamp = "opened_at_timestamp"
    case paidAtTimestamp = "paid_at_timestamp"
    case voidedAtTimestamp = "voided_at_timestamp"
    case uncollectibleAtTimestamp = "uncollectible_at_timestamp"
}