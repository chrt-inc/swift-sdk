import Foundation

public struct OrderEventExpanded1: Codable, Hashable, Sendable {
    public let id: String
    public let action: OrderEventActionEnum1
    public let actor: OrderEventActor1
    public let entities: [OrderEventEntity1]?
    public let orderId: String
    public let orderShortId: String?
    public let orgPublicData: OrgPublicData1?
    public let schemaVersion: Int
    public let timestamp: Date
    public let userName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        action: OrderEventActionEnum1,
        actor: OrderEventActor1,
        entities: [OrderEventEntity1]? = nil,
        orderId: String,
        orderShortId: String? = nil,
        orgPublicData: OrgPublicData1? = nil,
        schemaVersion: Int,
        timestamp: Date,
        userName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.action = action
        self.actor = actor
        self.entities = entities
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.orgPublicData = orgPublicData
        self.schemaVersion = schemaVersion
        self.timestamp = timestamp
        self.userName = userName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.action = try container.decode(OrderEventActionEnum1.self, forKey: .action)
        self.actor = try container.decode(OrderEventActor1.self, forKey: .actor)
        self.entities = try container.decodeIfPresent([OrderEventEntity1].self, forKey: .entities)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decodeIfPresent(String.self, forKey: .orderShortId)
        self.orgPublicData = try container.decodeIfPresent(OrgPublicData1.self, forKey: .orgPublicData)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.userName = try container.decodeIfPresent(String.self, forKey: .userName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.action, forKey: .action)
        try container.encode(self.actor, forKey: .actor)
        try container.encodeIfPresent(self.entities, forKey: .entities)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.orgPublicData, forKey: .orgPublicData)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.timestamp, forKey: .timestamp)
        try container.encodeIfPresent(self.userName, forKey: .userName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case action
        case actor
        case entities
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case orgPublicData = "org_public_data"
        case schemaVersion = "schema_version"
        case timestamp
        case userName = "user_name"
    }
}