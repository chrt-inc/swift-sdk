import Foundation

public struct TimeWindow1: Codable, Hashable, Sendable {
    public let leftBoundaryTime: String?
    public let rightBoundaryTime: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        leftBoundaryTime: String? = nil,
        rightBoundaryTime: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.leftBoundaryTime = leftBoundaryTime
        self.rightBoundaryTime = rightBoundaryTime
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.leftBoundaryTime = try container.decodeIfPresent(String.self, forKey: .leftBoundaryTime)
        self.rightBoundaryTime = try container.decodeIfPresent(String.self, forKey: .rightBoundaryTime)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.leftBoundaryTime, forKey: .leftBoundaryTime)
        try container.encodeIfPresent(self.rightBoundaryTime, forKey: .rightBoundaryTime)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case leftBoundaryTime = "left_boundary_time"
        case rightBoundaryTime = "right_boundary_time"
    }
}