import Foundation

public struct PickAndHoldRate1: Codable, Hashable, Sendable {
    public let ratePerInstance: Double
    public let sageItemId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ratePerInstance: Double,
        sageItemId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ratePerInstance = ratePerInstance
        self.sageItemId = sageItemId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ratePerInstance = try container.decode(Double.self, forKey: .ratePerInstance)
        self.sageItemId = try container.decodeIfPresent(String.self, forKey: .sageItemId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ratePerInstance, forKey: .ratePerInstance)
        try container.encodeIfPresent(self.sageItemId, forKey: .sageItemId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ratePerInstance = "rate_per_instance"
        case sageItemId = "sage_item_id"
    }
}