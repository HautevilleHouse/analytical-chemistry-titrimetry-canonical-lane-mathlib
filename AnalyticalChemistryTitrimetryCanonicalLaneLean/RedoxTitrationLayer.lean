import HautevilleHouse.AnalyticalChemistryTitrimetryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryTitrimetryCanonicalLaneLean

structure RedoxTitrationCertificate where
  oxidizingAgent : String
  reducingAgent : String
  standardPotential : Float
  redoxEndpointDetected : Bool
  electronStoichiometry : Nat

def primitiveRedoxTitrationCertificate : RedoxTitrationCertificate := {
  oxidizingAgent := "KMnO4",
  reducingAgent := "Fe2+",
  standardPotential := 1.51,
  redoxEndpointDetected := true,
  electronStoichiometry := 5
}

def RedoxTitrationLayerClosed (C : RedoxTitrationCertificate) : Prop :=
  C.standardPotential > 0 ∧
  C.electronStoichiometry > 0 ∧
  C.redoxEndpointDetected = true

theorem redox_titration_layer_closed_checked :
    RedoxTitrationLayerClosed primitiveRedoxTitrationCertificate := by
  refine And.intro (by norm_num) (And.intro (by norm_num) rfl)

end AnalyticalChemistryTitrimetryCanonicalLaneLean
end HautevilleHouse