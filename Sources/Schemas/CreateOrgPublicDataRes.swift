import Foundation

public struct CreateOrgPublicDataRes: Codable, Hashable, Sendable {
    public let orgPrivateDataInsertedId: String?
    public let orgPublicDataInsertedId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orgPrivateDataInsertedId: String? = nil,
        orgPublicDataInsertedId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orgPrivateDataInsertedId = orgPrivateDataInsertedId
        self.orgPublicDataInsertedId = orgPublicDataInsertedId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orgPrivateDataInsertedId = try container.decodeIfPresent(String.self, forKey: .orgPrivateDataInsertedId)
        self.orgPublicDataInsertedId = try container.decode(String.self, forKey: .orgPublicDataInsertedId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.orgPrivateDataInsertedId, forKey: .orgPrivateDataInsertedId)
        try container.encode(self.orgPublicDataInsertedId, forKey: .orgPublicDataInsertedId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orgPrivateDataInsertedId = "org_private_data_inserted_id"
        case orgPublicDataInsertedId = "org_public_data_inserted_id"
    }
}