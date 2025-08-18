import Foundation

/// Properties for GeoJSON Feature objects
public struct LocationProperties: Codable, Hashable, Sendable {
    public let address: JSONValue?
    public let name: JSONValue?
    public let mapboxId: JSONValue?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address: JSONValue? = nil,
        name: JSONValue? = nil,
        mapboxId: JSONValue? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address = address
        self.name = name
        self.mapboxId = mapboxId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try container.decodeIfPresent(JSONValue.self, forKey: .address)
        self.name = try container.decodeIfPresent(JSONValue.self, forKey: .name)
        self.mapboxId = try container.decodeIfPresent(JSONValue.self, forKey: .mapboxId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.mapboxId, forKey: .mapboxId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case name
        case mapboxId = "mapbox_id"
    }
}