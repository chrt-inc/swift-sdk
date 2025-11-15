import Foundation

public enum TaskGroupTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case chrtGroundCourier = "chrt_ground_courier"
    case flight
    case onboardCourier = "onboard_courier"
}