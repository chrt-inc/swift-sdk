import Foundation

public enum CounterpartyInvoiceFrequencyEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case perOrder = "per_order"
    case weekly
    case biweekly
    case semiMonthly = "semi_monthly"
    case monthly
}