import Foundation

public enum OrderEventSystemActorEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case shippingStateSync = "shipping_state_sync"
    case temporalWorkflow = "temporal_workflow"
    case shippingIntegrationSync = "shipping_integration_sync"
    case flightTracker = "flight_tracker"
    case geofenceTracker = "geofence_tracker"
    case orderSchedule = "order_schedule"
    case systemAutomation = "system_automation"
}