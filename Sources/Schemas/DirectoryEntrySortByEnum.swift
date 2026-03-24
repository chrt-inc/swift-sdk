import Foundation

public enum DirectoryEntrySortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case companyName = "company_name"
    case contactFirstName = "contact_first_name"
    case contactLastName = "contact_last_name"
}