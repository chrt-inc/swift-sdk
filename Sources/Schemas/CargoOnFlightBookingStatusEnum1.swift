import Foundation

public enum CargoOnFlightBookingStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case requested
    case confirmed
    case rejected
    case failed
    case cancellationRequested = "cancellation_requested"
    case cancelled
}