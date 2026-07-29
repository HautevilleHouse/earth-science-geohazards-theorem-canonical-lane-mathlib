import EarthScienceGeohazardsTheoremCanonicalLaneLean.VolcanicHazardAssessment

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure FloodRiskModel where
  precipitationIntensity : Prop
  riverDischarge : Prop
  topographicSlope : Prop
  floodDefense : Prop
  riskMap : Prop

structure FloodRiskEvidence (M : FloodRiskModel) where
  precipitationIntensityClosed : M.precipitationIntensity
  riverDischargeClosed : M.riverDischarge
  topographicSlopeClosed : M.topographicSlope
  floodDefenseClosed : M.floodDefense
  riskMapClosed : M.riskMap

def FloodRiskClosed (M : FloodRiskModel) : Prop :=
  M.precipitationIntensity ∧ M.riverDischarge ∧
  M.topographicSlope ∧ M.floodDefense ∧ M.riskMap

theorem flood_risk_closed_from_evidence (M : FloodRiskModel)
    (E : FloodRiskEvidence M) : FloodRiskClosed M := by
  exact And.intro E.precipitationIntensityClosed
    (And.intro E.riverDischargeClosed
      (And.intro E.topographicSlopeClosed
        (And.intro E.floodDefenseClosed E.riskMapClosed)))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse
