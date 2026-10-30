import Foundation

public enum PricingZone1MapArea: Codable, Hashable, Sendable {
    case polygon(Polygon)
    case multiPolygon(MultiPolygon)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Polygon.self) {
            self = .polygon(value)
        } else if let value = try? container.decode(MultiPolygon.self) {
            self = .multiPolygon(value)
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
        case .polygon(let value):
            try container.encode(value)
        case .multiPolygon(let value):
            try container.encode(value)
        }
    }
}