import Foundation

public struct Cargo1: Codable, Hashable, Sendable {
    public let id: String
    public let cargoType: CargoTypeEnum1
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let deliveredAtTimestamp: Date?
    public let description: String?
    public let deviceIds: [String]?
    public let draftStartedAtTimestamp: Date
    public let exceptionAtTimestamp: Date?
    public let heightInches: Double?
    public let inTransitAtTimestamp: Date?
    public let lengthInches: Double?
    public let orderId: String
    public let orderShortId: String
    public let quantity: Int?
    public let schemaVersion: Int
    public let skippedAtTimestamp: Date?
    public let stackable: Bool?
    public let stagedAtTimestamp: Date?
    public let status: CargoStatusEnum1?
    public let turnable: Bool?
    public let weightPounds: Double?
    public let widthInches: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        cargoType: CargoTypeEnum1,
        createdByOrgId: String,
        createdByUserId: String,
        deliveredAtTimestamp: Date? = nil,
        description: String? = nil,
        deviceIds: [String]? = nil,
        draftStartedAtTimestamp: Date,
        exceptionAtTimestamp: Date? = nil,
        heightInches: Double? = nil,
        inTransitAtTimestamp: Date? = nil,
        lengthInches: Double? = nil,
        orderId: String,
        orderShortId: String,
        quantity: Int? = nil,
        schemaVersion: Int,
        skippedAtTimestamp: Date? = nil,
        stackable: Bool? = nil,
        stagedAtTimestamp: Date? = nil,
        status: CargoStatusEnum1? = nil,
        turnable: Bool? = nil,
        weightPounds: Double? = nil,
        widthInches: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.cargoType = cargoType
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.deliveredAtTimestamp = deliveredAtTimestamp
        self.description = description
        self.deviceIds = deviceIds
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.heightInches = heightInches
        self.inTransitAtTimestamp = inTransitAtTimestamp
        self.lengthInches = lengthInches
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.quantity = quantity
        self.schemaVersion = schemaVersion
        self.skippedAtTimestamp = skippedAtTimestamp
        self.stackable = stackable
        self.stagedAtTimestamp = stagedAtTimestamp
        self.status = status
        self.turnable = turnable
        self.weightPounds = weightPounds
        self.widthInches = widthInches
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.cargoType = try container.decode(CargoTypeEnum1.self, forKey: .cargoType)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.deliveredAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .deliveredAtTimestamp)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.deviceIds = try container.decodeIfPresent([String].self, forKey: .deviceIds)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.heightInches = try container.decodeIfPresent(Double.self, forKey: .heightInches)
        self.inTransitAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inTransitAtTimestamp)
        self.lengthInches = try container.decodeIfPresent(Double.self, forKey: .lengthInches)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.skippedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .skippedAtTimestamp)
        self.stackable = try container.decodeIfPresent(Bool.self, forKey: .stackable)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.status = try container.decodeIfPresent(CargoStatusEnum1.self, forKey: .status)
        self.turnable = try container.decodeIfPresent(Bool.self, forKey: .turnable)
        self.weightPounds = try container.decodeIfPresent(Double.self, forKey: .weightPounds)
        self.widthInches = try container.decodeIfPresent(Double.self, forKey: .widthInches)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.cargoType, forKey: .cargoType)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.deliveredAtTimestamp, forKey: .deliveredAtTimestamp)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.deviceIds, forKey: .deviceIds)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.heightInches, forKey: .heightInches)
        try container.encodeIfPresent(self.inTransitAtTimestamp, forKey: .inTransitAtTimestamp)
        try container.encodeIfPresent(self.lengthInches, forKey: .lengthInches)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.skippedAtTimestamp, forKey: .skippedAtTimestamp)
        try container.encodeIfPresent(self.stackable, forKey: .stackable)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.turnable, forKey: .turnable)
        try container.encodeIfPresent(self.weightPounds, forKey: .weightPounds)
        try container.encodeIfPresent(self.widthInches, forKey: .widthInches)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case cargoType = "cargo_type"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case deliveredAtTimestamp = "delivered_at_timestamp"
        case description
        case deviceIds = "device_ids"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case heightInches = "height_inches"
        case inTransitAtTimestamp = "in_transit_at_timestamp"
        case lengthInches = "length_inches"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case quantity
        case schemaVersion = "schema_version"
        case skippedAtTimestamp = "skipped_at_timestamp"
        case stackable
        case stagedAtTimestamp = "staged_at_timestamp"
        case status
        case turnable
        case weightPounds = "weight_pounds"
        case widthInches = "width_inches"
    }
}