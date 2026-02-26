import Foundation

public struct CreateOrgPublicDataRes: Codable, Hashable, Sendable {
    public let orgPublicDataInsertedId: String
    public let orgPrivateDataInsertedId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orgPublicDataInsertedId: String,
        orgPrivateDataInsertedId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orgPublicDataInsertedId = orgPublicDataInsertedId
        self.orgPrivateDataInsertedId = orgPrivateDataInsertedId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orgPublicDataInsertedId = try container.decode(String.self, forKey: .orgPublicDataInsertedId)
        self.orgPrivateDataInsertedId = try container.decodeIfPresent(String.self, forKey: .orgPrivateDataInsertedId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orgPublicDataInsertedId, forKey: .orgPublicDataInsertedId)
        try container.encodeIfPresent(self.orgPrivateDataInsertedId, forKey: .orgPrivateDataInsertedId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orgPublicDataInsertedId = "org_public_data_inserted_id"
        case orgPrivateDataInsertedId = "org_private_data_inserted_id"
    }
}