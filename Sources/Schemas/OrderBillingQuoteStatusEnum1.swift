import Foundation

public enum OrderBillingQuoteStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case accepted
    case superseded
    case withdrawn
}