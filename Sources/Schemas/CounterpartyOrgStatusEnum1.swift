import Foundation

public enum CounterpartyOrgStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case onboarding
    case active
    case hold
    case redZone = "red_zone"
}