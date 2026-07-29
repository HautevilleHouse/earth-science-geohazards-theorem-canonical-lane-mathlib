import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

def ConstrainedGeohazardClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geohazard_endgame (A : AdmissibleClass) :
    ConstrainedGeohazardClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse
