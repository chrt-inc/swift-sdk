import Foundation

public struct OffChrtOrgDataTypeaheadValue: Codable, Hashable, Sendable {
    public let offChrtOrgDataIds: [String]
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        offChrtOrgDataIds: [String],
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.offChrtOrgDataIds = offChrtOrgDataIds
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.offChrtOrgDataIds = try container.decode([String].self, forKey: .offChrtOrgDataIds)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.offChrtOrgDataIds, forKey: .offChrtOrgDataIds)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case offChrtOrgDataIds = "off_chrt_org_data_ids"
        case value
    }
}