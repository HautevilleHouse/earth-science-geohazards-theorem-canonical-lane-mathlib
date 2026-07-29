import EarthScienceGeohazardsTheoremCanonicalLaneLean.TsunamiPropagation

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure VolcanicHazardModel where
  magmaChamberDynamics : Prop
  eruptionTrigger : Prop
  tephraDispersion : Prop
  lavaFlowPath : Prop
  hazardZoneMap : Prop

structure VolcanicHazardEvidence (M : VolcanicHazardModel) where
  magmaChamberDynamicsClosed : M.magmaChamberDynamics
  eruptionTriggerClosed : M.eruptionTrigger
  tephraDispersionClosed : M.tephraDispersion
  lavaFlowPathClosed : M.lavaFlowPath
  hazardZoneMapClosed : M.hazardZoneMap

def VolcanicHazardClosed (M : VolcanicHazardModel) : Prop :=
  M.magmaChamberDynamics ∧ M.eruptionTrigger ∧
  M.tephraDispersion ∧ M.lavaFlowPath ∧ M.hazardZoneMap

theorem volcanic_hazard_closed_from_evidence (M : VolcanicHazardModel)
    (E : VolcanicHazardEvidence M) : VolcanicHazardClosed M := by
  exact And.intro E.magmaChamberDynamicsClosed
    (And.intro E.eruptionTriggerClosed
      (And.intro E.tephraDispersionClosed
        (And.intro E.lavaFlowPathClosed E.hazardZoneMapClosed)))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse
