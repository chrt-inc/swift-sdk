import Foundation

public struct TimeWindow1: Codable, Hashable, Sendable {
    public let leftBoundaryTimestamp: Date?
    public let rightBoundaryTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        leftBoundaryTimestamp: Date? = nil,
        rightBoundaryTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.leftBoundaryTimestamp = leftBoundaryTimestamp
        self.rightBoundaryTimestamp = rightBoundaryTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.leftBoundaryTimestamp = try container.decodeIfPresent(Date.self, forKey: .leftBoundaryTimestamp)
        self.rightBoundaryTimestamp = try container.decodeIfPresent(Date.self, forKey: .rightBoundaryTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.leftBoundaryTimestamp, forKey: .leftBoundaryTimestamp)
        try container.encodeIfPresent(self.rightBoundaryTimestamp, forKey: .rightBoundaryTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case leftBoundaryTimestamp = "left_boundary_timestamp"
        case rightBoundaryTimestamp = "right_boundary_timestamp"
    }
}