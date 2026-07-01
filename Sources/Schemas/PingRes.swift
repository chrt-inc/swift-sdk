import Foundation

public struct PingRes: Codable, Hashable, Sendable {
    public let activityTimestamp: String
    public let nonce: String
    public let response: String
    public let workflowTimestamp: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        activityTimestamp: String,
        nonce: String,
        response: String,
        workflowTimestamp: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.activityTimestamp = activityTimestamp
        self.nonce = nonce
        self.response = response
        self.workflowTimestamp = workflowTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.activityTimestamp = try container.decode(String.self, forKey: .activityTimestamp)
        self.nonce = try container.decode(String.self, forKey: .nonce)
        self.response = try container.decode(String.self, forKey: .response)
        self.workflowTimestamp = try container.decode(String.self, forKey: .workflowTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.activityTimestamp, forKey: .activityTimestamp)
        try container.encode(self.nonce, forKey: .nonce)
        try container.encode(self.response, forKey: .response)
        try container.encode(self.workflowTimestamp, forKey: .workflowTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case activityTimestamp = "activity_timestamp"
        case nonce
        case response
        case workflowTimestamp = "workflow_timestamp"
    }
}