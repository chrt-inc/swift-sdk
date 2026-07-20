import Foundation

public enum OrgTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case provider
    case shipper
    case vendor
}