import Foundation

public struct FromPayables1: Codable, Hashable, Sendable {
    public let combine: Bool?
    public let margin: Double?
    public let markup: Double?
    public let sageItemId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        combine: Bool? = nil,
        margin: Double? = nil,
        markup: Double? = nil,
        sageItemId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.combine = combine
        self.margin = margin
        self.markup = markup
        self.sageItemId = sageItemId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.combine = try container.decodeIfPresent(Bool.self, forKey: .combine)
        self.margin = try container.decodeIfPresent(Double.self, forKey: .margin)
        self.markup = try container.decodeIfPresent(Double.self, forKey: .markup)
        self.sageItemId = try container.decodeIfPresent(String.self, forKey: .sageItemId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.combine, forKey: .combine)
        try container.encodeIfPresent(self.margin, forKey: .margin)
        try container.encodeIfPresent(self.markup, forKey: .markup)
        try container.encodeIfPresent(self.sageItemId, forKey: .sageItemId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case combine
        case margin
        case markup
        case sageItemId = "sage_item_id"
    }
}