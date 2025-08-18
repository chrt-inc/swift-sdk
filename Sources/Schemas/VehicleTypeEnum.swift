import Foundation

public enum VehicleTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case sedan
    case suv
    case cargoVan = "cargo_van"
    case boxTruck = "box_truck"
    case flatbed
    case semiTruck = "semi_truck"
}