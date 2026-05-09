import Foundation

public enum Action: Codable, Hashable, Sendable {
    case cargoOnFlightTaskActionEnum1(CargoOnFlightTaskActionEnum1)
    case chrtGroundProviderTaskActionEnum1(ChrtGroundProviderTaskActionEnum1)
    case onboardCourierTaskActionEnum1(OnboardCourierTaskActionEnum1)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CargoOnFlightTaskActionEnum1.self) {
            self = .cargoOnFlightTaskActionEnum1(value)
        } else if let value = try? container.decode(ChrtGroundProviderTaskActionEnum1.self) {
            self = .chrtGroundProviderTaskActionEnum1(value)
        } else if let value = try? container.decode(OnboardCourierTaskActionEnum1.self) {
            self = .onboardCourierTaskActionEnum1(value)
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
        case .cargoOnFlightTaskActionEnum1(let value):
            try container.encode(value)
        case .chrtGroundProviderTaskActionEnum1(let value):
            try container.encode(value)
        case .onboardCourierTaskActionEnum1(let value):
            try container.encode(value)
        }
    }
}