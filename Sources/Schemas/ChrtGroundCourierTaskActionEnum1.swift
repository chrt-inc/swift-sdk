import Foundation

public enum ChrtGroundCourierTaskActionEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case chrtGroundCourierPickup = "chrt_ground_courier__pickup"
    case chrtGroundCourierDeliver = "chrt_ground_courier__deliver"
    case chrtGroundCourierRecoverFromAirline = "chrt_ground_courier__recover_from_airline"
    case chrtGroundCourierTenderToAirline = "chrt_ground_courier__tender_to_airline"
    case chrtGroundCourierConsolidate = "chrt_ground_courier__consolidate"
    case chrtGroundCourierHold = "chrt_ground_courier__hold"
    case chrtGroundCourierOther = "chrt_ground_courier__other"
}