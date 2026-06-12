import Foundation

public enum DriversOrgListSelfReportedHoursAndMileageV1RequestSortBy: String, Codable, Hashable, CaseIterable, Sendable {
    case date
    case driverId = "driver_id"
}