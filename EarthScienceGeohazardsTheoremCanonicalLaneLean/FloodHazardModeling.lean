import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure FloodHazardModelingPackage where
  hydrologicalModel : Type u
  rainfallIntensity : ℝ → ℝ
  riverDischarge : ℝ → ℝ
  floodplainTopography : Type v
  inundationMap : Prop

structure FloodHazardModelingEvidence (F : FloodHazardModelingPackage) where
  hydrologicalModelDefined : Nonempty F.hydrologicalModel
  rainfallIntensityMeasurable : F.rainfallIntensity 0 ≥ 0
  riverDischargeFinite : ∀ t, F.riverDischarge t < ∞
  floodplainTopographyDefined : Nonempty F.floodplainTopography
  inundationMapClosed : F.inundationMap

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse