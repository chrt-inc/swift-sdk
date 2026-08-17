import Foundation

/// Known fields from an Atlas shipment payload, retaining all other fields.
public struct AtlasOrderResponse1: Codable, Hashable, Sendable {
    public let clientReference: String?
    public let dateCreated: String?
    public let dateEnd: String?
    public let destination: String?
    public let id: String
    public let numStops: Int?
    public let origin: String?
    public let status: String?
    public let stops: [AtlasStopResponse1]?
    public let trailer: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clientReference: String? = nil,
        dateCreated: String? = nil,
        dateEnd: String? = nil,
        destination: String? = nil,
        id: String,
        numStops: Int? = nil,
        origin: String? = nil,
        status: String? = nil,
        stops: [AtlasStopResponse1]? = nil,
        trailer: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clientReference = clientReference
        self.dateCreated = dateCreated
        self.dateEnd = dateEnd
        self.destination = destination
        self.id = id
        self.numStops = numStops
        self.origin = origin
        self.status = status
        self.stops = stops
        self.trailer = trailer
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clientReference = try container.decodeIfPresent(String.self, forKey: .clientReference)
        self.dateCreated = try container.decodeIfPresent(String.self, forKey: .dateCreated)
        self.dateEnd = try container.decodeIfPresent(String.self, forKey: .dateEnd)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.id = try container.decode(String.self, forKey: .id)
        self.numStops = try container.decodeIfPresent(Int.self, forKey: .numStops)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.stops = try container.decodeIfPresent([AtlasStopResponse1].self, forKey: .stops)
        self.trailer = try container.decodeIfPresent(String.self, forKey: .trailer)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clientReference, forKey: .clientReference)
        try container.encodeIfPresent(self.dateCreated, forKey: .dateCreated)
        try container.encodeIfPresent(self.dateEnd, forKey: .dateEnd)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.numStops, forKey: .numStops)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.stops, forKey: .stops)
        try container.encodeIfPresent(self.trailer, forKey: .trailer)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clientReference
        case dateCreated
        case dateEnd
        case destination
        case id
        case numStops
        case origin
        case status
        case stops
        case trailer
    }
}