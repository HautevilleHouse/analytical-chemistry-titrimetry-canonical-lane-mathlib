import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryTitrimetryCanonicalLaneLean

def ConstrainedTitrimetryClosure (A : TitrimetricAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ A.object.classicalRemainderCarried = true

theorem constrained_titrimetry_closure (A : TitrimetricAdmissibleClass) :
    ConstrainedTitrimetryClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) A.object.classicalRemainderCarried)

end AnalyticalChemistryTitrimetryCanonicalLaneLean
end HautevilleHouse