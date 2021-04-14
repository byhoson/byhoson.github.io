---
title: "Littlewood's Three Principles"
date: 2021-3-28 17:35:00 -0400
categories: jekyll update
---

We know what "measure" is intuitively. It more or less tells you how big a set(of real numbers) is. For instance, the measure of an interval, say $(0,2)$, would be $m((0,2))=2$. But, what on earth does "measurable" mean intuitively? Here comes so called Littlewood's three principles, described by the following:

### Littlewood's three principles

1. measurable sets are "nearly" open
2. measurable functions are "nearly" continuous
3. pointwise convergent sequence of measurable functions are "nearly" uniformly convergent.

Now, we will explore in more detail what those 3 principle really means, and will give proofs.


<details><summary>CLICK ME</summary>
<p>

#### yes, even hidden code blocks!

```python
print("hello world!")
```

</p>
</details>

## Egorov's theorem

**Lemma.** Suppose $m(E)<\infty$, and $f_n\to f$ pointwise on $E$, where each $F_n$ is measurable on $E$. Then, for each $\eta>0$ and $\delta>0$, there is $N\in\mathbb{N}$ and a measurable set $A$, such that $\vert f_n-f\vert<\eta$ on $A$ for all $k\ge N$ and $m(E\setminus A)<\delta$.


**Proof.** Let $\eta>0$, $\delta>0$. Note that for each $k$, $\vert f_k-f\vert$ is measurable, so that the set $\{x\in E; \vert f_k-f\vert<\eta\}$ is measurable. Then, their intersection $E_n:=\\{x\in E; \vert f_k-f\vert<\eta, for\\:all\\:k\ge n\\}$ is measurable for each $n$. Since $f_n$ converges pointwise to $f$, each $x\in E$ is contained in some $E_n$, so that $E=\cup_{n=1}^\infty E_n$. Now by the continuity of measure, with observation that $\\{E_n\\}$ is an ascending sequence of measurable sets, we have $\lim_{n\to\infty}m(E_n)=m(\cup_{n=1}^\infty E_n)=m(E)<\infty$. Thus, we can find $N$ such that $m(E\setminus E_N)=m(E)-m(E_N)<\delta$, where $A:=E_N$ is the desired measurable set. $\blacksquare$


**Theorem.** Suppose $m(E)<\infty$, and $f_n\to f$ pointwise on $E$, where each $F_n$ is measurable on $E$. Then, for any $\epsilon>0$, there is a closed set $F\subset E$, such that $f_n\to f$ uniformly on $F$ with $m(E\setminus F)<\epsilon$.


**Proof.** For each $n$, apply $\eta:=\frac{1}{n}$, $\delta:=\frac{\epsilon}{2^{n+1}}$ to the previous lemma, thereby obtaining $N(n)$ and $A_n$ so that $\vert f_k-f\vert<\frac{1}{n}$ on $A_n$  for all $k\ge N(n)$ where $m(E\setminus A_n)<\frac{\epsilon}{2^{n+1}}$. Define $A:=\cap_{n=1}^\infty A_n$, which is measurable. Clearly, $f_k\to f$ uniformly on $A$, since we can arbitrarily squeeze $\vert f_k-f\vert$ by controlling the index $n$ on $A\subset A_n$. Also, we have that $m(E\setminus A)=m(\cup_{n=1}^\infty[E\setminus A_n])\le \sum_{n=1}^\infty m(E\setminus A_n)<\sum_{n=1}^\infty\frac{\epsilon}{2^{n+1}}=\frac{\epsilon}{2}$. Note that since $A$ is measurable, we can find a closed set $F\subset A$, such that $m(A\setminus F)<\frac{\epsilon}{2}$. Thus, $m(E\setminus F)=m(E\setminus A)+m(A\setminus F)<\frac{\epsilon}{2}+\frac{\epsilon}{2}=\epsilon$. $\blacksquare$




## Lusin's theorem

**Lemma.** Let $f$ be a simple function on $E$. Then, for any $\epsilon>0$, there is a closed set $F\subset E$ and a function $g$ which is continuous on $\mathbb{R}$, such that $f=g$ on $F$ with $m(E\setminus F)<\epsilon$. 

**Proof.** Let $\epsilon>0$. Since $f$ is simple, let $a_1,a_2,\cdots,a_n$ be the distinct values $f$ takes on $E_1,E_2,\cdots,E_n$, respectively, where $\\{E_i\\}$ is a partition of $E$. Since each $E_i$ is measurable, we can find a closed set $F_i\subset E_i$, such that $m(E_i\setminus F_i)<\frac{\epsilon}{n}$, for each $i$. Define $F:=\cup_{i=1}^nF_i$. Clearly, $F$ is closed. Since $E_i$'s are disjoint, we have that $m(E\setminus F)=m(\cup_{i=1}^n[E_i\setminus F_i])=\sum_{i=1}^nm(E_i\setminus F_i)<\epsilon$. Now define $g$ on $F$ to be equal to the restriction of $f$ on $F$. We will show that this function $g$ is locally constant on $F$ so that it is continuous. Take any $x\in F$. Then $x\in F_i$ for some $1\le i\le n$. Note that since $F_i$'s are disjoint, $x\notin\cup_{i\neq j}F_j$, where $(\cup_{i\neq j}F_j)^c$ is open. Hence there is an open interval $I_x$ containing $x$, such that $I_x\cap(\cup_{i\neq j}F_j)=\emptyset$. It follows that $g$ is constant on $I_x\cap F$, and so $g$ is continuous on $F$. The extension of $g$ to $\mathbb{R}$ is the desired function. $\blacksquare$

**Theorem.** Let $f$ be a measurable function on $E$. Then, for any $\epsilon>0$, there is a closed set $F\subset E$ and a function $g$ which is continuous on $\mathbb{R}$, such that $f=g$ on $F$ with $m(E\setminus F)<\epsilon$.

**Proof.** Let $\epsilon>0$. We first prove for the case $m(E)<\infty$ (so that we can use Egorov's thm). Since $f$ is measurable, by the simple approximation theorem, there is a sequence of simple functions ${f_n}$ on $E$, on which $f_n\to f$ pointwise. Applying the previous lemma for each $n$, we obtain a closed set $F_n\subset E$ satisfying $m(E\setminus F_n)<\frac{\epsilon}{2^{n+1}}$ and a continuous function $g_n$ that agrees with $f_n$ on $F_n$. Now apply Egorov's theorem so that we have a closed set $F_0\subset E$ for which $m(E\setminus F_0)<\frac{\epsilon}{2}$ and $f_n\to f$ uniformly. Define $F:=\cap_{n=1}^\infty F_n$. Then $F$ is closed, and so $m(E\setminus F)=m(\cup_{n=0}^\infty[E\setminus F_n])=\sum_{n=0}^\infty m(E\setminus F_n)=\frac{\epsilon}{2}+\frac{\epsilon}{2}=\epsilon$. Thus, if we let $g$ to be the restriction of f on $F$, then clearly $f=g$ on $F$, and also $g$ is continuous on $F$, since uniform convergence preserves continuity. The extension of $g$ to $\mathbb{R}$ is the desired function. (TODO)$m(E)=\infty$ $\blacksquare$

## Reference
Royden, H. L. (1963). Real Analysis. Macmillan. 4th edition. 2010.
https://angyansheng.github.io/notes/measure-theory-ix
