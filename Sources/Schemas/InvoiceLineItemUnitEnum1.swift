import Foundation

public enum InvoiceLineItemUnitEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case each
    case shipment
    case hour
    case day
    case mile
    case kilometer
    case pound
    case kilogram
}