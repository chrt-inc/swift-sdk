import Foundation

/// Known fields from a DispatchScience order, retaining all other fields.
public struct DispatchScienceOrderResponse1: Codable, Hashable, Sendable {
    public let attachments: [DispatchScienceAttachmentResponse1]?
    public let charges: [DispatchScienceChargeResponse1]?
    public let createdAt: String?
    public let distance: Double?
    public let distanceUnits: String?
    public let dropoffAddress: DispatchScienceAddressResponse1?
    public let dropoffContactInfo: DispatchScienceContactInfoResponse1?
    public let dropoffLocation: DispatchScienceLocationResponse1?
    public let dropoffNotes: String?
    public let dropoffTimeZone: DispatchScienceTimeZoneResponse1?
    public let dropoffWindow: DispatchScienceTimeWindowResponse1?
    public let isOnHold: Bool?
    public let notes: String?
    public let numberOfPieces: Int?
    public let orderId: String
    public let pickupAddress: DispatchScienceAddressResponse1?
    public let pickupContactInfo: DispatchScienceContactInfoResponse1?
    public let pickupLocation: DispatchScienceLocationResponse1?
    public let pickupNotes: String?
    public let pickupTimeZone: DispatchScienceTimeZoneResponse1?
    public let pickupWindow: DispatchScienceTimeWindowResponse1?
    public let readyAt: String?
    public let receivedBy: String?
    public let referenceNumber1: String?
    public let referenceNumber2: String?
    public let referenceNumber3: String?
    public let serviceLevelId: String?
    public let status: Int
    public let vehicleTypeId: String?
    public let volume: Double?
    public let volumeUnits: String?
    public let weight: Double?
    public let weightUnits: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        attachments: [DispatchScienceAttachmentResponse1]? = nil,
        charges: [DispatchScienceChargeResponse1]? = nil,
        createdAt: String? = nil,
        distance: Double? = nil,
        distanceUnits: String? = nil,
        dropoffAddress: DispatchScienceAddressResponse1? = nil,
        dropoffContactInfo: DispatchScienceContactInfoResponse1? = nil,
        dropoffLocation: DispatchScienceLocationResponse1? = nil,
        dropoffNotes: String? = nil,
        dropoffTimeZone: DispatchScienceTimeZoneResponse1? = nil,
        dropoffWindow: DispatchScienceTimeWindowResponse1? = nil,
        isOnHold: Bool? = nil,
        notes: String? = nil,
        numberOfPieces: Int? = nil,
        orderId: String,
        pickupAddress: DispatchScienceAddressResponse1? = nil,
        pickupContactInfo: DispatchScienceContactInfoResponse1? = nil,
        pickupLocation: DispatchScienceLocationResponse1? = nil,
        pickupNotes: String? = nil,
        pickupTimeZone: DispatchScienceTimeZoneResponse1? = nil,
        pickupWindow: DispatchScienceTimeWindowResponse1? = nil,
        readyAt: String? = nil,
        receivedBy: String? = nil,
        referenceNumber1: String? = nil,
        referenceNumber2: String? = nil,
        referenceNumber3: String? = nil,
        serviceLevelId: String? = nil,
        status: Int,
        vehicleTypeId: String? = nil,
        volume: Double? = nil,
        volumeUnits: String? = nil,
        weight: Double? = nil,
        weightUnits: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.attachments = attachments
        self.charges = charges
        self.createdAt = createdAt
        self.distance = distance
        self.distanceUnits = distanceUnits
        self.dropoffAddress = dropoffAddress
        self.dropoffContactInfo = dropoffContactInfo
        self.dropoffLocation = dropoffLocation
        self.dropoffNotes = dropoffNotes
        self.dropoffTimeZone = dropoffTimeZone
        self.dropoffWindow = dropoffWindow
        self.isOnHold = isOnHold
        self.notes = notes
        self.numberOfPieces = numberOfPieces
        self.orderId = orderId
        self.pickupAddress = pickupAddress
        self.pickupContactInfo = pickupContactInfo
        self.pickupLocation = pickupLocation
        self.pickupNotes = pickupNotes
        self.pickupTimeZone = pickupTimeZone
        self.pickupWindow = pickupWindow
        self.readyAt = readyAt
        self.receivedBy = receivedBy
        self.referenceNumber1 = referenceNumber1
        self.referenceNumber2 = referenceNumber2
        self.referenceNumber3 = referenceNumber3
        self.serviceLevelId = serviceLevelId
        self.status = status
        self.vehicleTypeId = vehicleTypeId
        self.volume = volume
        self.volumeUnits = volumeUnits
        self.weight = weight
        self.weightUnits = weightUnits
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.attachments = try container.decodeIfPresent([DispatchScienceAttachmentResponse1].self, forKey: .attachments)
        self.charges = try container.decodeIfPresent([DispatchScienceChargeResponse1].self, forKey: .charges)
        self.createdAt = try container.decodeIfPresent(String.self, forKey: .createdAt)
        self.distance = try container.decodeIfPresent(Double.self, forKey: .distance)
        self.distanceUnits = try container.decodeIfPresent(String.self, forKey: .distanceUnits)
        self.dropoffAddress = try container.decodeIfPresent(DispatchScienceAddressResponse1.self, forKey: .dropoffAddress)
        self.dropoffContactInfo = try container.decodeIfPresent(DispatchScienceContactInfoResponse1.self, forKey: .dropoffContactInfo)
        self.dropoffLocation = try container.decodeIfPresent(DispatchScienceLocationResponse1.self, forKey: .dropoffLocation)
        self.dropoffNotes = try container.decodeIfPresent(String.self, forKey: .dropoffNotes)
        self.dropoffTimeZone = try container.decodeIfPresent(DispatchScienceTimeZoneResponse1.self, forKey: .dropoffTimeZone)
        self.dropoffWindow = try container.decodeIfPresent(DispatchScienceTimeWindowResponse1.self, forKey: .dropoffWindow)
        self.isOnHold = try container.decodeIfPresent(Bool.self, forKey: .isOnHold)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.numberOfPieces = try container.decodeIfPresent(Int.self, forKey: .numberOfPieces)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.pickupAddress = try container.decodeIfPresent(DispatchScienceAddressResponse1.self, forKey: .pickupAddress)
        self.pickupContactInfo = try container.decodeIfPresent(DispatchScienceContactInfoResponse1.self, forKey: .pickupContactInfo)
        self.pickupLocation = try container.decodeIfPresent(DispatchScienceLocationResponse1.self, forKey: .pickupLocation)
        self.pickupNotes = try container.decodeIfPresent(String.self, forKey: .pickupNotes)
        self.pickupTimeZone = try container.decodeIfPresent(DispatchScienceTimeZoneResponse1.self, forKey: .pickupTimeZone)
        self.pickupWindow = try container.decodeIfPresent(DispatchScienceTimeWindowResponse1.self, forKey: .pickupWindow)
        self.readyAt = try container.decodeIfPresent(String.self, forKey: .readyAt)
        self.receivedBy = try container.decodeIfPresent(String.self, forKey: .receivedBy)
        self.referenceNumber1 = try container.decodeIfPresent(String.self, forKey: .referenceNumber1)
        self.referenceNumber2 = try container.decodeIfPresent(String.self, forKey: .referenceNumber2)
        self.referenceNumber3 = try container.decodeIfPresent(String.self, forKey: .referenceNumber3)
        self.serviceLevelId = try container.decodeIfPresent(String.self, forKey: .serviceLevelId)
        self.status = try container.decode(Int.self, forKey: .status)
        self.vehicleTypeId = try container.decodeIfPresent(String.self, forKey: .vehicleTypeId)
        self.volume = try container.decodeIfPresent(Double.self, forKey: .volume)
        self.volumeUnits = try container.decodeIfPresent(String.self, forKey: .volumeUnits)
        self.weight = try container.decodeIfPresent(Double.self, forKey: .weight)
        self.weightUnits = try container.decodeIfPresent(String.self, forKey: .weightUnits)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.attachments, forKey: .attachments)
        try container.encodeIfPresent(self.charges, forKey: .charges)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.distance, forKey: .distance)
        try container.encodeIfPresent(self.distanceUnits, forKey: .distanceUnits)
        try container.encodeIfPresent(self.dropoffAddress, forKey: .dropoffAddress)
        try container.encodeIfPresent(self.dropoffContactInfo, forKey: .dropoffContactInfo)
        try container.encodeIfPresent(self.dropoffLocation, forKey: .dropoffLocation)
        try container.encodeIfPresent(self.dropoffNotes, forKey: .dropoffNotes)
        try container.encodeIfPresent(self.dropoffTimeZone, forKey: .dropoffTimeZone)
        try container.encodeIfPresent(self.dropoffWindow, forKey: .dropoffWindow)
        try container.encodeIfPresent(self.isOnHold, forKey: .isOnHold)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.pickupAddress, forKey: .pickupAddress)
        try container.encodeIfPresent(self.pickupContactInfo, forKey: .pickupContactInfo)
        try container.encodeIfPresent(self.pickupLocation, forKey: .pickupLocation)
        try container.encodeIfPresent(self.pickupNotes, forKey: .pickupNotes)
        try container.encodeIfPresent(self.pickupTimeZone, forKey: .pickupTimeZone)
        try container.encodeIfPresent(self.pickupWindow, forKey: .pickupWindow)
        try container.encodeIfPresent(self.readyAt, forKey: .readyAt)
        try container.encodeIfPresent(self.receivedBy, forKey: .receivedBy)
        try container.encodeIfPresent(self.referenceNumber1, forKey: .referenceNumber1)
        try container.encodeIfPresent(self.referenceNumber2, forKey: .referenceNumber2)
        try container.encodeIfPresent(self.referenceNumber3, forKey: .referenceNumber3)
        try container.encodeIfPresent(self.serviceLevelId, forKey: .serviceLevelId)
        try container.encode(self.status, forKey: .status)
        try container.encodeIfPresent(self.vehicleTypeId, forKey: .vehicleTypeId)
        try container.encodeIfPresent(self.volume, forKey: .volume)
        try container.encodeIfPresent(self.volumeUnits, forKey: .volumeUnits)
        try container.encodeIfPresent(self.weight, forKey: .weight)
        try container.encodeIfPresent(self.weightUnits, forKey: .weightUnits)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case attachments
        case charges
        case createdAt
        case distance
        case distanceUnits
        case dropoffAddress
        case dropoffContactInfo
        case dropoffLocation
        case dropoffNotes
        case dropoffTimeZone
        case dropoffWindow
        case isOnHold
        case notes
        case numberOfPieces
        case orderId
        case pickupAddress
        case pickupContactInfo
        case pickupLocation
        case pickupNotes
        case pickupTimeZone
        case pickupWindow
        case readyAt
        case receivedBy
        case referenceNumber1
        case referenceNumber2
        case referenceNumber3
        case serviceLevelId
        case status
        case vehicleTypeId
        case volume
        case volumeUnits
        case weight
        case weightUnits
    }
}