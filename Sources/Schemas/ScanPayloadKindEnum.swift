import Foundation

public enum ScanPayloadKindEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case expected
    case observed
}