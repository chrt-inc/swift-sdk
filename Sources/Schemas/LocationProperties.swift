import Foundation

/// Properties for GeoJSON Feature objects
public struct LocationProperties: Codable, Hashable, Sendable {
    public let address: Nullable<String>?
    public let name: Nullable<String>?
    public let mapboxId: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address: Nullable<String>? = nil,
        name: Nullable<String>? = nil,
        mapboxId: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address = address
        self.name = name
        self.mapboxId = mapboxId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try container.decodeNullableIfPresent(String.self, forKey: .address)
        self.name = try container.decodeNullableIfPresent(String.self, forKey: .name)
        self.mapboxId = try container.decodeNullableIfPresent(String.self, forKey: .mapboxId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeNullableIfPresent(self.address, forKey: .address)
        try container.encodeNullableIfPresent(self.name, forKey: .name)
        try container.encodeNullableIfPresent(self.mapboxId, forKey: .mapboxId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case name
        case mapboxId = "mapbox_id"
    }
}