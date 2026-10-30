import Foundation

public enum RateSheetRuleQuantityBasisEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case orderUniqueCargo = "order_unique_cargo"
    case taskGroupUniqueCargo = "task_group_unique_cargo"
    case taskHandledCargo = "task_handled_cargo"
}