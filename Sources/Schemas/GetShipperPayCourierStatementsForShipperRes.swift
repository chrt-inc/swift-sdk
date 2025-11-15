import Foundation

public struct GetShipperPayCourierStatementsForShipperRes: Codable, Hashable, Sendable {
    public let statements: [ShipperPayCourierStatement1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        statements: [ShipperPayCourierStatement1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.statements = statements
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.statements = try container.decode([ShipperPayCourierStatement1].self, forKey: .statements)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.statements, forKey: .statements)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case statements
    }
}