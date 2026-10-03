import Foundation

public struct CargoAiFwbAndFhlHouseLocations1: Codable, Hashable, Sendable {
    public let portOfDestination: CargoAiFwbAndFhlCode1
    public let portOfOrigin: CargoAiFwbAndFhlCode1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        portOfDestination: CargoAiFwbAndFhlCode1,
        portOfOrigin: CargoAiFwbAndFhlCode1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.portOfDestination = portOfDestination
        self.portOfOrigin = portOfOrigin
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.portOfDestination = try container.decode(CargoAiFwbAndFhlCode1.self, forKey: .portOfDestination)
        self.portOfOrigin = try container.decode(CargoAiFwbAndFhlCode1.self, forKey: .portOfOrigin)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.portOfDestination, forKey: .portOfDestination)
        try container.encode(self.portOfOrigin, forKey: .portOfOrigin)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case portOfDestination = "port_of_destination"
        case portOfOrigin = "port_of_origin"
    }
}