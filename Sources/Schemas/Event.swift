import Foundation

public enum Event: String, Codable, Hashable, CaseIterable, Sendable {
    case progress
    case complete
    case error
}