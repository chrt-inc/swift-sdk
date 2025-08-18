import Foundation

public enum OrderDispatchTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case dtc
    case ff
    case `self`
}