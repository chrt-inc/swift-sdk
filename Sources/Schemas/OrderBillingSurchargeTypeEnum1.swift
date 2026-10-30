import Foundation

public enum OrderBillingSurchargeTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case equipment
    case dangerousGoods = "dangerous_goods"
    case afterHours = "after_hours"
    case weekend
    case holiday
}