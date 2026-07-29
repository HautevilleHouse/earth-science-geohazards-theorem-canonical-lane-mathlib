import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure LandslideTriggeringModel where
  slopeGeometry : Type u
  materialProperties : Type v
  rainfallIntensity : Prop
  porePressureResponse : Prop
  factorOfSafety : Prop
  failureInitiation : Prop

structure LandslideTriggeringEvidence (L : LandslideTriggeringModel) where
  rainfallIntensityClosed : L.rainfallIntensity
  porePressureResponseClosed : L.porePressureResponse
  factorOfSafetyClosed : L.factorOfSafety
  failureInitiationClosed : L.failureInitiation

def LandslideTriggeringClosed (L : LandslideTriggeringModel) : Prop :=
  L.rainfallIntensity ∧ L.porePressureResponse ∧ L.factorOfSafety ∧ L.failureInitiation

theorem landslide_triggering_closed_from_evidence (L : LandslideTriggeringModel)
    (E : LandslideTriggeringEvidence L) : LandslideTriggeringClosed L := by
  exact And.intro E.rainfallIntensityClosed
    (And.intro E.porePressureResponseClosed
      (And.intro E.factorOfSafetyClosed E.failureInitiationClosed))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse