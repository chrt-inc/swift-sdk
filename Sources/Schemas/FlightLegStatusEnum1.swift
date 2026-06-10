import Foundation

public enum FlightLegStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case scheduled
    case departedGate = "departed_gate"
    case inFlight = "in_flight"
    case landed
    case arrivedGate = "arrived_gate"
    case cancelled
    case diverted
    case unknown
}