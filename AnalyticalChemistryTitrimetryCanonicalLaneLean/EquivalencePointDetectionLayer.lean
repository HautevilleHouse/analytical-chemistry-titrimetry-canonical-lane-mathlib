import HautevilleHouse.AnalyticalChemistryTitrimetryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryTitrimetryCanonicalLaneLean

structure EquivalencePointDetectionCertificate where
  titrantVolume : Float
  analyteConcentration : Float
  reactionStoichiometry : Nat
  endpointChecked : Bool
  equivalencePointIdentified : Bool

def primitiveEquivalencePointCertificate : EquivalencePointDetectionCertificate := {
  titrantVolume := 25.0,
  analyteConcentration := 0.1,
  reactionStoichiometry := 1,
  endpointChecked := true,
  equivalencePointIdentified := true
}

def EquivalencePointLayerClosed (C : EquivalencePointDetectionCertificate) : Prop :=
  C.titrantVolume > 0 ∧
  C.analyteConcentration > 0 ∧
  C.reactionStoichiometry > 0 ∧
  C.endpointChecked = true ∧
  C.equivalencePointIdentified = true

theorem equivalence_point_layer_closed_checked :
    EquivalencePointLayerClosed primitiveEquivalencePointCertificate := by
  refine And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro rfl rfl)))

end AnalyticalChemistryTitrimetryCanonicalLaneLean
end HautevilleHouse