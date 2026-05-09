import Foundation

public struct PingRes: Codable, Hashable, Sendable {
    public let response: String
    public let nonce: String
    public let workflowTimestamp: String
    public let activityTimestamp: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        response: String,
        nonce: String,
        workflowTimestamp: String,
        activityTimestamp: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.response = response
        self.nonce = nonce
        self.workflowTimestamp = workflowTimestamp
        self.activityTimestamp = activityTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.response = try container.decode(String.self, forKey: .response)
        self.nonce = try container.decode(String.self, forKey: .nonce)
        self.workflowTimestamp = try container.decode(String.self, forKey: .workflowTimestamp)
        self.activityTimestamp = try container.decode(String.self, forKey: .activityTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.response, forKey: .response)
        try container.encode(self.nonce, forKey: .nonce)
        try container.encode(self.workflowTimestamp, forKey: .workflowTimestamp)
        try container.encode(self.activityTimestamp, forKey: .activityTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case response
        case nonce
        case workflowTimestamp = "workflow_timestamp"
        case activityTimestamp = "activity_timestamp"
    }
}