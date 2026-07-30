import Foundation

public struct TaxRate1: Codable, Hashable, Sendable {
    public let name: String
    public let note: String?
    public let percentage: Double
    public let sageItemId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        note: String? = nil,
        percentage: Double,
        sageItemId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.note = note
        self.percentage = percentage
        self.sageItemId = sageItemId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.note = try container.decodeIfPresent(String.self, forKey: .note)
        self.percentage = try container.decode(Double.self, forKey: .percentage)
        self.sageItemId = try container.decodeIfPresent(String.self, forKey: .sageItemId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.note, forKey: .note)
        try container.encode(self.percentage, forKey: .percentage)
        try container.encodeIfPresent(self.sageItemId, forKey: .sageItemId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case note
        case percentage
        case sageItemId = "sage_item_id"
    }
}