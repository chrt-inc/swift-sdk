import Foundation

public struct OrgInfoResponse: Codable, Hashable, Sendable {
    public let adminDeleteEnabled: Bool
    public let createdAt: Int
    public let hasImage: Bool
    /// Must be a string starting with `org_`
    public let id: String
    public let imageUrl: String?
    public let maxAllowedMemberships: Int
    public let membersCount: Int?
    public let name: String
    public let publicMetadata: [String: JSONValue]
    public let slug: String?
    public let updatedAt: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        adminDeleteEnabled: Bool,
        createdAt: Int,
        hasImage: Bool,
        id: String,
        imageUrl: String? = nil,
        maxAllowedMemberships: Int,
        membersCount: Int? = nil,
        name: String,
        publicMetadata: [String: JSONValue],
        slug: String? = nil,
        updatedAt: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.adminDeleteEnabled = adminDeleteEnabled
        self.createdAt = createdAt
        self.hasImage = hasImage
        self.id = id
        self.imageUrl = imageUrl
        self.maxAllowedMemberships = maxAllowedMemberships
        self.membersCount = membersCount
        self.name = name
        self.publicMetadata = publicMetadata
        self.slug = slug
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.adminDeleteEnabled = try container.decode(Bool.self, forKey: .adminDeleteEnabled)
        self.createdAt = try container.decode(Int.self, forKey: .createdAt)
        self.hasImage = try container.decode(Bool.self, forKey: .hasImage)
        self.id = try container.decode(String.self, forKey: .id)
        self.imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        self.maxAllowedMemberships = try container.decode(Int.self, forKey: .maxAllowedMemberships)
        self.membersCount = try container.decodeIfPresent(Int.self, forKey: .membersCount)
        self.name = try container.decode(String.self, forKey: .name)
        self.publicMetadata = try container.decode([String: JSONValue].self, forKey: .publicMetadata)
        self.slug = try container.decodeIfPresent(String.self, forKey: .slug)
        self.updatedAt = try container.decode(Int.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.adminDeleteEnabled, forKey: .adminDeleteEnabled)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.hasImage, forKey: .hasImage)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.imageUrl, forKey: .imageUrl)
        try container.encode(self.maxAllowedMemberships, forKey: .maxAllowedMemberships)
        try container.encodeIfPresent(self.membersCount, forKey: .membersCount)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.publicMetadata, forKey: .publicMetadata)
        try container.encodeIfPresent(self.slug, forKey: .slug)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case adminDeleteEnabled = "admin_delete_enabled"
        case createdAt = "created_at"
        case hasImage = "has_image"
        case id
        case imageUrl = "image_url"
        case maxAllowedMemberships = "max_allowed_memberships"
        case membersCount = "members_count"
        case name
        case publicMetadata = "public_metadata"
        case slug
        case updatedAt = "updated_at"
    }
}