import Foundation

public struct OrderTemplateNewDateparserResolveRes: Codable, Hashable, Sendable {
    public let anchorTimestamp: Date
    public let dateparserStr: String
    public let dateparserStrHasTimeZone: Bool
    public let resolvedToTimestamp: Date
    /// IANA time zone name (e.g. `America/New_York`).
    public let timeZoneName: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        anchorTimestamp: Date,
        dateparserStr: String,
        dateparserStrHasTimeZone: Bool,
        resolvedToTimestamp: Date,
        timeZoneName: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.anchorTimestamp = anchorTimestamp
        self.dateparserStr = dateparserStr
        self.dateparserStrHasTimeZone = dateparserStrHasTimeZone
        self.resolvedToTimestamp = resolvedToTimestamp
        self.timeZoneName = timeZoneName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.anchorTimestamp = try container.decode(Date.self, forKey: .anchorTimestamp)
        self.dateparserStr = try container.decode(String.self, forKey: .dateparserStr)
        self.dateparserStrHasTimeZone = try container.decode(Bool.self, forKey: .dateparserStrHasTimeZone)
        self.resolvedToTimestamp = try container.decode(Date.self, forKey: .resolvedToTimestamp)
        self.timeZoneName = try container.decode(String.self, forKey: .timeZoneName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.anchorTimestamp, forKey: .anchorTimestamp)
        try container.encode(self.dateparserStr, forKey: .dateparserStr)
        try container.encode(self.dateparserStrHasTimeZone, forKey: .dateparserStrHasTimeZone)
        try container.encode(self.resolvedToTimestamp, forKey: .resolvedToTimestamp)
        try container.encode(self.timeZoneName, forKey: .timeZoneName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case anchorTimestamp = "anchor_timestamp"
        case dateparserStr = "dateparser_str"
        case dateparserStrHasTimeZone = "dateparser_str_has_time_zone"
        case resolvedToTimestamp = "resolved_to_timestamp"
        case timeZoneName = "time_zone_name"
    }
}