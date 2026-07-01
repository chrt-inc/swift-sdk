import Foundation

public struct ChampConfirmationReceipt1: Codable, Hashable, Sendable {
    public let id: String
    public let airWaybillNumber: String
    public let champId: String
    public let destination: String
    public let messageHeader: CargojsonMessageHeader
    /// Must be a string starting with `org_`
    public let orgId: String?
    public let origin: String
    public let receivedAt: Date
    public let referenceMessageContent: String?
    public let referencedMessageType: String
    public let rejected: Bool
    public let schemaVersion: Int?
    public let taskGroupId: String?
    public let textMessage: String
    public let type: ConfirmationReceipt
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        airWaybillNumber: String,
        champId: String,
        destination: String,
        messageHeader: CargojsonMessageHeader,
        orgId: String? = nil,
        origin: String,
        receivedAt: Date,
        referenceMessageContent: String? = nil,
        referencedMessageType: String,
        rejected: Bool,
        schemaVersion: Int? = nil,
        taskGroupId: String? = nil,
        textMessage: String,
        type: ConfirmationReceipt,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.airWaybillNumber = airWaybillNumber
        self.champId = champId
        self.destination = destination
        self.messageHeader = messageHeader
        self.orgId = orgId
        self.origin = origin
        self.receivedAt = receivedAt
        self.referenceMessageContent = referenceMessageContent
        self.referencedMessageType = referencedMessageType
        self.rejected = rejected
        self.schemaVersion = schemaVersion
        self.taskGroupId = taskGroupId
        self.textMessage = textMessage
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.airWaybillNumber = try container.decode(String.self, forKey: .airWaybillNumber)
        self.champId = try container.decode(String.self, forKey: .champId)
        self.destination = try container.decode(String.self, forKey: .destination)
        self.messageHeader = try container.decode(CargojsonMessageHeader.self, forKey: .messageHeader)
        self.orgId = try container.decodeIfPresent(String.self, forKey: .orgId)
        self.origin = try container.decode(String.self, forKey: .origin)
        self.receivedAt = try container.decode(Date.self, forKey: .receivedAt)
        self.referenceMessageContent = try container.decodeIfPresent(String.self, forKey: .referenceMessageContent)
        self.referencedMessageType = try container.decode(String.self, forKey: .referencedMessageType)
        self.rejected = try container.decode(Bool.self, forKey: .rejected)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.textMessage = try container.decode(String.self, forKey: .textMessage)
        self.type = try container.decode(ConfirmationReceipt.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.airWaybillNumber, forKey: .airWaybillNumber)
        try container.encode(self.champId, forKey: .champId)
        try container.encode(self.destination, forKey: .destination)
        try container.encode(self.messageHeader, forKey: .messageHeader)
        try container.encodeIfPresent(self.orgId, forKey: .orgId)
        try container.encode(self.origin, forKey: .origin)
        try container.encode(self.receivedAt, forKey: .receivedAt)
        try container.encodeIfPresent(self.referenceMessageContent, forKey: .referenceMessageContent)
        try container.encode(self.referencedMessageType, forKey: .referencedMessageType)
        try container.encode(self.rejected, forKey: .rejected)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.textMessage, forKey: .textMessage)
        try container.encode(self.type, forKey: .type)
    }

    public enum ConfirmationReceipt: String, Codable, Hashable, CaseIterable, Sendable {
        case confirmationReceipt = "confirmation receipt"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case airWaybillNumber
        case champId
        case destination
        case messageHeader
        case orgId
        case origin
        case receivedAt
        case referenceMessageContent
        case referencedMessageType
        case rejected
        case schemaVersion
        case taskGroupId
        case textMessage
        case type
    }
}