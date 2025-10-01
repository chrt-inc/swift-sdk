import Foundation

public struct Task1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let location: Nullable<LocationFeature>
    public let action: Nullable<Action>
    public let shipperContactInfoIds: Nullable<[String]>
    public let arriveBy: Nullable<Date>
    public let arriveAt: Nullable<Date>
    public let comments: Nullable<String>
    public let flightNumber: Nullable<String>
    public let id: String
    public let orderId: String
    public let orderShortId: String
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let orderCancelled: Bool?
    public let completed: Bool?
    public let completedAt: Nullable<Date>?
    public let cargoIds: Nullable<[String]>
    public let milestoneIds: Nullable<[String]>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        location: Nullable<LocationFeature>,
        action: Nullable<Action>,
        shipperContactInfoIds: Nullable<[String]>,
        arriveBy: Nullable<Date>,
        arriveAt: Nullable<Date>,
        comments: Nullable<String>,
        flightNumber: Nullable<String>,
        id: String,
        orderId: String,
        orderShortId: String,
        createdByOrgId: String,
        createdByUserId: String,
        orderCancelled: Bool? = nil,
        completed: Bool? = nil,
        completedAt: Nullable<Date>? = nil,
        cargoIds: Nullable<[String]>,
        milestoneIds: Nullable<[String]>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.location = location
        self.action = action
        self.shipperContactInfoIds = shipperContactInfoIds
        self.arriveBy = arriveBy
        self.arriveAt = arriveAt
        self.comments = comments
        self.flightNumber = flightNumber
        self.id = id
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.orderCancelled = orderCancelled
        self.completed = completed
        self.completedAt = completedAt
        self.cargoIds = cargoIds
        self.milestoneIds = milestoneIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.location = try container.decode(Nullable<LocationFeature>.self, forKey: .location)
        self.action = try container.decode(Nullable<Action>.self, forKey: .action)
        self.shipperContactInfoIds = try container.decode(Nullable<[String]>.self, forKey: .shipperContactInfoIds)
        self.arriveBy = try container.decode(Nullable<Date>.self, forKey: .arriveBy)
        self.arriveAt = try container.decode(Nullable<Date>.self, forKey: .arriveAt)
        self.comments = try container.decode(Nullable<String>.self, forKey: .comments)
        self.flightNumber = try container.decode(Nullable<String>.self, forKey: .flightNumber)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.completed = try container.decodeIfPresent(Bool.self, forKey: .completed)
        self.completedAt = try container.decodeNullableIfPresent(Date.self, forKey: .completedAt)
        self.cargoIds = try container.decode(Nullable<[String]>.self, forKey: .cargoIds)
        self.milestoneIds = try container.decode(Nullable<[String]>.self, forKey: .milestoneIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.location, forKey: .location)
        try container.encode(self.action, forKey: .action)
        try container.encode(self.shipperContactInfoIds, forKey: .shipperContactInfoIds)
        try container.encode(self.arriveBy, forKey: .arriveBy)
        try container.encode(self.arriveAt, forKey: .arriveAt)
        try container.encode(self.comments, forKey: .comments)
        try container.encode(self.flightNumber, forKey: .flightNumber)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
        try container.encodeIfPresent(self.completed, forKey: .completed)
        try container.encodeNullableIfPresent(self.completedAt, forKey: .completedAt)
        try container.encode(self.cargoIds, forKey: .cargoIds)
        try container.encode(self.milestoneIds, forKey: .milestoneIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case location
        case action
        case shipperContactInfoIds = "shipper_contact_info_ids"
        case arriveBy = "arrive_by"
        case arriveAt = "arrive_at"
        case comments
        case flightNumber = "flight_number"
        case id = "_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case orderCancelled = "order_cancelled"
        case completed
        case completedAt = "completed_at"
        case cargoIds = "cargo_ids"
        case milestoneIds = "milestone_ids"
    }
}