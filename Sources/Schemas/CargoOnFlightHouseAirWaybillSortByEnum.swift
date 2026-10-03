import Foundation

public enum CargoOnFlightHouseAirWaybillSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case houseAirWaybillNumber = "house_air_waybill_number"
}