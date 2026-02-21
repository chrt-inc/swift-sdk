import Foundation

public enum FlightStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case unknown
    case scheduled
    case departedFromGate = "departed_from_gate"
    case inFlight = "in_flight"
    case landed
    case arrivedAtGate = "arrived_at_gate"
    case diverted
    case cancelled
}