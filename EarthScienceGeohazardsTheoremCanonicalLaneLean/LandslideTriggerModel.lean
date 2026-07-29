import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure LandslideTriggerPackage where
  slopeGeometry : Type u
  materialProperties : Type v
  groundwaterLevel : Prop
  precipitationEvent : Prop
  seismicShaking : Prop
  factorOfSafety : Prop

structure LandslideTriggerEvidence (L : LandslideTriggerPackage) where
  groundwaterLevelClosed : L.groundwaterLevel
  precipitationEventClosed : L.precipitationEvent
  seismicShakingClosed : L.seismicShaking
  factorOfSafetyClosed : L.factorOfSafety

def LandslideTriggerClosed (L : LandslideTriggerPackage) : Prop :=
  L.groundwaterLevel ∧ L.precipitationEvent ∧
  L.seismicShaking ∧ L.factorOfSafety

theorem landslide_trigger_closed_from_evidence (L : LandslideTriggerPackage)
    (E : LandslideTriggerEvidence L) : LandslideTriggerClosed L := by
  exact And.intro E.groundwaterLevelClosed
    (And.intro E.precipitationEventClosed
      (And.intro E.seismicShakingClosed E.factorOfSafetyClosed))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse
