import Foundation

public struct WebcargoDimension: Codable, Hashable, Sendable {
    public let width: WebcargoValueWithUnit?
    public let length: WebcargoValueWithUnit?
    public let height: WebcargoValueWithUnit?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        width: WebcargoValueWithUnit? = nil,
        length: WebcargoValueWithUnit? = nil,
        height: WebcargoValueWithUnit? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.width = width
        self.length = length
        self.height = height
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.width = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .width)
        self.length = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .length)
        self.height = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .height)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.width, forKey: .width)
        try container.encodeIfPresent(self.length, forKey: .length)
        try container.encodeIfPresent(self.height, forKey: .height)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case width
        case length
        case height
    }
}