## 第二节

随机变量（Random Variables）是研究不确定性现象的基本工具，是从样本空间映射到实数轴的函数$X:\Omega \rightarrow \R$，随机变量自身没有不确定性，它是确定性的函数。根据样本空间是否可数分成两类：

* Discrete 分布律$P(X=X_k)=P_k$
* Continuous 概率密度$f_X(x)$

随机过程就是一大堆或一组的随机变量。其角标未必是时间，只是对若干随机变量的标记。如果认为是时间，随机过程看作是过程，时间意味着在考察某种发展（evolution）随时间变化的规律。其角标还未必是一维的，还有可能是二维的$X_{ij}$，称为随机场（Random Field）。

* $X_1,X_2,...,X_n$，这样的标定称为离散标定（Discrete Index）；

* $X(t)$，这样的标定称为连续标定（Continuous Index）；严格意义上是一个二元函数$X(w,t)$，时间参数$t$提供其过程属性，样本空间的样本点（样本参数）$\omega$提供其随机属性，谓之“随机过程”。

随机过程关心的是随机过程在不同时刻取值的随机变量之间的关联（Relation（Interaction））

联合分布(Joint Distribution) $f_{X_1,X_2}(x_1,x_2)$:

* $f_{X_1,X_2}(x_1,x_2)\geq 0$
* $\int_{-\infty}^{\infty} f_{X_1,X_2}(x_1,x_2)\, dx_1dx_2=1$
* Boundary Distribution $f_{X_1}(x_1)=\int _{-\infty}^{\infty}f_{X_1,X_2}(x_1,x_2)\, dx_2$

$P(x_1 < X_1\leq x_1+\Delta x_1, x_2 < X_2\leq x_2+\Delta x_2)=f_{X_1,X_2}(x_1,x_2)\Delta x_1 \Delta x_2$

一个二元函数复杂度很高，研究随机变量之间的关联，联合分布虽然包含的信息很丰富、描述问题很透彻，但是很复杂，希望引入新的工具。

$f_{X_1,X_2}(x_1,x_2)=f_{X_1}(x_1)f_{X_2}(x_2)$

$P(X_1,X_2,...,X_n)=P(X_n|X_{n-1},...,X_1)P(X_{n-1},...,X_1)=P(X_n|X_{n-1})P(X_{n-1}|X_{n-2})...P(X_2|X_1)P(X_1)$

Geodesic

* Simple Description
* Really Effective
* Widely Applicable

$X_1,X_2$Metric(Distance) $d(X_1,X_2)=(E|X_1-x_2|^2)^{1/2}$
$$
E|X_1-x_2|^2=E|X_1|^2+E|X_2|^2-2E|X_1X_2|^2\Longrightarrow E(X_1X_2)\\
E(X_1X_2)=E(X_1)E(X_2)\Longrightarrow E(X_1-EX_1)(X_2-EX_2)=E(X_1X_2)-E(X_1)E(X_2)
$$
Independence

$$
\begin{align}
E(X_1X_2)&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}x_1x_2f_{X_1,X_2}(x_1,x_2)\,dx_1dx_2\\
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}x_1x_2f_{X_1}(x_1)f_{X_2}(x_2)\,dx_1dx_2\\
&=\int_{-\infty}^{\infty}x_1f_{X_1}(x_1)\,dx_1\int_{-\infty}^{\infty}x_2f_{X_2}(x_2)\,dx_2=E(X_1)E(X_2)
\end{align}
$$

$$
\Theta\sim U(0,2\pi)\quad X_1=\cos (\theta),X_2=\sin(\theta),X_1^2+X_2^2=1\\
E(X_1)=\int_{-\infty}^\infty x_1f_{X_1}(x_1)\,dx_1=\frac1{2\pi}\int_0^{2\pi}\cos(\theta)\,d\theta=0\\
E(X_2)=0\\
E(X_1X_2)=\int_{-\infty}^\infty \cos(\theta)\sin(\theta)f_{\Theta}(\theta)\,d\theta=\frac1{2\pi}\int_0^{2\pi}\cos(\theta)\sin(\theta)\,d\theta=0\\
E(X_1X_2)=E(X_1)E(X_2)
$$

$Inner Product: H\times H\longrightarrow \R <x,y>x\in H,y\in H$

* $\left \langle x,x\right \rangle\geq 0 \left \langle x,x\right \rangle=0\Longrightarrow x=0$
* $\left \langle x,y\right \rangle=\left \langle y,x\right \rangle$
* $\left \langle \alpha x+\beta y,z\right \rangle=\alpha\left \langle x,z\right \rangle+\beta \left \langle y,z\right \rangle$，$\left \langle x,\alpha y+\beta z\right \rangle=\alpha\left \langle x,y\right \rangle+\beta \left \langle x,z\right \rangle$
* $E(X^2)=0\Rightarrow X=0,P(X=0)=1$

$$
\begin{align}
\cos \angle \left \langle x,y\right \rangle&=\frac{\left \langle x,y\right \rangle}{(\left \langle x,x\right \rangle\left \langle y,y\right \rangle)^{\frac12}}\\
&=\frac{E(X_1X_2)}{(EX_1^2EX_2^2)^{\frac12}}
\end{align}
$$

$$
\nabla _\alpha h(\alpha)=\frac{d}{d\alpha}E(\alpha X_1-X_2)^2=2E(\alpha X_1-X_2)X_1=0\\
\Rightarrow \alpha =\frac{E(X_1X_2)}{E{X_1}^2}
$$

$$
\lVert X_2 \rVert \cdot \cos(\theta)=\frac{E(X_1X_2)}{\lVert X_1 \rVert\lVert X_2 \rVert}\cdot\lVert X_2\rVert=\frac{E(X_1X_2)}{\lVert X_1 \rVert}\\
\frac{E(X_1X_2)}{\left \| X_1 \right \| } \cdot \frac{X_1}{\left \| X_1 \right \| } =\frac{E(X_1X_2)}{\left \| X_1 \right \|^2 }
X_1=\frac{E(X_1X_2)}{EX_1^2}\cdot X_1
$$

$$
E(X_1X_2)=0\Longleftrightarrow \angle (X_1,X_2)=\frac{\pi }{2} 
$$

$$
\left | \left \langle x,y \right \rangle  \right |^2\le  \left \langle x,x \right \rangle \cdot  \left \langle y,y \right \rangle\\
\left ( \sum_{k=1}^{n}x_ky_k  \right ) ^2\le \sum_{k=1}^{n}x_k^2\sum_{k=1}^{n}y_k^2\\
\int f\left ( x \right ) g\left ( x \right ) dx\le \int f(x)^2 \int g(x)^2 \\
0\le h\left ( \alpha  \right )= \left \langle \alpha x+y, \alpha x+y\right \rangle =\alpha ^2\left \langle x,x \right \rangle+2\alpha \left \langle x,y \right \rangle +\left \langle y,y \right \rangle  \\
4\left \langle x,y \right \rangle^2-4\left \langle x,x \right \rangle  \left \langle y,y \right \rangle \le 0
$$

