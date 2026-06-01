import Foundation

public enum DepartmentTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case aerospace
    case agriculture
    case automotive
    case chemicals
    case electronics
    case energy
    case foodAndBeverage = "food_and_beverage"
    case general
    case healthcare
    case industrials
    case lifeSciences = "life_sciences"
    case liveAnimals = "live_animals"
    case manufacturing
    case pharmaceutical
    case radiopharma
    case retail
    case semiconductor
}