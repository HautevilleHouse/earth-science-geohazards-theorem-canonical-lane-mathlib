import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure SeismicCyclePackage where
  interseismicStrainAccumulation : Prop
  coseismicSlipDistribution : Prop
  postseismicRelaxation : Prop
  geodeticObservations : Prop
  cycleClosure : Prop

structure SeismicCycleEvidence (S : SeismicCyclePackage) where
  interseismicStrainAccumulationClosed : S.interseismicStrainAccumulation
  coseismicSlipDistributionClosed : S.coseismicSlipDistribution
  postseismicRelaxationClosed : S.postseismicRelaxation
  geodeticObservationsClosed : S.geodeticObservations
  cycleClosureClosed : S.cycleClosure

def SeismicCycleClosed (S : SeismicCyclePackage) : Prop :=
  S.interseismicStrainAccumulation ∧ S.coseismicSlipDistribution ∧
  S.postseismicRelaxation ∧ S.geodeticObservations ∧ S.cycleClosure

theorem seismic_cycle_closed_from_evidence (S : SeismicCyclePackage)
    (E : SeismicCycleEvidence S) : SeismicCycleClosed S := by
  exact And.intro E.interseismicStrainAccumulationClosed
    (And.intro E.coseismicSlipDistributionClosed
      (And.intro E.postseismicRelaxationClosed
        (And.intro E.geodeticObservationsClosed E.cycleClosureClosed)))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse
