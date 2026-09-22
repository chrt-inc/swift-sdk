import Foundation

public struct ChrtGroundProviderRatesTypeaheadValue: Codable, Hashable, Sendable {
    public let chrtGroundProviderRatesIds: [String]
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chrtGroundProviderRatesIds: [String],
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chrtGroundProviderRatesIds = chrtGroundProviderRatesIds
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chrtGroundProviderRatesIds = try container.decode([String].self, forKey: .chrtGroundProviderRatesIds)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.chrtGroundProviderRatesIds, forKey: .chrtGroundProviderRatesIds)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chrtGroundProviderRatesIds = "chrt_ground_provider_rates_ids"
        case value
    }
}