import Foundation

public struct CourierPayDriverPayoutClientCreate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let courierPayDriverLineItemGroupIds: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        courierPayDriverLineItemGroupIds: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.courierPayDriverLineItemGroupIds = courierPayDriverLineItemGroupIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.courierPayDriverLineItemGroupIds = try container.decode([String].self, forKey: .courierPayDriverLineItemGroupIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.courierPayDriverLineItemGroupIds, forKey: .courierPayDriverLineItemGroupIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case courierPayDriverLineItemGroupIds = "courier_pay_driver_line_item_group_ids"
    }
}