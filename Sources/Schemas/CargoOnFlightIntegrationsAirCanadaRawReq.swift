import Foundation

public struct CargoOnFlightIntegrationsAirCanadaRawReq: Codable, Hashable, Sendable {
    public let method: Method
    public let path: String
    public let queryParams: [String: String]?
    public let requestBody: [String: JSONValue]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        method: Method,
        path: String,
        queryParams: [String: String]? = nil,
        requestBody: [String: JSONValue]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.method = method
        self.path = path
        self.queryParams = queryParams
        self.requestBody = requestBody
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.method = try container.decode(Method.self, forKey: .method)
        self.path = try container.decode(String.self, forKey: .path)
        self.queryParams = try container.decodeIfPresent([String: String].self, forKey: .queryParams)
        self.requestBody = try container.decodeIfPresent([String: JSONValue].self, forKey: .requestBody)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.method, forKey: .method)
        try container.encode(self.path, forKey: .path)
        try container.encodeIfPresent(self.queryParams, forKey: .queryParams)
        try container.encodeIfPresent(self.requestBody, forKey: .requestBody)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case method
        case path
        case queryParams = "query_params"
        case requestBody = "request_body"
    }
}