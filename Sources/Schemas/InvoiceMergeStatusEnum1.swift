import Foundation

public enum InvoiceMergeStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case submitted
    case open
    case partiallyPaid = "partially_paid"
    case paid
    case void
}