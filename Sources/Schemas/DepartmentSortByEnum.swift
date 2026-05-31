import Foundation

public enum DepartmentSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAt = "created_at"
    case departmentType = "department_type"
}