import Foundation

public enum InvoiceStripeStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case open
    case paid
    case uncollectible
    case void
}