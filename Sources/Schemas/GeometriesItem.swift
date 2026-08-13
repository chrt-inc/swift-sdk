import Foundation

public indirect enum GeometriesItem: Codable, Hashable, Sendable {
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
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .geometryCollection(let data):
            try container.encode("GeometryCollection", forKey: .type)
            try data.encode(to: encoder)
        case .lineString(let data):
            try container.encode("LineString", forKey: .type)
            try data.encode(to: encoder)
        case .multiLineString(let data):
            try container.encode("MultiLineString", forKey: .type)
            try data.encode(to: encoder)
        case .multiPoint(let data):
            try container.encode("MultiPoint", forKey: .type)
            try data.encode(to: encoder)
        case .multiPolygon(let data):
            try container.encode("MultiPolygon", forKey: .type)
            try data.encode(to: encoder)
        case .point(let data):
            try container.encode("Point", forKey: .type)
            try data.encode(to: encoder)
        case .polygon(let data):
            try container.encode("Polygon", forKey: .type)
            try data.encode(to: encoder)
        }
    }

    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
    }
}