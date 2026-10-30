import Foundation

public enum PieceCountChargeRule1ChargedPer: String, Codable, Hashable, CaseIterable, Sendable {
    case order
    case taskGroup = "task_group"
}