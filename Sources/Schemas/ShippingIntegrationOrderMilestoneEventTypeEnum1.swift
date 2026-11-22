import Foundation

public enum ShippingIntegrationOrderMilestoneEventTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case arrivedPickup = "arrived_pickup"
    case pickedUp = "picked_up"
    case departedPickup = "departed_pickup"
    case arrivedDelivery = "arrived_delivery"
    case delivered
    case podCaptured = "pod_captured"
    case cancelled
    case failedAttempt = "failed_attempt"
    case onHold = "on_hold"
}