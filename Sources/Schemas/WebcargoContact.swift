import Foundation

public struct WebcargoContact: Codable, Hashable, Sendable {
    public let electronicMail: String?
    public let id: String?
    public let name: String?
    public let telephone: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        electronicMail: String? = nil,
        id: String? = nil,
        name: String? = nil,
        telephone: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.electronicMail = electronicMail
        self.id = id
        self.name = name
        self.telephone = telephone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.electronicMail = try container.decodeIfPresent(String.self, forKey: .electronicMail)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.telephone = try container.decodeIfPresent(String.self, forKey: .telephone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.electronicMail, forKey: .electronicMail)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.telephone, forKey: .telephone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case electronicMail = "electronic_mail"
        case id
        case name
        case telephone
    }
}