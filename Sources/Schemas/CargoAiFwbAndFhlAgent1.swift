import Foundation

public struct CargoAiFwbAndFhlAgent1: Codable, Hashable, Sendable {
    public let accountNumber: String?
    public let cass: String?
    public let iata: String
    public let name: String
    public let place: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountNumber: String? = nil,
        cass: String? = nil,
        iata: String,
        name: String,
        place: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountNumber = accountNumber
        self.cass = cass
        self.iata = iata
        self.name = name
        self.place = place
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountNumber = try container.decodeIfPresent(String.self, forKey: .accountNumber)
        self.cass = try container.decodeIfPresent(String.self, forKey: .cass)
        self.iata = try container.decode(String.self, forKey: .iata)
        self.name = try container.decode(String.self, forKey: .name)
        self.place = try container.decode(String.self, forKey: .place)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accountNumber, forKey: .accountNumber)
        try container.encodeIfPresent(self.cass, forKey: .cass)
        try container.encode(self.iata, forKey: .iata)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.place, forKey: .place)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountNumber
        case cass
        case iata
        case name
        case place
    }
}