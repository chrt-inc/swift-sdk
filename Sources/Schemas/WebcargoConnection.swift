import Foundation

public struct WebcargoConnection: Codable, Hashable, Sendable {
    public let generalCharges: [WebcargoFee]?
    public let segments: [WebcargoSegment]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        generalCharges: [WebcargoFee]? = nil,
        segments: [WebcargoSegment]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.generalCharges = generalCharges
        self.segments = segments
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.generalCharges = try container.decodeIfPresent([WebcargoFee].self, forKey: .generalCharges)
        self.segments = try container.decodeIfPresent([WebcargoSegment].self, forKey: .segments)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.generalCharges, forKey: .generalCharges)
        try container.encodeIfPresent(self.segments, forKey: .segments)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case generalCharges = "general_charges"
        case segments
    }
}