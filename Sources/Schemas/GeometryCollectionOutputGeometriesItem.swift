import Foundation

public enum GeometryCollectionOutputGeometriesItem: Codable, Hashable, Sendable {
    case geometryCollection(GeometryCollection)
    case lineString(LineString)
    case multiLineString(MultiLineString)
    case multiPoint(MultiPoint)
    case multiPolygon(MultiPolygon)
    case point(Point)
    case polygon(Polygon)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let discriminant = try container.decode(String.self, forKey: .type)
        switch discriminant {
        case "GeometryCollection":
            self = .geometryCollection(try GeometryCollection(from: decoder))
        case "LineString":
            self = .lineString(try LineString(from: decoder))
        case "MultiLineString":
            self = .multiLineString(try MultiLineString(from: decoder))
        case "MultiPoint":
            self = .multiPoint(try MultiPoint(from: decoder))
        case "MultiPolygon":
            self = .multiPolygon(try MultiPolygon(from: decoder))
        case "Point":
            self = .point(try Point(from: decoder))
        case "Polygon":
            self = .polygon(try Polygon(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unknown shape discriminant value: \(discriminant)"
                )
            )
        }
    }

    public func encode(to encoder: Encoder) throws -> Void {
        switch self {
        case .geometryCollection(let data):
            try data.encode(to: encoder)
        case .lineString(let data):
            try data.encode(to: encoder)
        case .multiLineString(let data):
            try data.encode(to: encoder)
        case .multiPoint(let data):
            try data.encode(to: encoder)
        case .multiPolygon(let data):
            try data.encode(to: encoder)
        case .point(let data):
            try data.encode(to: encoder)
        case .polygon(let data):
            try data.encode(to: encoder)
        }
    }

    public struct GeometryCollection: Codable, Hashable, Sendable {
        public let type: String = "GeometryCollection"
        public let bbox: [JSONValue]?
        public let geometries: [GeometryCollectionOutputGeometriesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bbox: [JSONValue]? = nil,
            geometries: [GeometryCollectionOutputGeometriesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bbox = bbox
            self.geometries = geometries
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bbox = try container.decodeIfPresent([JSONValue].self, forKey: .bbox)
            self.geometries = try container.decode([GeometryCollectionOutputGeometriesItem].self, forKey: .geometries)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.type, forKey: .type)
            try container.encodeIfPresent(self.bbox, forKey: .bbox)
            try container.encode(self.geometries, forKey: .geometries)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case bbox
            case geometries
        }
    }

    public struct LineString: Codable, Hashable, Sendable {
        public let type: String = "LineString"
        public let bbox: [JSONValue]?
        public let coordinates: [LineStringCoordinatesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bbox: [JSONValue]? = nil,
            coordinates: [LineStringCoordinatesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bbox = bbox
            self.coordinates = coordinates
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bbox = try container.decodeIfPresent([JSONValue].self, forKey: .bbox)
            self.coordinates = try container.decode([LineStringCoordinatesItem].self, forKey: .coordinates)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.type, forKey: .type)
            try container.encodeIfPresent(self.bbox, forKey: .bbox)
            try container.encode(self.coordinates, forKey: .coordinates)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case bbox
            case coordinates
        }
    }

    public struct MultiLineString: Codable, Hashable, Sendable {
        public let type: String = "MultiLineString"
        public let bbox: [JSONValue]?
        public let coordinates: [[MultiLineStringCoordinatesItemItem]]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bbox: [JSONValue]? = nil,
            coordinates: [[MultiLineStringCoordinatesItemItem]],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bbox = bbox
            self.coordinates = coordinates
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bbox = try container.decodeIfPresent([JSONValue].self, forKey: .bbox)
            self.coordinates = try container.decode([[MultiLineStringCoordinatesItemItem]].self, forKey: .coordinates)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.type, forKey: .type)
            try container.encodeIfPresent(self.bbox, forKey: .bbox)
            try container.encode(self.coordinates, forKey: .coordinates)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case bbox
            case coordinates
        }
    }

    public struct MultiPoint: Codable, Hashable, Sendable {
        public let type: String = "MultiPoint"
        public let bbox: [JSONValue]?
        public let coordinates: [MultiPointCoordinatesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bbox: [JSONValue]? = nil,
            coordinates: [MultiPointCoordinatesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bbox = bbox
            self.coordinates = coordinates
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bbox = try container.decodeIfPresent([JSONValue].self, forKey: .bbox)
            self.coordinates = try container.decode([MultiPointCoordinatesItem].self, forKey: .coordinates)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.type, forKey: .type)
            try container.encodeIfPresent(self.bbox, forKey: .bbox)
            try container.encode(self.coordinates, forKey: .coordinates)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case bbox
            case coordinates
        }
    }

    public struct MultiPolygon: Codable, Hashable, Sendable {
        public let type: String = "MultiPolygon"
        public let bbox: [JSONValue]?
        public let coordinates: [[[MultiPolygonCoordinatesItemItemItem]]]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bbox: [JSONValue]? = nil,
            coordinates: [[[MultiPolygonCoordinatesItemItemItem]]],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bbox = bbox
            self.coordinates = coordinates
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bbox = try container.decodeIfPresent([JSONValue].self, forKey: .bbox)
            self.coordinates = try container.decode([[[MultiPolygonCoordinatesItemItemItem]]].self, forKey: .coordinates)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.type, forKey: .type)
            try container.encodeIfPresent(self.bbox, forKey: .bbox)
            try container.encode(self.coordinates, forKey: .coordinates)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case bbox
            case coordinates
        }
    }

    public struct Point: Codable, Hashable, Sendable {
        public let type: String = "Point"
        public let bbox: [JSONValue]?
        public let coordinates: Coordinates
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bbox: [JSONValue]? = nil,
            coordinates: Coordinates,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bbox = bbox
            self.coordinates = coordinates
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bbox = try container.decodeIfPresent([JSONValue].self, forKey: .bbox)
            self.coordinates = try container.decode(Coordinates.self, forKey: .coordinates)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.type, forKey: .type)
            try container.encodeIfPresent(self.bbox, forKey: .bbox)
            try container.encode(self.coordinates, forKey: .coordinates)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case bbox
            case coordinates
        }
    }

    public struct Polygon: Codable, Hashable, Sendable {
        public let type: String = "Polygon"
        public let bbox: [JSONValue]?
        public let coordinates: [[PolygonCoordinatesItemItem]]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bbox: [JSONValue]? = nil,
            coordinates: [[PolygonCoordinatesItemItem]],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bbox = bbox
            self.coordinates = coordinates
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bbox = try container.decodeIfPresent([JSONValue].self, forKey: .bbox)
            self.coordinates = try container.decode([[PolygonCoordinatesItemItem]].self, forKey: .coordinates)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.type, forKey: .type)
            try container.encodeIfPresent(self.bbox, forKey: .bbox)
            try container.encode(self.coordinates, forKey: .coordinates)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case bbox
            case coordinates
        }
    }

    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
    }
}