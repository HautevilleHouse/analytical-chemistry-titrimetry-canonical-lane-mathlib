import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryTitrimetryCanonicalLaneLean

def bridgeClosed (A : TitrimetricAdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : TitrimetricAdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.endpointSatisfiedChecked,
    A.object.remainderRecordedChecked,
    A.object.classicalRemainderCarried⟩

end AnalyticalChemistryTitrimetryCanonicalLaneLean
end HautevilleHouse