import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure LandslideRunoutPackage where
  slopeGeometry : Type u
  materialRheology : Prop
  runoutDistance : ℝ
  velocityProfile : ℝ → ℝ
  depositionPattern : Prop

structure LandslideRunoutEvidence (L : LandslideRunoutPackage) where
  slopeGeometryDefined : Nonempty L.slopeGeometry
  materialRheologyClosed : L.materialRheology
  runoutDistanceFinite : L.runoutDistance < ∞
  velocityProfileDefined : ∀ t : ℝ, L.velocityProfile t ≥ 0
  depositionPatternClosed : L.depositionPattern

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse