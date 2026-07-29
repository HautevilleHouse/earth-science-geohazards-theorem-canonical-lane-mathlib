import EarthScienceGeohazardsTheoremCanonicalLaneLean.SeismicHazardModel

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure LandslideSusceptibilityModel where
  slopeStability : Prop
  precipitationTrigger : Prop
  soilProperties : Prop
  landCover : Prop
  susceptibilityMap : Prop

structure LandslideSusceptibilityEvidence (M : LandslideSusceptibilityModel) where
  slopeStabilityClosed : M.slopeStability
  precipitationTriggerClosed : M.precipitationTrigger
  soilPropertiesClosed : M.soilProperties
  landCoverClosed : M.landCover
  susceptibilityMapClosed : M.susceptibilityMap

def LandslideSusceptibilityClosed (M : LandslideSusceptibilityModel) : Prop :=
  M.slopeStability ∧ M.precipitationTrigger ∧
  M.soilProperties ∧ M.landCover ∧ M.susceptibilityMap

theorem landslide_susceptibility_closed_from_evidence
    (M : LandslideSusceptibilityModel) (E : LandslideSusceptibilityEvidence M) :
    LandslideSusceptibilityClosed M := by
  exact And.intro E.slopeStabilityClosed
    (And.intro E.precipitationTriggerClosed
      (And.intro E.soilPropertiesClosed
        (And.intro E.landCoverClosed E.susceptibilityMapClosed)))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse
