import Foundation

public struct WebcargoBookingRecord1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let taskGroupId: String
    public let awbNumber: String
    public let messageHeader: WebcargoMessageHeader
    public let businessInfo: WebcargoBusinessInfo
    public let documentIdentifiers: [WebcargoDocumentIdentifier]
    public let bookingRate: WebcargoBookingRate
    public let shipment: WebcargoShipment?
    public let responseStatus: WebcargoResponseStatus?
    public let syncedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        orgId: String,
        taskGroupId: String,
        awbNumber: String,
        messageHeader: WebcargoMessageHeader,
        businessInfo: WebcargoBusinessInfo,
        documentIdentifiers: [WebcargoDocumentIdentifier],
        bookingRate: WebcargoBookingRate,
        shipment: WebcargoShipment? = nil,
        responseStatus: WebcargoResponseStatus? = nil,
        syncedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.orgId = orgId
        self.taskGroupId = taskGroupId
        self.awbNumber = awbNumber
        self.messageHeader = messageHeader
        self.businessInfo = businessInfo
        self.documentIdentifiers = documentIdentifiers
        self.bookingRate = bookingRate
        self.shipment = shipment
        self.responseStatus = responseStatus
        self.syncedAt = syncedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.awbNumber = try container.decode(String.self, forKey: .awbNumber)
        self.messageHeader = try container.decode(WebcargoMessageHeader.self, forKey: .messageHeader)
        self.businessInfo = try container.decode(WebcargoBusinessInfo.self, forKey: .businessInfo)
        self.documentIdentifiers = try container.decode([WebcargoDocumentIdentifier].self, forKey: .documentIdentifiers)
        self.bookingRate = try container.decode(WebcargoBookingRate.self, forKey: .bookingRate)
        self.shipment = try container.decodeIfPresent(WebcargoShipment.self, forKey: .shipment)
        self.responseStatus = try container.decodeIfPresent(WebcargoResponseStatus.self, forKey: .responseStatus)
        self.syncedAt = try container.decode(Date.self, forKey: .syncedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.awbNumber, forKey: .awbNumber)
        try container.encode(self.messageHeader, forKey: .messageHeader)
        try container.encode(self.businessInfo, forKey: .businessInfo)
        try container.encode(self.documentIdentifiers, forKey: .documentIdentifiers)
        try container.encode(self.bookingRate, forKey: .bookingRate)
        try container.encodeIfPresent(self.shipment, forKey: .shipment)
        try container.encodeIfPresent(self.responseStatus, forKey: .responseStatus)
        try container.encode(self.syncedAt, forKey: .syncedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case orgId = "org_id"
        case taskGroupId = "task_group_id"
        case awbNumber = "awb_number"
        case messageHeader = "message_header"
        case businessInfo = "business_info"
        case documentIdentifiers = "document_identifiers"
        case bookingRate = "booking_rate"
        case shipment
        case responseStatus = "response_status"
        case syncedAt = "synced_at"
    }
}