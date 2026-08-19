import Foundation

public struct ShippingIntegrationOrderStatusChangedRes: Codable, Hashable, Sendable {
    public let dispatchedCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dispatchedCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dispatchedCount = dispatchedCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dispatchedCount = try container.decode(Int.self, forKey: .dispatchedCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.dispatchedCount, forKey: .dispatchedCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dispatchedCount = "dispatched_count"
    }
}