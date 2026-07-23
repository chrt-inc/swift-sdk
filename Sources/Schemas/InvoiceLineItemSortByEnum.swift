import Foundation

public enum InvoiceLineItemSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case lastEditedAtTimestamp = "last_edited_at_timestamp"
    case description
    case quantity
    case unitPrice = "unit_price"
    case invoiceType = "invoice_type"
    case currencyCode = "currency_code"
    case lineItemType = "line_item_type"
}