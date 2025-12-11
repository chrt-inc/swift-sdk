import Foundation

public enum TrackingSharingSettingsResSharingSettings: Codable, Hashable, Sendable {
    case cargoByDeviceSharingSettings1(CargoByDeviceSharingSettings1)
    case cargoByDriverSharingSettings1(CargoByDriverSharingSettings1)
    case taskGroupByDriverSharingSettings1(TaskGroupByDriverSharingSettings1)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CargoByDeviceSharingSettings1.self) {
            self = .cargoByDeviceSharingSettings1(value)
        } else if let value = try? container.decode(CargoByDriverSharingSettings1.self) {
            self = .cargoByDriverSharingSettings1(value)
        } else if let value = try? container.decode(TaskGroupByDriverSharingSettings1.self) {
            self = .taskGroupByDriverSharingSettings1(value)
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
        case .cargoByDeviceSharingSettings1(let value):
            try container.encode(value)
        case .cargoByDriverSharingSettings1(let value):
            try container.encode(value)
        case .taskGroupByDriverSharingSettings1(let value):
            try container.encode(value)
        }
    }
}