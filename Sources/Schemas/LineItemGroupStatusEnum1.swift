import Foundation

/// LineItemGroup lifecycle.
/// 
/// The pre-FINALIZED window is a single STAGED state — operators compose the
/// bundle (add/remove owner ad-hoc into amendment, propose/approve/deny
/// counterparty items) and then call `finalize/v1` to lock it. Every state
/// past STAGED is reached by a deliberate transition (`finalize/v1`,
/// `open_invoice/v1`, sync routes).
/// 
/// The legacy `PENDING_RATES`, `PENDING_CALCULATION`, and `ADJUSTABLE` states
/// were tied to the old auto-recalc-on-mutation hooks. Bucket amounts ARE
/// kept in sync on every mutation today (see the "Amounts" section of the
/// module docstring), but that's a write-time invariant, not a status —
/// modeling "is the amount fresh?" as LIG status duplicates information and
/// was dropped 2026-05-03. The worklist principle (an empty
/// `agreement_line_item_ids` bucket or an unfilled
/// `<vector>_line_item_group_id` field IS the operator signal) makes the
/// intermediate states redundant in any case.
public enum LineItemGroupStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case staged
    case finalized
    case open
    case paid
    case uncollectible
}