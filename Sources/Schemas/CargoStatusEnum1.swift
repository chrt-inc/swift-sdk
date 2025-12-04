import Foundation

public enum CargoStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case staged
    case inTransit = "in_transit"
    case delivered
    case skipped
    case exception
}