import Foundation

/// One Courie order, as returned by both the list and detail endpoints.
///
/// The list endpoint returns this same complete shape, so the mirror never needs
/// a per-order detail call.
public struct CourieOrderResponse1: Codable, Hashable, Sendable {
    public let activities: [CourieOrderEventResponse1]?
    public let customFields: [CourieCustomFieldResponse1]?
    public let customerCompanyName: String?
    public let customerId: String
    public let deliveredAt: Date?
    public let displayId: Int?
    public let id: String
    public let numPackages: Int?
    public let packageDescription: String?
    public let packageItems: [CouriePackageItemResponse1]?
    public let packageSize: String?
    public let packageTypeName: String?
    public let packageWeightInPounds: Double?
    public let packages: [CouriePackageResponse1]?
    public let pickedUpAt: Date?
    public let proofOfDeliveries: [CourieProofOfDeliveryResponse1]?
    public let proofOfPickUps: [CourieProofOfDeliveryResponse1]?
    public let referenceNumber: String?
    public let remoteId: String?
    public let serviceTypeName: String?
    public let shipmentDate: String?
    public let shipmentType: String?
    public let status: CourieOrderStatusEnum1
    public let statusDescription: String?
    public let stops: [CourieStopResponse1]?
    public let trackingNumber: String?
    public let trackingUrl: String?
    public let vehicleTypeName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        activities: [CourieOrderEventResponse1]? = nil,
        customFields: [CourieCustomFieldResponse1]? = nil,
        customerCompanyName: String? = nil,
        customerId: String,
        deliveredAt: Date? = nil,
        displayId: Int? = nil,
        id: String,
        numPackages: Int? = nil,
        packageDescription: String? = nil,
        packageItems: [CouriePackageItemResponse1]? = nil,
        packageSize: String? = nil,
        packageTypeName: String? = nil,
        packageWeightInPounds: Double? = nil,
        packages: [CouriePackageResponse1]? = nil,
        pickedUpAt: Date? = nil,
        proofOfDeliveries: [CourieProofOfDeliveryResponse1]? = nil,
        proofOfPickUps: [CourieProofOfDeliveryResponse1]? = nil,
        referenceNumber: String? = nil,
        remoteId: String? = nil,
        serviceTypeName: String? = nil,
        shipmentDate: String? = nil,
        shipmentType: String? = nil,
        status: CourieOrderStatusEnum1,
        statusDescription: String? = nil,
        stops: [CourieStopResponse1]? = nil,
        trackingNumber: String? = nil,
        trackingUrl: String? = nil,
        vehicleTypeName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.activities = activities
        self.customFields = customFields
        self.customerCompanyName = customerCompanyName
        self.customerId = customerId
        self.deliveredAt = deliveredAt
        self.displayId = displayId
        self.id = id
        self.numPackages = numPackages
        self.packageDescription = packageDescription
        self.packageItems = packageItems
        self.packageSize = packageSize
        self.packageTypeName = packageTypeName
        self.packageWeightInPounds = packageWeightInPounds
        self.packages = packages
        self.pickedUpAt = pickedUpAt
        self.proofOfDeliveries = proofOfDeliveries
        self.proofOfPickUps = proofOfPickUps
        self.referenceNumber = referenceNumber
        self.remoteId = remoteId
        self.serviceTypeName = serviceTypeName
        self.shipmentDate = shipmentDate
        self.shipmentType = shipmentType
        self.status = status
        self.statusDescription = statusDescription
        self.stops = stops
        self.trackingNumber = trackingNumber
        self.trackingUrl = trackingUrl
        self.vehicleTypeName = vehicleTypeName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.activities = try container.decodeIfPresent([CourieOrderEventResponse1].self, forKey: .activities)
        self.customFields = try container.decodeIfPresent([CourieCustomFieldResponse1].self, forKey: .customFields)
        self.customerCompanyName = try container.decodeIfPresent(String.self, forKey: .customerCompanyName)
        self.customerId = try container.decode(String.self, forKey: .customerId)
        self.deliveredAt = try container.decodeIfPresent(Date.self, forKey: .deliveredAt)
        self.displayId = try container.decodeIfPresent(Int.self, forKey: .displayId)
        self.id = try container.decode(String.self, forKey: .id)
        self.numPackages = try container.decodeIfPresent(Int.self, forKey: .numPackages)
        self.packageDescription = try container.decodeIfPresent(String.self, forKey: .packageDescription)
        self.packageItems = try container.decodeIfPresent([CouriePackageItemResponse1].self, forKey: .packageItems)
        self.packageSize = try container.decodeIfPresent(String.self, forKey: .packageSize)
        self.packageTypeName = try container.decodeIfPresent(String.self, forKey: .packageTypeName)
        self.packageWeightInPounds = try container.decodeIfPresent(Double.self, forKey: .packageWeightInPounds)
        self.packages = try container.decodeIfPresent([CouriePackageResponse1].self, forKey: .packages)
        self.pickedUpAt = try container.decodeIfPresent(Date.self, forKey: .pickedUpAt)
        self.proofOfDeliveries = try container.decodeIfPresent([CourieProofOfDeliveryResponse1].self, forKey: .proofOfDeliveries)
        self.proofOfPickUps = try container.decodeIfPresent([CourieProofOfDeliveryResponse1].self, forKey: .proofOfPickUps)
        self.referenceNumber = try container.decodeIfPresent(String.self, forKey: .referenceNumber)
        self.remoteId = try container.decodeIfPresent(String.self, forKey: .remoteId)
        self.serviceTypeName = try container.decodeIfPresent(String.self, forKey: .serviceTypeName)
        self.shipmentDate = try container.decodeIfPresent(String.self, forKey: .shipmentDate)
        self.shipmentType = try container.decodeIfPresent(String.self, forKey: .shipmentType)
        self.status = try container.decode(CourieOrderStatusEnum1.self, forKey: .status)
        self.statusDescription = try container.decodeIfPresent(String.self, forKey: .statusDescription)
        self.stops = try container.decodeIfPresent([CourieStopResponse1].self, forKey: .stops)
        self.trackingNumber = try container.decodeIfPresent(String.self, forKey: .trackingNumber)
        self.trackingUrl = try container.decodeIfPresent(String.self, forKey: .trackingUrl)
        self.vehicleTypeName = try container.decodeIfPresent(String.self, forKey: .vehicleTypeName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.activities, forKey: .activities)
        try container.encodeIfPresent(self.customFields, forKey: .customFields)
        try container.encodeIfPresent(self.customerCompanyName, forKey: .customerCompanyName)
        try container.encode(self.customerId, forKey: .customerId)
        try container.encodeIfPresent(self.deliveredAt, forKey: .deliveredAt)
        try container.encodeIfPresent(self.displayId, forKey: .displayId)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.numPackages, forKey: .numPackages)
        try container.encodeIfPresent(self.packageDescription, forKey: .packageDescription)
        try container.encodeIfPresent(self.packageItems, forKey: .packageItems)
        try container.encodeIfPresent(self.packageSize, forKey: .packageSize)
        try container.encodeIfPresent(self.packageTypeName, forKey: .packageTypeName)
        try container.encodeIfPresent(self.packageWeightInPounds, forKey: .packageWeightInPounds)
        try container.encodeIfPresent(self.packages, forKey: .packages)
        try container.encodeIfPresent(self.pickedUpAt, forKey: .pickedUpAt)
        try container.encodeIfPresent(self.proofOfDeliveries, forKey: .proofOfDeliveries)
        try container.encodeIfPresent(self.proofOfPickUps, forKey: .proofOfPickUps)
        try container.encodeIfPresent(self.referenceNumber, forKey: .referenceNumber)
        try container.encodeIfPresent(self.remoteId, forKey: .remoteId)
        try container.encodeIfPresent(self.serviceTypeName, forKey: .serviceTypeName)
        try container.encodeIfPresent(self.shipmentDate, forKey: .shipmentDate)
        try container.encodeIfPresent(self.shipmentType, forKey: .shipmentType)
        try container.encode(self.status, forKey: .status)
        try container.encodeIfPresent(self.statusDescription, forKey: .statusDescription)
        try container.encodeIfPresent(self.stops, forKey: .stops)
        try container.encodeIfPresent(self.trackingNumber, forKey: .trackingNumber)
        try container.encodeIfPresent(self.trackingUrl, forKey: .trackingUrl)
        try container.encodeIfPresent(self.vehicleTypeName, forKey: .vehicleTypeName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case activities
        case customFields
        case customerCompanyName
        case customerId
        case deliveredAt
        case displayId
        case id
        case numPackages
        case packageDescription
        case packageItems
        case packageSize
        case packageTypeName
        case packageWeightInPounds
        case packages
        case pickedUpAt
        case proofOfDeliveries
        case proofOfPickUps
        case referenceNumber
        case remoteId
        case serviceTypeName
        case shipmentDate
        case shipmentType
        case status
        case statusDescription
        case stops
        case trackingNumber
        case trackingUrl
        case vehicleTypeName
    }
}