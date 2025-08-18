import Foundation

public enum TransportTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case groundOnly = "ground_only"
    case passengerFlight = "passenger_flight"
    case cargoFlight = "cargo_flight"
    case charteredFlight = "chartered_flight"
    case onboardCourier = "onboard_courier"
}