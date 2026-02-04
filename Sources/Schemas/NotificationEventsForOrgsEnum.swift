import Foundation

/// All notification events available at the org level.
/// Controlled by Groups that admins configure.
/// Individual users in the group can opt out.
public enum NotificationEventsForOrgsEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case shippingOrderStaged = "shipping.order.staged"
    case shippingOrderCompleted = "shipping.order.completed"
    case shippingOrderCancelled = "shipping.order.cancelled"
    case shippingTaskGroupCourierOrgAssigned = "shipping.task_group.courier_org_assigned"
    case shippingTaskGroupInProgress = "shipping.task_group.in_progress"
    case shippingTaskGroupFileAdded = "shipping.task_group.file_added"
    case shippingTaskGroupDriverAssigned = "shipping.task_group.driver_assigned"
    case shippingTaskGroupMessage = "shipping.task_group.message"
    case shippingTaskGroupTasksOrderingUpdated = "shipping.task_group.tasks_ordering_updated"
    case shippingTaskGroupFlightInfoUpdated = "shipping.task_group.flight_info_updated"
    case shippingTaskAdded = "shipping.task.added"
    case shippingTaskCompleted = "shipping.task.completed"
    case shippingTaskSkipped = "shipping.task.skipped"
    case shippingTaskDeleted = "shipping.task.deleted"
    case shippingTaskTaskArtifactCompleted = "shipping.task.task_artifact_completed"
    case billingStatementOpened = "billing.statement.opened"
    case billingStatementPaid = "billing.statement.paid"
    case billingLineItemGroupMessage = "billing.line_item_group.message"
    case billingLineItemGroupFileAdded = "billing.line_item_group.file_added"
}