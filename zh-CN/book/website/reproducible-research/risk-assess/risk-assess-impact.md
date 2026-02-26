# 风险评估：复杂性和影响

We all use risk assessments all the time. Sometimes they’re formal procedures to ensure an activity is safe, but most of the time they’re the thought of a moment- Is this coffee too hot?
Is there a bus coming? ，"是否有公共汽车来了？” 软件并不不同，使用下文所述的风险评估办法能够真正有助于使您的工作取得成功并具有可持续性。

## 风险矩阵

A risk matrix is a very popular way of quantifying what’s going on with the thing you’re interested in. One axis measures exposure in some way, and the other the impact of a mishap.
The further from the origin, the more safeguards are needed to make the risk acceptable.

```{figure} ../../../figures/risk-matrix.*
---
name: risk-matrix
alt: Impact vs complexity risk matrix
---
Impact vs complexity risk matrix
```

In our case, we will use ‘complexity’ and ‘impact’ as the two axes. Some case studies illustrate how it works…

Case 1

> Richard needs to submit 100 small jobs to the department cluster, with the names of the jobs varying according to a simple pattern. This is tedious and he wants to go outside and play. Therefore, Richard decides to write a short shell script to submit all the jobs. He pauses for a few seconds and asks:

> How complicated is this? It’ll only be about 1 screen of text.

> What’s if it goes wrong? The jobs won’t submit or run and I’ll get some failure emails.

> Here, Richard decides that both the complexity and impact of this tiny piece of software are low. Therefore, using version control and writing documentation is disproportionate right now. He decides to do a dry run by echoing the submit line to the terminal so he can give it a quick check.

> A few weeks later, someone else in the lab wants to do the same thing. Richard offers his script as it worked quite well for him. The goalposts have moved. Richard pauses for a few more seconds to and reassesses the risk…

> Richard 暂停几秒钟并重新评估风险…
> …5年后 Richard的脚本已经发展成为一个大型的工作流控制系统，允许几所大学管理复杂的工作流，包括提交给各种不同的计算机资源。 The software now has a formal project board that sets the governance and direction of the software, ensuring that it is sustainable and meets the needs of the 100s of users worldwide.

Case 2...

> Jemma has a problem with visualising some data. The usual library can’t cope with the format her data. She’s heard about Seth’s Friday afternoon project where he’s written a wrapper around this library to solve what seems to be the same problem. They have a coffee and decide to work together. During this coffee, they make some decisions about how they’re going to work successfully together- this is their risk assessment. Seth agrees to go away and improve the inline documentation and add some use case examples before sharing. Jemma agrees to set up a repository into which Seth will put the code.

> Over time, more people start to make use of this software, with feature requests adding complexity and changes in the underlying library causing breakages. Jemma and Seth agree that things are getting a bit risky because the impact of wrong results might cause problems with publishing results. They therefore introduce continuous integration tests and a review process to ensure things remain sustainable.

The key point of these case studies is that every piece of software has different needs to be sustainable, and these requirements can change over time. The use of version control, testing, documentation and other sustainability concepts are useful for managing risk. Using none of these tools leaves your software exposed to things going wrong, but using all of them from the outset can get in the way of innovation.
The risk assessment approach helps you find the right balance for now. Revisit the topic once in a while, or when something circumstances change.

## 度量复杂性的更多信息

One measure of complexity is line count.
你有越多的地方会犯错误. 然而，我们还可以注意其他问题。 However, there are other things one might care about.
How many libraries do you depend on? How many functions are there? All of these measure the complexity of the codebase.
Complexity can take other forms too.
How many use cases are there?
Does your blob counting software only get used for counting blobs in the biosciences?
Are there people using it to count blobs in CCTV images?
What types of computer are people using it on?
CPU? GPU? Raspberry Pi?
Take a broad view of your software.

## 度量影响的更多信息

What happens when (not if) your software doesn’t work?
Sometimes, it just annoys you for a few minutes.
However, other software going wrong can have huge consequences- the retraction of your seminal paper or even lives being lost.
Measuring the impact requires good knowledge of what your software is being used for.
It can sometimes be difficult to keep track of this until things go wrong.
人们可以通过问“我用这个软件在我的纸上进行分析是否有任何好东西”等问题来试图将这个问题摆在旁边？
Again, take a broad view of your software.
