import Foundation

public enum CargoStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case awaitingPickup = "awaiting_pickup"
    case inTransit = "in_transit"
    case delivered
    case exception
}