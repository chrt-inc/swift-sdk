import Foundation

public enum UserTypeaheadFieldEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case displayName = "display_name"
    case emailAddress = "email_address"
}