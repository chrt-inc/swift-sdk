import Foundation

public enum InvoiceStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
    case void
}