import Foundation

public enum LineStringCoordinatesItem: Codable, Hashable, Sendable {
    case position2D(Position2D)
    case position3D(Position3D)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Position2D.self) {
            self = .position2D(value)
        } else if let value = try? container.decode(Position3D.self) {
            self = .position3D(value)
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
        case .position2D(let value):
            try container.encode(value)
        case .position3D(let value):
            try container.encode(value)
        }
    }
}