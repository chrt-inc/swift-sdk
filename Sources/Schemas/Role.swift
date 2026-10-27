import Foundation

/// user: the caller. assistant: Charlie.
public enum Role: String, Codable, Hashable, CaseIterable, Sendable {
    case user
    case assistant
}