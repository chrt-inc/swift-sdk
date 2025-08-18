import Foundation

public enum DriverStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case notAssigned = "not_assigned"
    case assigned
    case routeInProgress = "route_in_progress"
}