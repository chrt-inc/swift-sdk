import Foundation

public enum InvoiceSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case lastEditedAtTimestamp = "last_edited_at_timestamp"
    case totalAmount = "total_amount"
    case status
    case invoiceType = "invoice_type"
}