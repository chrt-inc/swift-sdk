import Foundation

public enum RateSheetRuleChargedPerEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case order
    case taskGroup = "task_group"
    case task
}