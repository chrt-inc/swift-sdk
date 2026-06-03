import Foundation

/// Coarse functional buckets a dispatcher batch-processes (powers the
/// per-type functional-queue index). Granular SOP specifics live in the Task's
/// `title`/`description` + `tags`, not here.
/// 
/// Ordered roughly along the shipment lifecycle (review -> research -> book ->
/// track/verify -> contact -> billing). The buckets are the distinct *modes of
/// work* an operator sits down and batches; the exact SOP step (e.g. "Send
/// Shipping Label", "CBC Call", "Get Pack Time") is captured in the title.
/// 
/// Contact is split by *who* (customer, agent, airline, other), not by
/// *channel* (call vs. email) — the recipient is what a dispatcher batches
/// around, and the channel is a title/tag detail.
public enum OperationsTaskTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case reviewOrderDetails = "review_order_details"
    case precheck
    case bookCargo = "book_cargo"
    case trackAndVerify = "track_and_verify"
    case contactCustomer = "contact_customer"
    case contactAgent = "contact_agent"
    case contactAirline = "contact_airline"
    case contactOther = "contact_other"
    case finalizeBilling = "finalize_billing"
    case custom
    case other
}