import Foundation

/// Limited notification events for ad-hoc per-order notifications.
/// 
/// Set per order for any directory entry contact.
/// Limited scope since it can go  outside the org, e.g. share order completion but probably not billing events
public enum NotificationEventsForAdHocEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case shippingOrderStaged = "shipping.order.staged"
    case shippingOrderCompleted = "shipping.order.completed"
}