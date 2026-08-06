import Foundation

public enum CreateInvoiceLineItemsFromAwbCostsRejectedReasonEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case alreadyBilled = "already_billed"
    case multipleOrders = "multiple_orders"
    case notResolvable = "not_resolvable"
}