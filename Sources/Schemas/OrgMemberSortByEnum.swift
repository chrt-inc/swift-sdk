import Foundation

public enum OrgMemberSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case firstName = "first_name"
    case lastName = "last_name"
}