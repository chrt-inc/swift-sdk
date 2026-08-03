import Foundation

public struct OrderTemplateNewDateparserResolveRes: Codable, Hashable, Sendable {
    public let dateparserStr: String
    public let resolvedToTimestamp: Date
    /// IANA time zone name (e.g. `America/New_York`).
    public let timeZoneName: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dateparserStr: String,
        resolvedToTimestamp: Date,
        timeZoneName: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dateparserStr = dateparserStr
        self.resolvedToTimestamp = resolvedToTimestamp
        self.timeZoneName = timeZoneName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dateparserStr = try container.decode(String.self, forKey: .dateparserStr)
        self.resolvedToTimestamp = try container.decode(Date.self, forKey: .resolvedToTimestamp)
        self.timeZoneName = try container.decode(String.self, forKey: .timeZoneName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.dateparserStr, forKey: .dateparserStr)
        try container.encode(self.resolvedToTimestamp, forKey: .resolvedToTimestamp)
        try container.encode(self.timeZoneName, forKey: .timeZoneName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dateparserStr = "dateparser_str"
        case resolvedToTimestamp = "resolved_to_timestamp"
        case timeZoneName = "time_zone_name"
    }
}