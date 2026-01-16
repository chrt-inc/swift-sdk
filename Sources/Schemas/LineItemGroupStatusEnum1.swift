import Foundation

public enum LineItemGroupStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case staged
    case pendingRates = "pending_rates"
    case pendingCalculation = "pending_calculation"
    case adjustable
    case finalized
    case open
    case paid
    case uncollectible
    case void
}