---
title: "coq tactics cheatsheet"
date: 2022-02-16 16:00:00 -0400
categories: coq tips 
---

coq으로 정리를 증명할 때 수많은 tactic들이 쓰인다.
각 tactics들은 다양한 기능을 제공하지만, 개중에는 얼핏보면 비슷한 기능을 하는 것들도 많아 혼동의 여지가 있다.
이러한 혼동을 피하고 각각의 명쾌한 이해를 위해 cheatsheet의 형태로 기능들을 정리한다.

- induction exp as [...]
induction은 coq에서 가장 중요한 tactic이다. 어떤 expression의 결과가 inductive하게 정의된 것이라면 사용할 수 있다.
induction을 exp에 적용하면, exp의 결과가 나올 수 있는 모든 경우에 대해 subgoal이 생성된다.
이 때 주목할 점은, base case가 아닌 경우에 induction hypothesis가 현재 proof state의 context에 추가된다는 것이다.
바로 이 점이 induction과 destruct tactic의 가장 큰 차이점이다.
가장 간단한 예시로는 자연수 n에 적용할 수 있다. (TODO: 예시 추가)
자연 수 같은 inductive type 뿐만 아니라 proposition 자체도 inductive하게 정의가 된 경우 induction을 적용할 수 있다.
(TODO: even 예시 추가)

