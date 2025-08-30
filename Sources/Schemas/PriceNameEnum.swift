import Foundation

public enum PriceNameEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case courierOps100UsdPerMonth = "courier_ops_100_usd_per_month"
    case courierOps500UsdPerMonth = "courier_ops_500_usd_per_month"
    case courierOps2500UsdPerMonth = "courier_ops_2500_usd_per_month"
}