import Foundation

public enum ConnectionSearchByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case departureTime = "departure_time"
    case arrivalTime = "arrival_time"
}