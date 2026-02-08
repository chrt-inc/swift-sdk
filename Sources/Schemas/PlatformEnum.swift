import Foundation

public enum PlatformEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case android
    case ios
    case web
}