import Foundation

public struct CustodyParty1: Codable, Hashable, Sendable {
    public let contactId: String?
    public let name: String?
    public let note: String?
    /// Must be a string starting with `user_`
    public let userId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contactId: String? = nil,
        name: String? = nil,
        note: String? = nil,
        userId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contactId = contactId
        self.name = name
        self.note = note
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contactId = try container.decodeIfPresent(String.self, forKey: .contactId)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.note = try container.decodeIfPresent(String.self, forKey: .note)
        self.userId = try container.decodeIfPresent(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.contactId, forKey: .contactId)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.note, forKey: .note)
        try container.encodeIfPresent(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contactId = "contact_id"
        case name
        case note
        case userId = "user_id"
    }
}