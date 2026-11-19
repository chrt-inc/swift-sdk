import Foundation

public enum AuthzActionEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case readUser
    case listUsers
    case readGroup
    case listGroups
    case readCustomRole
    case listCustomRoles
    case createGroup
    case updateGroup
    case deleteGroup
    case updateUserAccess
    case createCustomRole
    case updateCustomRole
    case deleteCustomRole
}