import Foundation

public enum InvoiceLineItemTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case baseRate = "base_rate"
    case additionalMileage = "additional_mileage"
    case longDistanceMileage = "long_distance_mileage"
    case fuel
    case extraStop = "extra_stop"
    case waitTime = "wait_time"
    case attempt
    case pickAndHold = "pick_and_hold"
    case parking
    case tolls
    case additionalFee = "additional_fee"
    case dispute
    case equipment
    case dangerousGoods = "dangerous_goods"
    case specialVehicle = "special_vehicle"
    case afterHours = "after_hours"
    case weekend
    case holiday
    case airWaybill = "air_waybill"
    case insurance
    case offNetworkCarrier = "off_network_carrier"
    case obcDayRate = "obc_day_rate"
    case flightTicket = "flight_ticket"
    case trackingDeviceLabel = "tracking_device_label"
    case trackingDeviceTag = "tracking_device_tag"
    case trackingDeviceOther = "tracking_device_other"
    case other
}