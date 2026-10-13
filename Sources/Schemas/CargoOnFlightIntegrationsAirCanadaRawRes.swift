import Foundation

public struct CargoOnFlightIntegrationsAirCanadaRawRes: Codable, Hashable, Sendable {
    public let responseBody: JSONValue
    public let statusCode: Int
    public let transactionId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        responseBody: JSONValue,
        statusCode: Int,
        transactionId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.responseBody = responseBody
        self.statusCode = statusCode
        self.transactionId = transactionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.responseBody = try container.decode(JSONValue.self, forKey: .responseBody)
        self.statusCode = try container.decode(Int.self, forKey: .statusCode)
        self.transactionId = try container.decode(String.self, forKey: .transactionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.responseBody, forKey: .responseBody)
        try container.encode(self.statusCode, forKey: .statusCode)
        try container.encode(self.transactionId, forKey: .transactionId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case responseBody = "response_body"
        case statusCode = "status_code"
        case transactionId = "transaction_id"
    }
}