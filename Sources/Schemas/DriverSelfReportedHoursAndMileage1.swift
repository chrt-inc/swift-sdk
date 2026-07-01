import Foundation

public struct DriverSelfReportedHoursAndMileage1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let date: String
    public let driverId: String
    public let hoursWorked: Double?
    public let milesDriven: Double?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let updatedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        createdByUserId: String,
        date: String,
        driverId: String,
        hoursWorked: Double? = nil,
        milesDriven: Double? = nil,
        orgId: String,
        schemaVersion: Int,
        updatedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.date = date
        self.driverId = driverId
        self.hoursWorked = hoursWorked
        self.milesDriven = milesDriven
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.date = try container.decode(String.self, forKey: .date)
        self.driverId = try container.decode(String.self, forKey: .driverId)
        self.hoursWorked = try container.decodeIfPresent(Double.self, forKey: .hoursWorked)
        self.milesDriven = try container.decodeIfPresent(Double.self, forKey: .milesDriven)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.driverId, forKey: .driverId)
        try container.encodeIfPresent(self.hoursWorked, forKey: .hoursWorked)
        try container.encodeIfPresent(self.milesDriven, forKey: .milesDriven)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case date
        case driverId = "driver_id"
        case hoursWorked = "hours_worked"
        case milesDriven = "miles_driven"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case updatedAt = "updated_at"
    }
}