import Foundation

public enum InvoiceLineItemStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
    case finalized
}