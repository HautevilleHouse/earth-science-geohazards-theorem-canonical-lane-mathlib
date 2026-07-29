import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure VolcanicAshDispersionPackage where
  atmosphericModel : Type u
  eruptiveColumnHeight : ℝ
  particleSizeDistribution : ℝ → ℝ
  advectionDiffusionEquation : Prop
  ashFallForecast : Prop

structure VolcanicAshDispersionEvidence (V : VolcanicAshDispersionPackage) where
  atmosphericModelDefined : Nonempty V.atmosphericModel
  columnHeightPositive : V.eruptiveColumnHeight > 0
  particleDistributionNormalized : (∫ x, V.particleSizeDistribution x) = 1
  advectionDiffusionClosed : V.advectionDiffusionEquation
  forecastConsistent : V.ashFallForecast

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse