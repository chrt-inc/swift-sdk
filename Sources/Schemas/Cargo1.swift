import Foundation

public struct Cargo1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let cargoType: CargoTypeEnum1
    public let quantity: Int?
    public let weightPounds: Double?
    public let lengthInches: Double?
    public let widthInches: Double?
    public let heightInches: Double?
    public let turnable: Bool?
    public let stackable: Bool?
    public let description: String?
    public let id: String
    public let orderId: String
    public let orderShortId: String
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let deviceIds: [String]?
    public let status: CargoStatusEnum1?
    public let draftStartedAtTimestamp: Date
    public let stagedAtTimestamp: Date?
    public let inTransitAtTimestamp: Date?
    public let deliveredAtTimestamp: Date?
    public let skippedAtTimestamp: Date?
    public let exceptionAtTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        cargoType: CargoTypeEnum1,
        quantity: Int? = nil,
        weightPounds: Double? = nil,
        lengthInches: Double? = nil,
        widthInches: Double? = nil,
        heightInches: Double? = nil,
        turnable: Bool? = nil,
        stackable: Bool? = nil,
        description: String? = nil,
        id: String,
        orderId: String,
        orderShortId: String,
        createdByOrgId: String,
        createdByUserId: String,
        deviceIds: [String]? = nil,
        status: CargoStatusEnum1? = nil,
        draftStartedAtTimestamp: Date,
        stagedAtTimestamp: Date? = nil,
        inTransitAtTimestamp: Date? = nil,
        deliveredAtTimestamp: Date? = nil,
        skippedAtTimestamp: Date? = nil,
        exceptionAtTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.cargoType = cargoType
        self.quantity = quantity
        self.weightPounds = weightPounds
        self.lengthInches = lengthInches
        self.widthInches = widthInches
        self.heightInches = heightInches
        self.turnable = turnable
        self.stackable = stackable
        self.description = description
        self.id = id
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.deviceIds = deviceIds
        self.status = status
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.inTransitAtTimestamp = inTransitAtTimestamp
        self.deliveredAtTimestamp = deliveredAtTimestamp
        self.skippedAtTimestamp = skippedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.cargoType = try container.decode(CargoTypeEnum1.self, forKey: .cargoType)
        self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
        self.weightPounds = try container.decodeIfPresent(Double.self, forKey: .weightPounds)
        self.lengthInches = try container.decodeIfPresent(Double.self, forKey: .lengthInches)
        self.widthInches = try container.decodeIfPresent(Double.self, forKey: .widthInches)
        self.heightInches = try container.decodeIfPresent(Double.self, forKey: .heightInches)
        self.turnable = try container.decodeIfPresent(Bool.self, forKey: .turnable)
        self.stackable = try container.decodeIfPresent(Bool.self, forKey: .stackable)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.deviceIds = try container.decodeIfPresent([String].self, forKey: .deviceIds)
        self.status = try container.decodeIfPresent(CargoStatusEnum1.self, forKey: .status)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.inTransitAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inTransitAtTimestamp)
        self.deliveredAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .deliveredAtTimestamp)
        self.skippedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .skippedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.cargoType, forKey: .cargoType)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.weightPounds, forKey: .weightPounds)
        try container.encodeIfPresent(self.lengthInches, forKey: .lengthInches)
        try container.encodeIfPresent(self.widthInches, forKey: .widthInches)
        try container.encodeIfPresent(self.heightInches, forKey: .heightInches)
        try container.encodeIfPresent(self.turnable, forKey: .turnable)
        try container.encodeIfPresent(self.stackable, forKey: .stackable)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.deviceIds, forKey: .deviceIds)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.inTransitAtTimestamp, forKey: .inTransitAtTimestamp)
        try container.encodeIfPresent(self.deliveredAtTimestamp, forKey: .deliveredAtTimestamp)
        try container.encodeIfPresent(self.skippedAtTimestamp, forKey: .skippedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case cargoType = "cargo_type"
        case quantity
        case weightPounds = "weight_pounds"
        case lengthInches = "length_inches"
        case widthInches = "width_inches"
        case heightInches = "height_inches"
        case turnable
        case stackable
        case description
        case id = "_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case deviceIds = "device_ids"
        case status
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case inTransitAtTimestamp = "in_transit_at_timestamp"
        case deliveredAtTimestamp = "delivered_at_timestamp"
        case skippedAtTimestamp = "skipped_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
    }
}