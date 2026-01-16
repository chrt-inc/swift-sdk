import Foundation

public enum StripeConnectInvoiceStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case deleted
    case open
    case paid
    case uncollectible
    case void
}