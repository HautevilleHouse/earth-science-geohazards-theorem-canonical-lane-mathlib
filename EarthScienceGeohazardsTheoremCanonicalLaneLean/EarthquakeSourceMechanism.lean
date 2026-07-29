import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure EarthquakeSourceMechanismPackage where
  faultGeometry : Type u
  slipDistribution : Type v
  momentTensor : Type w
  doubleCoupleModel : Prop
  seismicMoment : ℝ

structure EarthquakeSourceMechanismEvidence (E : EarthquakeSourceMechanismPackage) where
  faultGeometryDefined : Nonempty E.faultGeometry
  slipDistributionDefined : Nonempty E.slipDistribution
  momentTensorDefined : Nonempty E.momentTensor
  doubleCoupleModelClosed : E.doubleCoupleModel
  seismicMomentFinite : E.seismicMoment > 0

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse