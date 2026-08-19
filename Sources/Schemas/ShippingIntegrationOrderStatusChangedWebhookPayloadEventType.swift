import Foundation

/// The order status event that occurred
public enum ShippingIntegrationOrderStatusChangedWebhookPayloadEventType: String, Codable, Hashable, CaseIterable, Sendable {
    case shippingIntegrationOrderStaged = "shipping_integration.order.staged"
    case shippingIntegrationOrderInProgress = "shipping_integration.order.in_progress"
    case shippingIntegrationOrderCompleted = "shipping_integration.order.completed"
    case shippingIntegrationOrderException = "shipping_integration.order.exception"
    case shippingIntegrationOrderCancelled = "shipping_integration.order.cancelled"
}