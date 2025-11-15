import Foundation

public enum Action: Codable, Hashable, Sendable {
    case chrtGroundCourierTaskActionEnum1(ChrtGroundCourierTaskActionEnum1)
    case flightTaskActionEnum1(FlightTaskActionEnum1)
    case onboardCourierTaskActionEnum1(OnboardCourierTaskActionEnum1)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ChrtGroundCourierTaskActionEnum1.self) {
            self = .chrtGroundCourierTaskActionEnum1(value)
        } else if let value = try? container.decode(FlightTaskActionEnum1.self) {
            self = .flightTaskActionEnum1(value)
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
        case .chrtGroundCourierTaskActionEnum1(let value):
            try container.encode(value)
        case .flightTaskActionEnum1(let value):
            try container.encode(value)
        case .onboardCourierTaskActionEnum1(let value):
            try container.encode(value)
        }
    }
}