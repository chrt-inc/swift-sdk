import Foundation

public struct WebcargoCommodityClass: Codable, Hashable, Sendable {
    public let classificationCode: String?
    public let commodityCategoryCode: String?
    public let name: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        classificationCode: String? = nil,
        commodityCategoryCode: String? = nil,
        name: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.classificationCode = classificationCode
        self.commodityCategoryCode = commodityCategoryCode
        self.name = name
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.classificationCode = try container.decodeIfPresent(String.self, forKey: .classificationCode)
        self.commodityCategoryCode = try container.decodeIfPresent(String.self, forKey: .commodityCategoryCode)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.classificationCode, forKey: .classificationCode)
        try container.encodeIfPresent(self.commodityCategoryCode, forKey: .commodityCategoryCode)
        try container.encodeIfPresent(self.name, forKey: .name)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case classificationCode = "classification_code"
        case commodityCategoryCode = "commodity_category_code"
        case name
    }
}