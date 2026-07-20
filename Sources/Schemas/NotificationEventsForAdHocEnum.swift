import Foundation

/// Limited notification events for ad-hoc per-subject notifications.
/// 
/// Set per order or per tracking session for any contact.
/// Limited scope since it can go  outside the org, e.g. share order completion but probably not billing events
public enum NotificationEventsForAdHocEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case shippingOrderStaged = "shipping.order.staged"
    case shippingOrderCompleted = "shipping.order.completed"
    case trackingSessionDestinationGeofenceEntered = "tracking.session.destination_geofence_entered"
}