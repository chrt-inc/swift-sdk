import Foundation

public enum RoutingCounterpartyTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case shipperOrg = "shipper_org"
    case offChrtShipperOrg = "off_chrt_shipper_org"
}