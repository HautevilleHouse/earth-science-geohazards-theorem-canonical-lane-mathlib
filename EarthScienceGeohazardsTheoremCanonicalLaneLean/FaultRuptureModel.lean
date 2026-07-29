import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure FaultRuptureModel where
  faultGeometry : Type u
  slipDistribution : Type v
  ruptureScenario : Prop
  coseismicDisplacement : Prop
  staticStressTransfer : Prop
  seismogenicCoupling : Prop

structure FaultRuptureEvidence (M : FaultRuptureModel) where
  ruptureScenarioClosed : M.ruptureScenario
  coseismicDisplacementClosed : M.coseismicDisplacement
  staticStressTransferClosed : M.staticStressTransfer
  seismogenicCouplingClosed : M.seismogenicCoupling

def FaultRuptureClosed (M : FaultRuptureModel) : Prop :=
  M.ruptureScenario ∧ M.coseismicDisplacement ∧ M.staticStressTransfer ∧ M.seismogenicCoupling

theorem fault_rupture_closed_from_evidence (M : FaultRuptureModel)
    (E : FaultRuptureEvidence M) : FaultRuptureClosed M := by
  exact And.intro E.ruptureScenarioClosed
    (And.intro E.coseismicDisplacementClosed
      (And.intro E.staticStressTransferClosed E.seismogenicCouplingClosed))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse