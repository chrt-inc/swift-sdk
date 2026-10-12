import Foundation

public enum AirWaybillStockNumberSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case awbNumber = "awb_number"
    case statusChangedAtTimestamp = "status_changed_at_timestamp"
    case createdAtTimestamp = "created_at_timestamp"
}