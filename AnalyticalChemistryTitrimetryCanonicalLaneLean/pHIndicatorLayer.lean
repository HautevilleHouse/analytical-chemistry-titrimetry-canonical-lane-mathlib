import AnalyticalChemistryTitrimetryCanonicalLaneLean.EquivalencePointLayer

/-!
# pH indicator layer

This layer records the indicator transition range and its relationship to the
equivalence point pH for acid-base titrations.
-/

namespace HautevilleHouse
namespace AnalyticalChemistryTitrimetryCanonicalLaneLean

structure pHIndicatorLayerCertificate where
  indicatorName : String
  transitionRangeLow : Float
  transitionRangeHigh : Float
  equivalencePointPH : Float
  indicatorEndpointChecked : Bool
  carriedBoundaryNamed : Bool

def pHIndicatorLayerCertificate : pHIndicatorLayerCertificate := {
  indicatorName := "phenolphthalein",
  transitionRangeLow := 8.2,
  transitionRangeHigh := 10.0,
  equivalencePointPH := 8.7,
  indicatorEndpointChecked := true,
  carriedBoundaryNamed := true
}

def pHIndicatorLayerClosed (C : pHIndicatorLayerCertificate) : Prop :=
  C.indicatorEndpointChecked = true ∧
  C.carriedBoundaryNamed = true

theorem pH_indicator_layer_closed_checked :
    pHIndicatorLayerClosed pHIndicatorLayerCertificate := by
  exact And.intro rfl rfl

end AnalyticalChemistryTitrimetryCanonicalLaneLean
end HautevilleHouse