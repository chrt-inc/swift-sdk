import Foundation

public enum OrderDraftIssueCategoryEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case status
    case structure
    case actionType = "action_type"
    case sequence
    case assignment
}