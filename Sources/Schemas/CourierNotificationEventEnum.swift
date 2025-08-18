import Foundation

/// Notification events for couriers
public enum CourierNotificationEventEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case orderCreate = "order_create"
}