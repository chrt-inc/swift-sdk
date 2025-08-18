import Foundation

public struct Cargo1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let cargoType: CargoTypeEnum1
    public let quantity: JSONValue?
    public let weightPounds: JSONValue?
    public let lengthInches: JSONValue?
    public let widthInches: JSONValue?
    public let heightInches: JSONValue?
    public let id: String
    public let orderId: String
    public let orderShortId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        cargoType: CargoTypeEnum1,
        quantity: JSONValue? = nil,
        weightPounds: JSONValue? = nil,
        lengthInches: JSONValue? = nil,
        widthInches: JSONValue? = nil,
        heightInches: JSONValue? = nil,
        id: String,
        orderId: String,
        orderShortId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.cargoType = cargoType
        self.quantity = quantity
        self.weightPounds = weightPounds
        self.lengthInches = lengthInches
        self.widthInches = widthInches
        self.heightInches = heightInches
        self.id = id
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.cargoType = try container.decode(CargoTypeEnum1.self, forKey: .cargoType)
        self.quantity = try container.decodeIfPresent(JSONValue.self, forKey: .quantity)
        self.weightPounds = try container.decodeIfPresent(JSONValue.self, forKey: .weightPounds)
        self.lengthInches = try container.decodeIfPresent(JSONValue.self, forKey: .lengthInches)
        self.widthInches = try container.decodeIfPresent(JSONValue.self, forKey: .widthInches)
        self.heightInches = try container.decodeIfPresent(JSONValue.self, forKey: .heightInches)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.cargoType, forKey: .cargoType)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.weightPounds, forKey: .weightPounds)
        try container.encodeIfPresent(self.lengthInches, forKey: .lengthInches)
        try container.encodeIfPresent(self.widthInches, forKey: .widthInches)
        try container.encodeIfPresent(self.heightInches, forKey: .heightInches)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case cargoType = "cargo_type"
        case quantity
        case weightPounds = "weight_pounds"
        case lengthInches = "length_inches"
        case widthInches = "width_inches"
        case heightInches = "height_inches"
        case id = "_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
    }
}