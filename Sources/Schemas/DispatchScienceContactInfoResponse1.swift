import Foundation

public struct DispatchScienceContactInfoResponse1: Codable, Hashable, Sendable {
    public let email: String?
    public let id: String?
    public let language: String?
    public let name: String?
    public let phoneNumber: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        email: String? = nil,
        id: String? = nil,
        language: String? = nil,
        name: String? = nil,
        phoneNumber: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.email = email
        self.id = id
        self.language = language
        self.name = name
        self.phoneNumber = phoneNumber
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.language = try container.decodeIfPresent(String.self, forKey: .language)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.language, forKey: .language)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case id
        case language
        case name
        case phoneNumber
    }
}