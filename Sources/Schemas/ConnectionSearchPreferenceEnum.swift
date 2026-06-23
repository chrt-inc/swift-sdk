import Foundation

public enum ConnectionSearchPreferenceEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case earliest
    case latest
}