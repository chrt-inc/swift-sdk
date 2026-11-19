import Foundation

public struct GroupListItem: Codable, Hashable, Sendable {
    public let group: Group1
    /// Authz users in this group.
    public let memberCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        group: Group1,
        memberCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.group = group
        self.memberCount = memberCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.group = try container.decode(Group1.self, forKey: .group)
        self.memberCount = try container.decode(Int.self, forKey: .memberCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.group, forKey: .group)
        try container.encode(self.memberCount, forKey: .memberCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case group
        case memberCount = "member_count"
    }
}