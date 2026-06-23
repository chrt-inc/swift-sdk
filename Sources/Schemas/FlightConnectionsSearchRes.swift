import Foundation

public struct FlightConnectionsSearchRes: Codable, Hashable, Sendable {
    public let connections: [FlightConnection]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        connections: [FlightConnection]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.connections = connections
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.connections = try container.decodeIfPresent([FlightConnection].self, forKey: .connections)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.connections, forKey: .connections)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case connections
    }
}