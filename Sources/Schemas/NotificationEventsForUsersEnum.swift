import Foundation

/// Notification events available for user-level opt-in preferences.
/// 
/// These are events that relate to a user's direct involvement:
/// - Order events: via `order.created_by_user_id`
/// - TaskGroup events: via `task_group.driver_id`
public enum NotificationEventsForUsersEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case shippingOrderStaged = "shipping.order.staged"
    case shippingOrderCompleted = "shipping.order.completed"
    case shippingOrderCancelled = "shipping.order.cancelled"
    case shippingTaskGroupDriverAssigned = "shipping.task_group.driver_assigned"
    case shippingTaskGroupMessage = "shipping.task_group.message"
    case shippingTaskGroupTasksOrderingUpdated = "shipping.task_group.tasks_ordering_updated"
    case shippingTaskGroupFlightInfoUpdated = "shipping.task_group.flight_info_updated"
}