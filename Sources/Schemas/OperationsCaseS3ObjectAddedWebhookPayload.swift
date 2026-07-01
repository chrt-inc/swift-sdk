import Foundation

public struct OperationsCaseS3ObjectAddedWebhookPayload: Codable, Hashable, Sendable {
    /// The case the file was added to
    public let caseId: String
    /// The S3 object metadata document that was added to the case
    public let caseS3ObjectMetadataId: String
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: OperationsCaseFileAdded?
    /// The order associated with the case
    public let orderId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        caseId: String,
        caseS3ObjectMetadataId: String,
        eventTimestamp: Date,
        eventType: OperationsCaseFileAdded? = nil,
        orderId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.caseId = caseId
        self.caseS3ObjectMetadataId = caseS3ObjectMetadataId
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.orderId = orderId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.caseId = try container.decode(String.self, forKey: .caseId)
        self.caseS3ObjectMetadataId = try container.decode(String.self, forKey: .caseS3ObjectMetadataId)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(OperationsCaseFileAdded.self, forKey: .eventType)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.caseId, forKey: .caseId)
        try container.encode(self.caseS3ObjectMetadataId, forKey: .caseS3ObjectMetadataId)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.orderId, forKey: .orderId)
    }

    public enum OperationsCaseFileAdded: String, Codable, Hashable, CaseIterable, Sendable {
        case operationsCaseFileAdded = "operations.case.file_added"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case caseId = "case_id"
        case caseS3ObjectMetadataId = "case_s3_object_metadata_id"
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case orderId = "order_id"
    }
}