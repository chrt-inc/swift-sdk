import Foundation

/// Activity event types.
///
/// NOTE: there is no assignment event, so an order moving to `ASSIGNED` leaves no
/// trace here and status cannot be reconstructed from this log.
public enum CourieOrderEventEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case created = "CREATED"
    case pickedUp = "PICKED_UP"
    case droppedOff = "DROPPED_OFF"
    case returnedToPickUp = "RETURNED_TO_PICK_UP"
    case attempted = "ATTEMPTED"
    case completed = "COMPLETED"
}