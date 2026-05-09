import Foundation

public enum ChrtGroundProviderTaskActionEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case chrtGroundProviderPickup = "chrt_ground_provider__pickup"
    case chrtGroundProviderDeliver = "chrt_ground_provider__deliver"
    case chrtGroundProviderRecoverFromAirline = "chrt_ground_provider__recover_from_airline"
    case chrtGroundProviderTenderToAirline = "chrt_ground_provider__tender_to_airline"
    case chrtGroundProviderConsolidate = "chrt_ground_provider__consolidate"
    case chrtGroundProviderHold = "chrt_ground_provider__hold"
    case chrtGroundProviderOther = "chrt_ground_provider__other"
}