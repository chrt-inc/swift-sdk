import Foundation

public struct DispatchScienceTimeZoneResponse1: Codable, Hashable, Sendable {
    public let ianaTimeZoneId: String?
    public let isDaylightSavingTime: Bool?
    public let longDisplayName: String?
    public let offset: Double?
    public let shortDisplayName: String?
    public let systemTimeZoneId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ianaTimeZoneId: String? = nil,
        isDaylightSavingTime: Bool? = nil,
        longDisplayName: String? = nil,
        offset: Double? = nil,
        shortDisplayName: String? = nil,
        systemTimeZoneId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ianaTimeZoneId = ianaTimeZoneId
        self.isDaylightSavingTime = isDaylightSavingTime
        self.longDisplayName = longDisplayName
        self.offset = offset
        self.shortDisplayName = shortDisplayName
        self.systemTimeZoneId = systemTimeZoneId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ianaTimeZoneId = try container.decodeIfPresent(String.self, forKey: .ianaTimeZoneId)
        self.isDaylightSavingTime = try container.decodeIfPresent(Bool.self, forKey: .isDaylightSavingTime)
        self.longDisplayName = try container.decodeIfPresent(String.self, forKey: .longDisplayName)
        self.offset = try container.decodeIfPresent(Double.self, forKey: .offset)
        self.shortDisplayName = try container.decodeIfPresent(String.self, forKey: .shortDisplayName)
        self.systemTimeZoneId = try container.decodeIfPresent(String.self, forKey: .systemTimeZoneId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.ianaTimeZoneId, forKey: .ianaTimeZoneId)
        try container.encodeIfPresent(self.isDaylightSavingTime, forKey: .isDaylightSavingTime)
        try container.encodeIfPresent(self.longDisplayName, forKey: .longDisplayName)
        try container.encodeIfPresent(self.offset, forKey: .offset)
        try container.encodeIfPresent(self.shortDisplayName, forKey: .shortDisplayName)
        try container.encodeIfPresent(self.systemTimeZoneId, forKey: .systemTimeZoneId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ianaTimeZoneId
        case isDaylightSavingTime
        case longDisplayName
        case offset
        case shortDisplayName
        case systemTimeZoneId
    }
}