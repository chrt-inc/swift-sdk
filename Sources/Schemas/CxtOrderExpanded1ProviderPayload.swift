import Foundation

public enum CxtOrderExpanded1ProviderPayload: Codable, Hashable, Sendable {
    case cxtXdUserOrderResponse1(CxtXdUserOrderResponse1)
    case cxtInetUserOrderResponse1(CxtInetUserOrderResponse1)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CxtXdUserOrderResponse1.self) {
            self = .cxtXdUserOrderResponse1(value)
        } else if let value = try? container.decode(CxtInetUserOrderResponse1.self) {
            self = .cxtInetUserOrderResponse1(value)
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
        case .cxtXdUserOrderResponse1(let value):
            try container.encode(value)
        case .cxtInetUserOrderResponse1(let value):
            try container.encode(value)
        }
    }
}