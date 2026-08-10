import Foundation

public enum TaskGroupProviderRoleFilterEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case all
    case coordinator
    case executor
}