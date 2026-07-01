import Foundation

public struct WebcargoDimension: Codable, Hashable, Sendable {
    public let height: WebcargoValueWithUnit?
    public let length: WebcargoValueWithUnit?
    public let width: WebcargoValueWithUnit?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        height: WebcargoValueWithUnit? = nil,
        length: WebcargoValueWithUnit? = nil,
        width: WebcargoValueWithUnit? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.height = height
        self.length = length
        self.width = width
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.height = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .height)
        self.length = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .length)
        self.width = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .width)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.height, forKey: .height)
        try container.encodeIfPresent(self.length, forKey: .length)
        try container.encodeIfPresent(self.width, forKey: .width)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case height
        case length
        case width
    }
}