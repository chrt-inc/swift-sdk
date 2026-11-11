import Foundation

public enum UserKindEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case human
    case serviceAccount = "service_account"
}