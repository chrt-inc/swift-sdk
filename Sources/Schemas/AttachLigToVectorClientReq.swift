import Foundation

public struct AttachLigToVectorClientReq: Codable, Hashable, Sendable {
    public let lineItemGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lineItemGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lineItemGroupId = lineItemGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lineItemGroupId = try container.decode(String.self, forKey: .lineItemGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.lineItemGroupId, forKey: .lineItemGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lineItemGroupId = "line_item_group_id"
    }
}