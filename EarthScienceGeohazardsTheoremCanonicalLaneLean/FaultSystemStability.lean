import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure FaultSystemPackage where
  faultPlaneGeometry : Type u
  stressTensor : Type v
  porePressureField : Type w
  frictionCoefficient : Prop
  slipRate : Prop
  stabilityMargin : Prop

structure FaultSystemEvidence (F : FaultSystemPackage) where
  frictionCoefficientClosed : F.frictionCoefficient
  slipRateClosed : F.slipRate
  stabilityMarginClosed : F.stabilityMargin

def FaultSystemClosed (F : FaultSystemPackage) : Prop :=
  F.frictionCoefficient ∧ F.slipRate ∧ F.stabilityMargin

theorem fault_system_closed_from_evidence (F : FaultSystemPackage)
    (E : FaultSystemEvidence F) : FaultSystemClosed F := by
  exact And.intro E.frictionCoefficientClosed
    (And.intro E.slipRateClosed E.stabilityMarginClosed)

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse
