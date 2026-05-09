import Foundation

public enum TaskGroupTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case chrtGroundProvider = "chrt_ground_provider"
    case cargoOnFlight = "cargo_on_flight"
    case onboardCourier = "onboard_courier"
}