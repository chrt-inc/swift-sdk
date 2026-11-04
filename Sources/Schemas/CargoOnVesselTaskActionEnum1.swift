import Foundation

public enum CargoOnVesselTaskActionEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case cargoOnVesselGatedInFull = "cargo_on_vessel__gated_in_full"
    case cargoOnVesselLoadedOntoVessel = "cargo_on_vessel__loaded_onto_vessel"
    case cargoOnVesselVesselDeparted = "cargo_on_vessel__vessel_departed"
    case cargoOnVesselVesselArrived = "cargo_on_vessel__vessel_arrived"
    case cargoOnVesselDischargedFromVessel = "cargo_on_vessel__discharged_from_vessel"
    case cargoOnVesselAvailableForPickup = "cargo_on_vessel__available_for_pickup"
    case cargoOnVesselGatedOutFull = "cargo_on_vessel__gated_out_full"
}