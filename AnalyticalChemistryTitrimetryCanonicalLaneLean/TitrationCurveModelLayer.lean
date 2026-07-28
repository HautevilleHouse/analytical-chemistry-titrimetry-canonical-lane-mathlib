import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryTitrimetryCanonicalLaneLean

structure TitrationCurveModel where
  titrantStrength : Float
  analyteStrength : Float
  reactionStoichiometry : Nat
  pHFunction : String
  curveModeled : Bool

def titrationCurveModel : TitrationCurveModel :=
  { titrantStrength := 0.1,
    analyteStrength := 0.1,
    reactionStoichiometry := 1,
    pHFunction := "pH = pKa + log([A-]/[HA])",
    curveModeled := true
  }

def TitrationCurveModelLayerClosed (M : TitrationCurveModel) : Prop :=
  M.titrantStrength > 0 ∧
  M.analyteStrength > 0 ∧
  M.reactionStoichiometry > 0 ∧
  M.curveModeled = true

theorem titration_curve_model_layer_closed_checked :
    TitrationCurveModelLayerClosed titrationCurveModel := by
  refine And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) rfl))

end AnalyticalChemistryTitrimetryCanonicalLaneLean
end HautevilleHouse