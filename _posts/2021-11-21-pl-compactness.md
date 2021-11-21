---
title: "옹골참에 관하여"
date: 2021-11-21 17:35:00 -0400
categories: jekyll update
---

논리학이나 수학에서 *콤팩트성*(*compactness*)은 **무한한 전체**를 **유한한 부분**으로 쪼개서 추론할 수 있는 좋은 성질을 뜻한다. 논리식의 집합들의 satisfiability가 콤팩트성을 가진다. 포말하게 아래와 같이 표현할 수 있다.

**theorem.**
A set of formulas S is satisfiable if and only if each finite subset of S is satisfiable.

위 정리가 도대체 어떤 의미일까? 어떤식으로 응용될수 있는지 생각해보자. 무한한 논리식들이 unsatisfiability를 보이기 위해 위의 정리를 이용할 수 있다. 즉, 어떤 유한 집합 S가 있어서 걔네들이 UNSAT임을 보이면 된다. 유한하기 때문에 semi-알고리즘으로 만들 수 있다. enumerate 한다음에 순서대로 SAT 체크를 하면된다. SAT이라면 종료하지 않을거다. 근데 UNSAT이라면 종료하겠지. S를 내뱉으면서.

위의 정리에서 (=>) 방향은 자명하다.
중요한 건 (<=) 방향이겠지. 생각해보자.
유한한 S'를 아무렇게나 잡아도 SAT인 상황을 생각해보자.
그랬을 때 S 전체가 SAT이라고 어떻게 결론이 나올까?