import Foundation

public enum CargoOnFlightBookingSearchResultSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case departure
    case latestAcceptance = "latest_acceptance"
    case price
}