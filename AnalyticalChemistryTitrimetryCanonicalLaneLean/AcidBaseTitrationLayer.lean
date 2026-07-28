import HautevilleHouse.AnalyticalChemistryTitrimetryCanonicalLaneLean.EquivalencePointDetectionLayer

namespace HautevilleHouse
namespace AnalyticalChemistryTitrimetryCanonicalLaneLean

structure AcidBaseTitrationCertificate where
  equivalenceLayer : EquivalencePointDetectionCertificate
  acidStrength : String
  baseStrength : String
  phAtEquivalence : Float
  indicatorUsed : String
  equivalenceDetected : Bool

def primitiveAcidBaseTitrationCertificate : AcidBaseTitrationCertificate := {
  equivalenceLayer := primitiveEquivalencePointCertificate,
  acidStrength := "strong",
  baseStrength := "strong",
  phAtEquivalence := 7.0,
  indicatorUsed := "phenolphthalein",
  equivalenceDetected := true
}

def AcidBaseTitrationLayerClosed (C : AcidBaseTitrationCertificate) : Prop :=
  EquivalencePointLayerClosed C.equivalenceLayer ∧
  C.equivalenceDetected = true

theorem acid_base_titration_layer_closed_checked :
    AcidBaseTitrationLayerClosed primitiveAcidBaseTitrationCertificate := by
  refine And.intro equivalence_point_layer_closed_checked rfl

end AnalyticalChemistryTitrimetryCanonicalLaneLean
end HautevilleHouse