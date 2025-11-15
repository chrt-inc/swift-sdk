import Foundation

public enum OrgTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case courier
    case shipper
    case forwarder
}