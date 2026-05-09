import Foundation

public enum CargoOnFlightTaskActionEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case cargoOnFlightCargoReceivedByAirline = "cargo_on_flight__cargo_received_by_airline"
    case cargoOnFlightCargoLoadedOntoFlight = "cargo_on_flight__cargo_loaded_onto_flight"
    case cargoOnFlightFlightDeparted = "cargo_on_flight__flight_departed"
    case cargoOnFlightFlightArrived = "cargo_on_flight__flight_arrived"
    case cargoOnFlightCargoOffloadedFromFlight = "cargo_on_flight__cargo_offloaded_from_flight"
    case cargoOnFlightCargoClearedCustoms = "cargo_on_flight__cargo_cleared_customs"
    case cargoOnFlightCargoReadyForRecovery = "cargo_on_flight__cargo_ready_for_recovery"
}