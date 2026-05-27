import Foundation

public struct CaseChecksDismissReq: Codable, Hashable, Sendable {
    public let check: CheckEnum
    public let entityId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        check: CheckEnum,
        entityId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.check = check
        self.entityId = entityId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.check = try container.decode(CheckEnum.self, forKey: .check)
        self.entityId = try container.decode(String.self, forKey: .entityId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.check, forKey: .check)
        try container.encode(self.entityId, forKey: .entityId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case check
        case entityId = "entity_id"
    }
}