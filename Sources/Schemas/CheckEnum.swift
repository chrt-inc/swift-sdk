import Foundation

/// *What* is being verified.
/// 
/// Each member is a single, narrowly-scoped check that runs on a specific
/// `OperationsEventEnum`, encoded in the `event` property (backed by
/// `_CHECK_EVENT_MAP` below) — never stored separately, or the two can drift.
/// 
/// Each `Check1` evaluation is keyed by `(check, entity_id)` on a Case;
/// `entity_id` is the id of the entity in the event's `Domain.Entity.Action`
/// slug:
/// 
/// | Event                                  | entity_id        |
/// |----------------------------------------|------------------|
/// | shipping.order.*                       | order_id         |
/// | shipping.task_group.driver_assigned    | task_group_id    |
/// | shipping.task.completed                | task_id          |
/// | shipping.task_artifact.*               | task_artifact_id |
/// 
/// `entity_type` is intentionally not stored — it's a strict function of
/// `check.event.entity` (same drift-avoidance rationale as the removed
/// `event` field). If you ever need it to differ (e.g. a check fires on
/// `task.completed` but is logically about the parent task_group), the
/// first answer is adding the right event; the escape hatch is promoting
/// `entity_type` to its own `_CHECK_ENTITY_MAP`.
public enum CheckEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case shippingOrderPlacedOrderDetailsReviewed = "shipping.order.placed.order_details_reviewed"
    case shippingOrderStagedFlightTaskGroupsHaveFlights = "shipping.order.staged.flight_task_groups_have_flights"
    case shippingOrderStagedFlightTaskGroupsHaveCargo = "shipping.order.staged.flight_task_groups_have_cargo"
    case shippingOrderStagedRecipientContactsPresent = "shipping.order.staged.recipient_contacts_present"
    case shippingTaskGroupDriverAssignedLicenseValid = "shipping.task_group.driver_assigned.license_valid"
    case shippingTaskGroupDriverAssignedInsuranceValid = "shipping.task_group.driver_assigned.insurance_valid"
    case shippingTaskGroupDriverAssignedEmploymentClassificationEligible = "shipping.task_group.driver_assigned.employment_classification_eligible"
    case shippingTaskGroupDriverAssignedVehicleTypeCompatible = "shipping.task_group.driver_assigned.vehicle_type_compatible"
    case shippingTaskArtifactImageUploadedCargoVisible = "shipping.task_artifact.image_uploaded.cargo_visible"
    case shippingTaskArtifactImageUploadedMatchesCargoDescription = "shipping.task_artifact.image_uploaded.matches_cargo_description"
    case shippingTaskArtifactImageUploadedSatisfiesDeliveryInstructions = "shipping.task_artifact.image_uploaded.satisfies_delivery_instructions"
    case shippingTaskArtifactBarcodeScannedExpectedValuesMatch = "shipping.task_artifact.barcode_scanned.expected_values_match"
    case shippingTaskCompletedEtaWithinWindow = "shipping.task.completed.eta_within_window"
    case shippingTaskCompletedCompletedWithinWindow = "shipping.task.completed.completed_within_window"
    case shippingOrderCompletedWaitTimeSubmitted = "shipping.order.completed.wait_time_submitted"
}