import Foundation

public enum FlightLegProvenanceEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case manual
    case cirium
    case flightaware
    case cargoOnFlightBooking = "cargo_on_flight_booking"
}