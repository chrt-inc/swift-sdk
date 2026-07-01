import Foundation

public struct WebcargoBookingRecord1: Codable, Hashable, Sendable {
    public let id: String
    public let awbNumber: String
    public let bookingRate: WebcargoBookingRate
    public let businessInfo: WebcargoBusinessInfo
    public let documentIdentifiers: [WebcargoDocumentIdentifier]
    public let messageHeader: WebcargoMessageHeader
    /// Must be a string starting with `org_`
    public let orgId: String
    public let responseStatus: WebcargoResponseStatus?
    public let schemaVersion: Int
    public let shipment: WebcargoShipment?
    public let syncedAt: Date
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        awbNumber: String,
        bookingRate: WebcargoBookingRate,
        businessInfo: WebcargoBusinessInfo,
        documentIdentifiers: [WebcargoDocumentIdentifier],
        messageHeader: WebcargoMessageHeader,
        orgId: String,
        responseStatus: WebcargoResponseStatus? = nil,
        schemaVersion: Int,
        shipment: WebcargoShipment? = nil,
        syncedAt: Date,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.awbNumber = awbNumber
        self.bookingRate = bookingRate
        self.businessInfo = businessInfo
        self.documentIdentifiers = documentIdentifiers
        self.messageHeader = messageHeader
        self.orgId = orgId
        self.responseStatus = responseStatus
        self.schemaVersion = schemaVersion
        self.shipment = shipment
        self.syncedAt = syncedAt
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.awbNumber = try container.decode(String.self, forKey: .awbNumber)
        self.bookingRate = try container.decode(WebcargoBookingRate.self, forKey: .bookingRate)
        self.businessInfo = try container.decode(WebcargoBusinessInfo.self, forKey: .businessInfo)
        self.documentIdentifiers = try container.decode([WebcargoDocumentIdentifier].self, forKey: .documentIdentifiers)
        self.messageHeader = try container.decode(WebcargoMessageHeader.self, forKey: .messageHeader)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.responseStatus = try container.decodeIfPresent(WebcargoResponseStatus.self, forKey: .responseStatus)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipment = try container.decodeIfPresent(WebcargoShipment.self, forKey: .shipment)
        self.syncedAt = try container.decode(Date.self, forKey: .syncedAt)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.awbNumber, forKey: .awbNumber)
        try container.encode(self.bookingRate, forKey: .bookingRate)
        try container.encode(self.businessInfo, forKey: .businessInfo)
        try container.encode(self.documentIdentifiers, forKey: .documentIdentifiers)
        try container.encode(self.messageHeader, forKey: .messageHeader)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.responseStatus, forKey: .responseStatus)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipment, forKey: .shipment)
        try container.encode(self.syncedAt, forKey: .syncedAt)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case awbNumber = "awb_number"
        case bookingRate = "booking_rate"
        case businessInfo = "business_info"
        case documentIdentifiers = "document_identifiers"
        case messageHeader = "message_header"
        case orgId = "org_id"
        case responseStatus = "response_status"
        case schemaVersion = "schema_version"
        case shipment
        case syncedAt = "synced_at"
        case taskGroupId = "task_group_id"
    }
}