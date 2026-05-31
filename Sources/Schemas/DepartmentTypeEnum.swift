import Foundation

public enum DepartmentTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
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
    case healthcare
    case industrials
    case liveAnimals = "live_animals"
    case lifeSciences = "life_sciences"
    case radiopharma
    case general
}