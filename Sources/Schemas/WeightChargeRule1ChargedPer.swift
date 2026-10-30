import Foundation

public enum WeightChargeRule1ChargedPer: String, Codable, Hashable, CaseIterable, Sendable {
    case order
    case taskGroup = "task_group"
}