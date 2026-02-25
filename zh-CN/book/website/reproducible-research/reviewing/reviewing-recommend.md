(rr-reviewing-recommendation)=

# B. 建议和最佳做法

## 谁评论？

在开发商通常已经相互了解的小规模项目范围内， 常见的做法是让编译者将该群组中的某人标记为审核者。
当您被标记为审核者时， 首先检查您是否对 有足够的知识。 代码中的新更改能够在合理的时间内完成一份很好的工作。

与此相对照，大规模发展项目很可能有适用于 审查人员如何分配给个别吸引申请的现有具体规则。
These rules serve to balance the group workload and to maximise the various benefits of the process to the project and its participants.
The very largest projects may even have dedicated staff - or teams of staff - to act as reviewers.
Typically, code reviews can only be performed by an authorised subset of contributors within larger projects.

For projects where multiple rounds of review on similar material are likely and long development cycles are anticipated, a degree of strategic thinking on who completes reviews is sensible.
A single reviewer is likely to be able to make comments on code they have reviewed before much more efficiently.
However, letting reviewer-coder pairs like this persist is generally a bad idea, as it can lead to the same kinds of groupthink that the review process is designed to avoid in the first place.

(rr-reviewing-recommendation-be-nice)=

## 太棒了！

如同所有开放源码和协作企业一样，互联网优良使整个过程更加顺利。
也许最重要的是，审查互动双方始终抱有诚意，并始终具有建设性。
这些原则适用于审查进程，而不是几乎任何其他项目方面，因为它必然涉及批评，可能是两个完全陌生人之间的批评。

## 保持合作

与传统的“学术风格”同级审评不同，大多数代码审查系统有若干优点：它们很少匿名， 他们是公开面对面的，没有编辑的中间人，审查者和被审查者之间的联系就可以是直接和迅速的。
这意味着代码审查通常是一个快速、灵活和互动的过程。
良好的同行审查将得到充分合作，一旦审查人员标明了可能的查询，将予以充分合作。 双方可以共同努力寻找解决办法。
第三方在讨论过程中也不非典型，讨论线索可能会在更仔细的评论下成长。
这一切都是好的。

## 避免成为主题

守则审查应力求尽可能客观。
当然，任何项目都可能出现主观的编码偏好。
但是，只要有可能，就应在项目一级事先作出决定。
因此，我们可以避免意见可能作为事实而被放弃的情况。
相反，可以通过指出事先建立的有文件记载的偏好来支持这些建议。
如果您确实遇到了未验证的偏好设置， 再次与团队讨论，并同意是否在您的代码审核过程的清单中添加首选项。

## 指定关键的Versus 可选更改

您可能想要区分关键的更改和优秀的更改。
例如，开始“你可能……”的评论可以用来表达审查人员想要编程器考虑但不是必要的建议。
这些特别有用，可以引导没有经验的编程器编写更好的代码，同时又不过分。
如果他们不同意，编程员就可以决定忽略这些非关键的评论。
评论员可以使用开始"您必须..."的评论来指定那些不是可选的。

## 小区块的审核代码

随着项目的发展，逐步审查小块代码可有助于提高代码审查过程的效率。
一旦出现重大错误，审查一个巨大的代码库就会更加困难。
如果能够在进程的早期发现错误，这些错误就更容易解决，这将有助于整个代码开发进程。

以下是关于如何将代码评论纳入我们工作进程的一些一般性建议：

- Take the time, read carefully. 仔细阅读时间. 审查一切，没有任何东西太短或太简单。
- 试着还有其他东西要做，并在你的 个工作日中散布负荷。 Don't review for more than an hour at a time, after that the success rate drops quite quickly.
- Don't review more than 400 lines of code (LOC) at a time, less than 200 LOC is better. Don't review more than 500 LOC/hour.

## 与脱机进行讨论

有时候，由于代码审查较为复杂，网上通信可能导致没有结果的对话。
安排亲自出席会议有助于以更加协作和友好的方式解决一些更加棘手的问题。
作为一种替代办法，发展/研究小组可定期与小组所有成员举行会议，进行守则审查。
For example, see the approach taken by a professor organizing [lab meetings for code](http://web.archive.org/web/20210512053038/http://fperez.org/py4science/code_reviews.html).
