import Foundation

public struct CustodyPartyExpanded: Codable, Hashable, Sendable {
    public let contact: Contact1?
    public let contactId: String?
    public let name: String?
    public let note: String?
    /// Must be a string starting with `user_`
    public let userId: String?
    public let userName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contact: Contact1? = nil,
        contactId: String? = nil,
        name: String? = nil,
        note: String? = nil,
        userId: String? = nil,
        userName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contact = contact
        self.contactId = contactId
        self.name = name
        self.note = note
        self.userId = userId
        self.userName = userName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contact = try container.decodeIfPresent(Contact1.self, forKey: .contact)
        self.contactId = try container.decodeIfPresent(String.self, forKey: .contactId)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.note = try container.decodeIfPresent(String.self, forKey: .note)
        self.userId = try container.decodeIfPresent(String.self, forKey: .userId)
        self.userName = try container.decodeIfPresent(String.self, forKey: .userName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.contact, forKey: .contact)
        try container.encodeIfPresent(self.contactId, forKey: .contactId)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.note, forKey: .note)
        try container.encodeIfPresent(self.userId, forKey: .userId)
        try container.encodeIfPresent(self.userName, forKey: .userName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contact
        case contactId = "contact_id"
        case name
        case note
        case userId = "user_id"
        case userName = "user_name"
    }
}