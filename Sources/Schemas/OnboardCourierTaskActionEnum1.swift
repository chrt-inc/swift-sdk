import Foundation

public enum OnboardCourierTaskActionEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case obcCargoPickedUp = "obc__cargo_picked_up"
    case obcCourierThruSecurity = "obc__courier_thru_security"
    case obcCourierBoardedFlight = "obc__courier_boarded_flight"
    case obcCourierDeboardedFlight = "obc__courier_deboarded_flight"
    case obcCourierClearedCustoms = "obc__courier_cleared_customs"
    case obcCargoDelivered = "obc__cargo_delivered"
}