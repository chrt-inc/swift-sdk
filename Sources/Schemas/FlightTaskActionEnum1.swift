import Foundation

/// Notes for order validation logic
/// - the tasks below are already in sequential order, they might not all be present in the task group, but they must follow this order
public enum FlightTaskActionEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case flightCargoReceivedByAirline = "flight__cargo_received_by_airline"
    case flightCargoLoadedOntoFlight = "flight__cargo_loaded_onto_flight"
    case flightFlightDeparted = "flight__flight_departed"
    case flightFlightArrived = "flight__flight_arrived"
    case flightCargoOffloadedFromFlight = "flight__cargo_offloaded_from_flight"
    case flightCargoClearedCustoms = "flight__cargo_cleared_customs"
    case flightCargoReadyForRecovery = "flight__cargo_ready_for_recovery"
}