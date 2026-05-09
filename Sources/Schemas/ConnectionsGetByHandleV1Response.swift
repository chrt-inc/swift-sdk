import Foundation

public enum ConnectionsGetByHandleV1Response: Codable, Hashable, Sendable {
    case providerProviderConnection1(ProviderProviderConnection1)
    case shipperProviderConnection1(ShipperProviderConnection1)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ProviderProviderConnection1.self) {
            self = .providerProviderConnection1(value)
        } else if let value = try? container.decode(ShipperProviderConnection1.self) {
            self = .shipperProviderConnection1(value)
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
        case .providerProviderConnection1(let value):
            try container.encode(value)
        case .shipperProviderConnection1(let value):
            try container.encode(value)
        }
    }
}