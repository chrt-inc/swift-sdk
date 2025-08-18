import Foundation

public enum OrderCreatedByTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case chrt
    case shipper
    case courier
}