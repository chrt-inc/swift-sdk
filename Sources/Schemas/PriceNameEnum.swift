import Foundation

public enum PriceNameEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case courierOpsSolo100Month = "courier_ops_solo_100_month"
    case courierOpsSmallTeam500Month = "courier_ops_small_team_500_month"
    case courierOpsUnlimited2500Month = "courier_ops_unlimited_2500_month"
}