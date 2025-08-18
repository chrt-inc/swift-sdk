import Foundation

public struct SetDriverActivationReq: Codable, Hashable, Sendable {
    public let driverObjectId: String
    public let active: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        driverObjectId: String,
        active: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.driverObjectId = driverObjectId
        self.active = active
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.driverObjectId = try container.decode(String.self, forKey: .driverObjectId)
        self.active = try container.decode(Bool.self, forKey: .active)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.driverObjectId, forKey: .driverObjectId)
        try container.encode(self.active, forKey: .active)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case driverObjectId = "driver_object_id"
        case active
    }
}