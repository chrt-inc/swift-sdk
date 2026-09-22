import Foundation

public struct XceleratorOrderTypeaheadValue: Codable, Hashable, Sendable {
    public let value: String
    public let xceleratorOrderIds: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        value: String,
        xceleratorOrderIds: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.value = value
        self.xceleratorOrderIds = xceleratorOrderIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.value = try container.decode(String.self, forKey: .value)
        self.xceleratorOrderIds = try container.decode([String].self, forKey: .xceleratorOrderIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.value, forKey: .value)
        try container.encode(self.xceleratorOrderIds, forKey: .xceleratorOrderIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case value
        case xceleratorOrderIds = "xcelerator_order_ids"
    }
}