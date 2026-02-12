import Foundation

public struct OrgInfoResponse: Codable, Hashable, Sendable {
    /// Must be a string starting with `org_`
    public let id: String
    public let name: String
    public let slug: String?
    public let imageUrl: String?
    public let hasImage: Bool
    public let membersCount: Int?
    public let maxAllowedMemberships: Int
    public let adminDeleteEnabled: Bool
    public let publicMetadata: [String: JSONValue]
    public let createdAt: Int
    public let updatedAt: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        slug: String? = nil,
        imageUrl: String? = nil,
        hasImage: Bool,
        membersCount: Int? = nil,
        maxAllowedMemberships: Int,
        adminDeleteEnabled: Bool,
        publicMetadata: [String: JSONValue],
        createdAt: Int,
        updatedAt: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.slug = slug
        self.imageUrl = imageUrl
        self.hasImage = hasImage
        self.membersCount = membersCount
        self.maxAllowedMemberships = maxAllowedMemberships
        self.adminDeleteEnabled = adminDeleteEnabled
        self.publicMetadata = publicMetadata
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.slug = try container.decodeIfPresent(String.self, forKey: .slug)
        self.imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        self.hasImage = try container.decode(Bool.self, forKey: .hasImage)
        self.membersCount = try container.decodeIfPresent(Int.self, forKey: .membersCount)
        self.maxAllowedMemberships = try container.decode(Int.self, forKey: .maxAllowedMemberships)
        self.adminDeleteEnabled = try container.decode(Bool.self, forKey: .adminDeleteEnabled)
        self.publicMetadata = try container.decode([String: JSONValue].self, forKey: .publicMetadata)
        self.createdAt = try container.decode(Int.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Int.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.slug, forKey: .slug)
        try container.encodeIfPresent(self.imageUrl, forKey: .imageUrl)
        try container.encode(self.hasImage, forKey: .hasImage)
        try container.encodeIfPresent(self.membersCount, forKey: .membersCount)
        try container.encode(self.maxAllowedMemberships, forKey: .maxAllowedMemberships)
        try container.encode(self.adminDeleteEnabled, forKey: .adminDeleteEnabled)
        try container.encode(self.publicMetadata, forKey: .publicMetadata)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case slug
        case imageUrl = "image_url"
        case hasImage = "has_image"
        case membersCount = "members_count"
        case maxAllowedMemberships = "max_allowed_memberships"
        case adminDeleteEnabled = "admin_delete_enabled"
        case publicMetadata = "public_metadata"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}