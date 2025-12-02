import Foundation

/// Notes for order validation logic
/// - actions that obtain cargo are {PICKUP, RECOVER_FROM_AIRLINE}
/// - actions that release cargo are {DELIVER, TENDER_TO_AIRLINE}
/// - actions that maintain cargo are {CONSOLIDATE, HOLD}
/// - action that is a wildcard is {OTHER}
/// - actions where cargo is maintained must occur between obtain and release actions
/// - The wildcard OTHER is given maximum opportunity to satisfy constraints, e.g.:
///     - these are okay:
///         - OTHER (with no more tasks)
///         - PICKUP then OTHER
///         - OTHER then OTHER
///         - OTHER then DELIVER
///     - these are not okay:
///         - OTHER then PICKUP then no more tasks (because the cargo is not released after PICKUP)
///         - DELIVER then OTHER (because the cargo is not obtained before DELIVER)
public enum ChrtGroundCourierTaskActionEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case chrtGroundCourierPickup = "chrt_ground_courier__pickup"
    case chrtGroundCourierRecoverFromAirline = "chrt_ground_courier__recover_from_airline"
    case chrtGroundCourierDeliver = "chrt_ground_courier__deliver"
    case chrtGroundCourierTenderToAirline = "chrt_ground_courier__tender_to_airline"
    case chrtGroundCourierConsolidate = "chrt_ground_courier__consolidate"
    case chrtGroundCourierHold = "chrt_ground_courier__hold"
    case chrtGroundCourierOther = "chrt_ground_courier__other"
}