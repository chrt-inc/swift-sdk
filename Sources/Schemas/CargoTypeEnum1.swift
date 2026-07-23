import Foundation

public enum CargoTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case spareParts = "spare_parts"
    case blood
    case labSpecimen = "lab_specimen"
    case organ
    case tissue
    case manufacturingEquipment = "manufacturing_equipment"
    case aircraftParts = "aircraft_parts"
    case medicalDevices = "medical_devices"
    case medicalSupplies = "medical_supplies"
    case pharmaceuticals
    case documents
    case electronics
    case clothing
    case chemicals
    case hazardousMaterials = "hazardous_materials"
    case perishable
    case frozen
    case liveAnimals = "live_animals"
    case rodents
    case fish
    case birds
    case reptiles
    case mammals
    case crickets
    case other
    case unspecified
}