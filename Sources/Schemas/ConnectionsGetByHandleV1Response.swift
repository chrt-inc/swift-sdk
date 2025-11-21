import Foundation

public enum ConnectionsGetByHandleV1Response: Codable, Hashable, Sendable {
    case forwarderCourierConnection1(ForwarderCourierConnection1)
    case shipperCourierConnection1(ShipperCourierConnection1)
    case shipperForwarderConnection1(ShipperForwarderConnection1)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ForwarderCourierConnection1.self) {
            self = .forwarderCourierConnection1(value)
        } else if let value = try? container.decode(ShipperCourierConnection1.self) {
            self = .shipperCourierConnection1(value)
        } else if let value = try? container.decode(ShipperForwarderConnection1.self) {
            self = .shipperForwarderConnection1(value)
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
        case .forwarderCourierConnection1(let value):
            try container.encode(value)
        case .shipperCourierConnection1(let value):
            try container.encode(value)
        case .shipperForwarderConnection1(let value):
            try container.encode(value)
        }
    }
}