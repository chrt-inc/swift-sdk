import Foundation

public struct OrderTemplateNewDateTimeWindow1: Codable, Hashable, Sendable {
    public let leftBoundaryDateparserStr: String?
    public let rightBoundaryDateparserStr: String?
    /// IANA time zone name (e.g. `America/New_York`).
    public let timeZoneName: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        leftBoundaryDateparserStr: String? = nil,
        rightBoundaryDateparserStr: String? = nil,
        timeZoneName: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.leftBoundaryDateparserStr = leftBoundaryDateparserStr
        self.rightBoundaryDateparserStr = rightBoundaryDateparserStr
        self.timeZoneName = timeZoneName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.leftBoundaryDateparserStr = try container.decodeIfPresent(String.self, forKey: .leftBoundaryDateparserStr)
        self.rightBoundaryDateparserStr = try container.decodeIfPresent(String.self, forKey: .rightBoundaryDateparserStr)
        self.timeZoneName = try container.decode(String.self, forKey: .timeZoneName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.leftBoundaryDateparserStr, forKey: .leftBoundaryDateparserStr)
        try container.encodeIfPresent(self.rightBoundaryDateparserStr, forKey: .rightBoundaryDateparserStr)
        try container.encode(self.timeZoneName, forKey: .timeZoneName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case leftBoundaryDateparserStr = "left_boundary_dateparser_str"
        case rightBoundaryDateparserStr = "right_boundary_dateparser_str"
        case timeZoneName = "time_zone_name"
    }
}