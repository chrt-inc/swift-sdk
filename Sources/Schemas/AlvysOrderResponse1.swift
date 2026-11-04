import Foundation

/// Known fields from an Alvys load, retaining all other fields.
public struct AlvysOrderResponse1: Codable, Hashable, Sendable {
    public let cancelledAt: String?
    public let createdAt: String?
    public let customerId: String
    public let customerName: String?
    public let deliveredAt: String?
    public let destination: AlvysOrderEndpointResponse1?
    public let id: String
    public let isDeleted: Bool?
    public let loadNumber: String?
    public let orderNumber: String?
    public let origin: AlvysOrderEndpointResponse1?
    public let poNumber: String?
    public let pickedUpAt: String?
    public let status: String?
    public let stops: [AlvysStopResponse1]?
    public let updatedAt: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cancelledAt: String? = nil,
        createdAt: String? = nil,
        customerId: String,
        customerName: String? = nil,
        deliveredAt: String? = nil,
        destination: AlvysOrderEndpointResponse1? = nil,
        id: String,
        isDeleted: Bool? = nil,
        loadNumber: String? = nil,
        orderNumber: String? = nil,
        origin: AlvysOrderEndpointResponse1? = nil,
        poNumber: String? = nil,
        pickedUpAt: String? = nil,
        status: String? = nil,
        stops: [AlvysStopResponse1]? = nil,
        updatedAt: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cancelledAt = cancelledAt
        self.createdAt = createdAt
        self.customerId = customerId
        self.customerName = customerName
        self.deliveredAt = deliveredAt
        self.destination = destination
        self.id = id
        self.isDeleted = isDeleted
        self.loadNumber = loadNumber
        self.orderNumber = orderNumber
        self.origin = origin
        self.poNumber = poNumber
        self.pickedUpAt = pickedUpAt
        self.status = status
        self.stops = stops
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cancelledAt = try container.decodeIfPresent(String.self, forKey: .cancelledAt)
        self.createdAt = try container.decodeIfPresent(String.self, forKey: .createdAt)
        self.customerId = try container.decode(String.self, forKey: .customerId)
        self.customerName = try container.decodeIfPresent(String.self, forKey: .customerName)
        self.deliveredAt = try container.decodeIfPresent(String.self, forKey: .deliveredAt)
        self.destination = try container.decodeIfPresent(AlvysOrderEndpointResponse1.self, forKey: .destination)
        self.id = try container.decode(String.self, forKey: .id)
        self.isDeleted = try container.decodeIfPresent(Bool.self, forKey: .isDeleted)
        self.loadNumber = try container.decodeIfPresent(String.self, forKey: .loadNumber)
        self.orderNumber = try container.decodeIfPresent(String.self, forKey: .orderNumber)
        self.origin = try container.decodeIfPresent(AlvysOrderEndpointResponse1.self, forKey: .origin)
        self.poNumber = try container.decodeIfPresent(String.self, forKey: .poNumber)
        self.pickedUpAt = try container.decodeIfPresent(String.self, forKey: .pickedUpAt)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.stops = try container.decodeIfPresent([AlvysStopResponse1].self, forKey: .stops)
        self.updatedAt = try container.decodeIfPresent(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.cancelledAt, forKey: .cancelledAt)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encode(self.customerId, forKey: .customerId)
        try container.encodeIfPresent(self.customerName, forKey: .customerName)
        try container.encodeIfPresent(self.deliveredAt, forKey: .deliveredAt)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(self.loadNumber, forKey: .loadNumber)
        try container.encodeIfPresent(self.orderNumber, forKey: .orderNumber)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.poNumber, forKey: .poNumber)
        try container.encodeIfPresent(self.pickedUpAt, forKey: .pickedUpAt)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.stops, forKey: .stops)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cancelledAt = "CancelledAt"
        case createdAt = "CreatedAt"
        case customerId = "CustomerId"
        case customerName = "CustomerName"
        case deliveredAt = "DeliveredAt"
        case destination = "Destination"
        case id = "Id"
        case isDeleted = "IsDeleted"
        case loadNumber = "LoadNumber"
        case orderNumber = "OrderNumber"
        case origin = "Origin"
        case poNumber = "PONumber"
        case pickedUpAt = "PickedUpAt"
        case status = "Status"
        case stops = "Stops"
        case updatedAt = "UpdatedAt"
    }
}