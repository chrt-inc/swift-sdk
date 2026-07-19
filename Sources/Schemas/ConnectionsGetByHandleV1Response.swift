import Foundation

public enum ConnectionsGetByHandleV1Response: Codable, Hashable, Sendable {
    case coordinatorExecutorConnection1(CoordinatorExecutorConnection1)
    case shipperCoordinatorConnection1(ShipperCoordinatorConnection1)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CoordinatorExecutorConnection1.self) {
            self = .coordinatorExecutorConnection1(value)
        } else if let value = try? container.decode(ShipperCoordinatorConnection1.self) {
            self = .shipperCoordinatorConnection1(value)
        } else {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Unexpected value."
            )
        }
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.singleValueContainer()
        switch self {
        case .coordinatorExecutorConnection1(let value):
            try container.encode(value)
        case .shipperCoordinatorConnection1(let value):
            try container.encode(value)
        }
    }
}