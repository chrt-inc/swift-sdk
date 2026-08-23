import Foundation

public struct OrderEventActor1: Codable, Hashable, Sendable {
    /// Must be a string starting with `org_`
    public let orgId: String?
    public let system: OrderEventSystemActorEnum1?
    /// Must be a string starting with `user_`
    public let userId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orgId: String? = nil,
        system: OrderEventSystemActorEnum1? = nil,
        userId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orgId = orgId
        self.system = system
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orgId = try container.decodeIfPresent(String.self, forKey: .orgId)
        self.system = try container.decodeIfPresent(OrderEventSystemActorEnum1.self, forKey: .system)
        self.userId = try container.decodeIfPresent(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.system, forKey: .system)
        try container.encodeIfPresent(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orgId = "org_id"
        case system
        case userId = "user_id"
    }
}