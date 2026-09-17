import Foundation

public struct TaxRule1: Codable, Hashable, Sendable {
    public let exportRefSageItemId: String?
    public let name: String
    public let percentage: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        exportRefSageItemId: String? = nil,
        name: String,
        percentage: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.exportRefSageItemId = exportRefSageItemId
        self.name = name
        self.percentage = percentage
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.name = try container.decode(String.self, forKey: .name)
        self.percentage = try container.decode(Double.self, forKey: .percentage)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.percentage, forKey: .percentage)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case exportRefSageItemId = "export_ref__sage__item_id"
        case name
        case percentage
    }
}