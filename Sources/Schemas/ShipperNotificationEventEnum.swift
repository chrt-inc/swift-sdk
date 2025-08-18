import Foundation

/// Notification events for shippers
public enum ShipperNotificationEventEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case orderCreate = "order_create"
}