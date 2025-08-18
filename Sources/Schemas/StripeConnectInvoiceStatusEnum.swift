import Foundation

public enum StripeConnectInvoiceStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case invoiceNotYetCreated = "invoice_not_yet_created"
    case draft
    case deleted
    case open
    case paid
    case uncollectible
    case void
}