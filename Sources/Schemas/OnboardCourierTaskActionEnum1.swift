import Foundation

public enum OnboardCourierTaskActionEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case obcCourierDepartedForPickupLocation = "obc__courier_departed_for_pickup_location"
    case obcCourierArrivedAtPickupLocation = "obc__courier_arrived_at_pickup_location"
    case obcCargoPickedUp = "obc__cargo_picked_up"
    case obcCourierDepartedForAirport = "obc__courier_departed_for_airport"
    case obcCourierArrivedAtAirport = "obc__courier_arrived_at_airport"
    case obcCourierThruSecurity = "obc__courier_thru_security"
    case obcCargoReceivedByAirline = "obc__cargo_received_by_airline"
    case obcCourierBoardedFlight = "obc__courier_boarded_flight"
    case obcFlightDeparted = "obc__flight_departed"
    case obcFlightArrived = "obc__flight_arrived"
    case obcCourierDeboardedFlight = "obc__courier_deboarded_flight"
    case obcCourierClearedCustoms = "obc__courier_cleared_customs"
    case obcCourierRecoveredCargo = "obc__courier_recovered_cargo"
    case obcCourierDepartedForDeliveryLocation = "obc__courier_departed_for_delivery_location"
    case obcCourierArrivedAtDeliveryLocation = "obc__courier_arrived_at_delivery_location"
    case obcCargoDelivered = "obc__cargo_delivered"
}