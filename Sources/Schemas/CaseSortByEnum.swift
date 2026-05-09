import Foundation

public enum CaseSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAt = "created_at"
    case status
    case departmentId = "department_id"
}