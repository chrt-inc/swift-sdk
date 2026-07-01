import Foundation

public struct OrderTemplateOrgInfo1: Codable, Hashable, Sendable {
    public let companyName: String?
    /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    public let handle: String?
    /// Must be a string starting with `org_`
    public let orgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        companyName: String? = nil,
        handle: String? = nil,
        orgId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.companyName = companyName
        self.handle = handle
        self.orgId = orgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        self.handle = try container.decodeIfPresent(String.self, forKey: .handle)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.companyName, forKey: .companyName)
        try container.encodeIfPresent(self.handle, forKey: .handle)
        try container.encode(self.orgId, forKey: .orgId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case companyName = "company_name"
        case handle
        case orgId = "org_id"
    }
}