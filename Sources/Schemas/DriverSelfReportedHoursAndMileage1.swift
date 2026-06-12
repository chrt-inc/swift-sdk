import Foundation

public struct DriverSelfReportedHoursAndMileage1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let driverId: String
    public let date: String
    public let hoursWorked: Double?
    public let milesDriven: Double?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let updatedAt: Date
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        driverId: String,
        date: String,
        hoursWorked: Double? = nil,
        milesDriven: Double? = nil,
        orgId: String,
        createdAtTimestamp: Date,
        createdByUserId: String,
        updatedAt: Date,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.driverId = driverId
        self.date = date
        self.hoursWorked = hoursWorked
        self.milesDriven = milesDriven
        self.orgId = orgId
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.updatedAt = updatedAt
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.driverId = try container.decode(String.self, forKey: .driverId)
        self.date = try container.decode(String.self, forKey: .date)
        self.hoursWorked = try container.decodeIfPresent(Double.self, forKey: .hoursWorked)
        self.milesDriven = try container.decodeIfPresent(Double.self, forKey: .milesDriven)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.driverId, forKey: .driverId)
        try container.encode(self.date, forKey: .date)
        try container.encodeIfPresent(self.hoursWorked, forKey: .hoursWorked)
        try container.encodeIfPresent(self.milesDriven, forKey: .milesDriven)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case driverId = "driver_id"
        case date
        case hoursWorked = "hours_worked"
        case milesDriven = "miles_driven"
        case orgId = "org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case updatedAt = "updated_at"
        case id = "_id"
    }
}