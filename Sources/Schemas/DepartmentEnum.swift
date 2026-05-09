import Foundation

public enum DepartmentEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case automotive
    case semiconductor
    case pharmaceutical
    case aerospace
    case agriculture
    case retail
    case manufacturing
    case energy
    case foodAndBeverage = "food_and_beverage"
    case chemicals
    case electronics
    case general
}