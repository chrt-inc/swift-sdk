import Foundation

public enum Action: Codable, Hashable, Sendable {
    case obcNfoTaskActionEnum(ObcNfoTaskActionEnum)
    case taskActionEnum1(TaskActionEnum1)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ObcNfoTaskActionEnum.self) {
            self = .obcNfoTaskActionEnum(value)
        } else if let value = try? container.decode(TaskActionEnum1.self) {
            self = .taskActionEnum1(value)
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
        case .obcNfoTaskActionEnum(let value):
            try container.encode(value)
        case .taskActionEnum1(let value):
            try container.encode(value)
        }
    }
}