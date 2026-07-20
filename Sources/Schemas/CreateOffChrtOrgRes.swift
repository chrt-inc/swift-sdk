import Foundation

public struct CreateOffChrtOrgRes: Codable, Hashable, Sendable {
    public let connectionId: String?
    public let offChrtOrgDataId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        connectionId: String? = nil,
        offChrtOrgDataId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.connectionId = connectionId
        self.offChrtOrgDataId = offChrtOrgDataId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.connectionId = try container.decodeIfPresent(String.self, forKey: .connectionId)
        self.offChrtOrgDataId = try container.decode(String.self, forKey: .offChrtOrgDataId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.connectionId, forKey: .connectionId)
        try container.encode(self.offChrtOrgDataId, forKey: .offChrtOrgDataId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case connectionId = "connection_id"
        case offChrtOrgDataId = "off_chrt_org_data_id"
    }
}