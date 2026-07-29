import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure ClimateDrivenHazardPackage where
  climateModel : Type u
  temperatureProjection : ℝ → ℝ
  seaLevelRise : ℝ → ℝ
  extremeEventFrequency : ℕ → ℝ
  hazardAttribution : Prop

structure ClimateDrivenHazardEvidence (C : ClimateDrivenHazardPackage) where
  climateModelDefined : Nonempty C.climateModel
  temperatureProjectionMonotone : ∀ t, C.temperatureProjection t ≥ 0
  seaLevelRiseFinite : ∀ t, C.seaLevelRise t < ∞
  extremeFrequencyBounded : ∃ M, ∀ n, C.extremeEventFrequency n ≤ M
  hazardAttributionClosed : C.hazardAttribution

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse