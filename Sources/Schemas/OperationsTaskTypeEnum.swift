import Foundation

/// Coarse functional buckets a dispatcher batch-processes (powers the
/// per-type functional-queue index). Granular SOP specifics live in the Task's
/// `title`/`description` + `tags`, not here.
public enum OperationsTaskTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case reviewOrderDetails = "review_order_details"
    case bookCargo = "book_cargo"
    case dispatchDriver = "dispatch_driver"
    case verifyDriverReadiness = "verify_driver_readiness"
    case shareInstructions = "share_instructions"
    case monitorTransit = "monitor_transit"
    case monitorSla = "monitor_sla"
    case callDriver = "call_driver"
    case verifyTaskArtifacts = "verify_task_artifacts"
    case finalizeBilling = "finalize_billing"
    case custom
    case other
}