import Foundation

public enum Status: String, Codable, Hashable, CaseIterable, Sendable {
    case staged
    case completed
}