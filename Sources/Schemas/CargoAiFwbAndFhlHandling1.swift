import Foundation

public struct CargoAiFwbAndFhlHandling1: Codable, Hashable, Sendable {
    public let otherServiceInformation: String?
    public let specialHandling: [CargoAiFwbAndFhlCode1]?
    public let specialServiceInformation: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        otherServiceInformation: String? = nil,
        specialHandling: [CargoAiFwbAndFhlCode1]? = nil,
        specialServiceInformation: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.otherServiceInformation = otherServiceInformation
        self.specialHandling = specialHandling
        self.specialServiceInformation = specialServiceInformation
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.otherServiceInformation = try container.decodeIfPresent(String.self, forKey: .otherServiceInformation)
        self.specialHandling = try container.decodeIfPresent([CargoAiFwbAndFhlCode1].self, forKey: .specialHandling)
        self.specialServiceInformation = try container.decodeIfPresent(String.self, forKey: .specialServiceInformation)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.otherServiceInformation, forKey: .otherServiceInformation)
        try container.encodeIfPresent(self.specialHandling, forKey: .specialHandling)
        try container.encodeIfPresent(self.specialServiceInformation, forKey: .specialServiceInformation)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case otherServiceInformation
        case specialHandling
        case specialServiceInformation
    }
}