import Foundation

/// Operational status of an order.
///
/// The live OpenAPI spec declares `StatusLevel` and `Status.Level` as enum name
/// strings while the wire format is the integer ordinal, so the validator below
/// accepts either. Ordinals are the vendor's own and are what we store.
public typealias OnTime360StatusLevelEnum1 = Int
