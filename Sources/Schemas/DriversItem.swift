import Foundation

public enum DriversItem: Codable, Hashable, Sendable {
    case driver1(Driver1)
    case driverLimited1(DriverLimited1)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Driver1.self) {
            self = .driver1(value)
        } else if let value = try? container.decode(DriverLimited1.self) {
            self = .driverLimited1(value)
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
        case .driver1(let value):
            try container.encode(value)
        case .driverLimited1(let value):
            try container.encode(value)
        }
    }
}