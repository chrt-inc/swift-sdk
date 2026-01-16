import Foundation

/// Sort order for query results
public enum SortOrderEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case asc
    case desc
}