import Foundation

public enum LineItemStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case approved
    case denied
}