import Foundation

public struct ClerkOrgData: Codable, Hashable, Sendable {
    /// Must be a string starting with `org_`
    public let id: String?
    public let rol: String?
    public let slg: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String? = nil,
        rol: String? = nil,
        slg: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.rol = rol
        self.slg = slg
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.rol = try container.decodeIfPresent(String.self, forKey: .rol)
        self.slg = try container.decodeIfPresent(String.self, forKey: .slg)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.rol, forKey: .rol)
        try container.encodeIfPresent(self.slg, forKey: .slg)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case rol
        case slg
    }
}