(pd-project-repo-readme)=
# 登陆页面-README 文件

您的项目的登陆页面是您的项目仓库首次看到的新访客。 在诸如GitHub等在线仓库中，这个登陆页面被命名为“README”，相当于网站的主页。

> README 文件是您项目的受欢迎的 mat - 它通过显示您项目的值为您提供了连接潜在贡献者和用户的机会。 - [Mozilla Open Leaders](https://mozilla.github.io/open-leadership-training-series/articles/opening-your-project/write-a-great-project-readme/)

为了有效地交流你的项目，并邀请你的读者为你的项目作出贡献，你的README 文件应该覆盖：
* 你正在为谁做什么，为什么做什么。
* 什么使你的项目变得特殊和令人兴奋。
* 如何开始。
* 在哪里找到关键资源。

考虑设计一个对尽可能多的读者有吸引力的登陆页面，并且提供所有有用的信息，而不会使您的贡献者占绝大多数。 对于软件项目，请提供关于运行您的软件的安装、测试、部署和其他要求的说明。 查看 [模板由 PurpleBooth](https://github.com/PurpleBooth/a-good-readme-template) 编写。

欲了解更多详情，请见 [此演示](https://docs.google.com/presentation/d/e/2PACX-1vTvwtT3GddLaDr8J4ZEf8TkufiN_Wn1Kgv2xu6YSH8hgocb6LJ_WB82OzfcPeJ0b09_xyMOMSft7-Gq/pub?start=false&loop=false&delayms=3000) 由 [开放生命科学](https://openlifesci.org/) 培训和辅导方案。 另外，看看这个 [short workshop 由 Hao Ye](https://ha0ye.github.io/CW21-README-tips/) 带有 [README 模板](https://ha0ye.github.io/CW21-README-tips/template_README.html) 让您开始吧。

```{note}
**三节关于README**

- 了解您的用户和他们需要的
- 获取用户快速做强大的事情
- 关注术语！

资料来源：Hao Ye。 （2021年，3月）。 协作车间2021年小型车间：README 提示使您的项目更容易访问 (版本 v1.0.0). Zenodo. http://doi.org/10.5281/zenodo.4647391
```

## 案例研究： _诱惑路径_

使用 [_Ting Way_ README 文件](https://github.com/alan-turing-institute/the-turing-way/blob/main/README.md) 作为示例，我们描述了一个好的 README 文件看起来是什么。

_Ting Way_ README 文件包含以下按时间顺序提供的详细信息：
1. 项目名称作为顶部标题。
2. 一组 [GitHub 徽章/盾牌](https://github.com/badges/shields) (您可以在这里创建自己的徽章 [](https://shields.io/))。 GitHub shields are clickable buttons that provide concise actions related to the project, which in _The Turing Way_ include the following: [![阅读书](https://img.shields.io/badge/read-the%20book-blue.svg)](https://the-turing-way.netlify.com) [![加入我们的微信邮件列表](https://img.shields.io/badge/receive-our%20newsletter%20❤%EF%B8%8F-blueviolet.svg)](https://tinyletter.com/TuringWay) [![在 https://gitter.im/alan-turing-institute/the-turing-way上加入聊天](https://img.shields.io/gitter/room/alan-turing-institute/the-turing-way?logo=gitter)](https://gitter.im/alan-turing-institute/the-turing-way) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3233853.svg)](https://doi.org/10.5281/zenodo.3233853) [![](https://img.shields.io/static/v1?label=TuringWay&message=I%20want%20to%20contribute!&color=yellow&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8%2F9hAAACYklEQVQ4jXXTy09TQRTH8f5VPhI1xoVxYURNAFcmRleaGDdGXQlKAYkLUARNfICoScGKpTyE3t5bkKD2AUQepUXB0gcgLTalD9rema8LKRVrT3I2k%2Fl95kwyY6BMfQiFqHaoVDlUBoJBZJl9hn8XRsIhqh0abd55tnWdrBA8WfBSpakMhUqhXUCJhKl2aLR65%2FEtLeGc%2BYoy5aHf46bX7cThctK%2BAw2HQkVAW41wzqHRMjNNRteR%2BQzGjg5udZtQ47FiO50gdLZ1nVbvPNUOFSUSxnB4sJ%2F0TjCTTjHk%2BoJl%2BRtqPEaL6zMH79Rw0dyDVVURqRgyn0EkN8jkshwZGsBQodgQyQ2kyDPsce859drjdqLRKE0D%2FZhHR5F6DpHc2B3%2FjF3BcFqxARIpBXXmt9ii67vAYDhIr8fNx0UfE3OzzC0sIHIpxNYqSPEHqFBsiFQMkU3h8vs5%2FvABTeNje6BCj%2FxcwzLlIZHYROq5v4EoIr2JyCbJ57Kobjd3u7o41v4I68pyCfTGrhSvUKHYAJD5bcTWGjKbJJdO4A8E6JyexP4rWgK8Vkb2AjK7hcxnmZybxfF9kff%2BhZJQofvXwhg7O4vAfU2l79ME79xOrjY3c9ZYVzZs8nvZf6%2BRQCRCTgiODg1iCK6vc6WtjZM1tzlRW8sNa99%2Fx64fH%2BNAQz0un49nfh%2BVmspAcKX4lKWUbMbjXOg2cf3Vy%2BLIoRWqekxc7nhB6%2FQ0lZqKJRBAyjKfKZFIcKixgVPPn3LTamFfUyPne7qp1Oz0Bn4g5d7vVAIUamJ2FqPZzCW7gvlHabBQvwE2XnlAiFRrOwAAAABJRU5ErkJggg%3D%3D)](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md)
3. 链接到README 文件的翻译版本，允许读者以他们喜欢的语言阅读它。
4. 每个句子一句话都提供项目远景、目标和目标受众。
5. 一个提供快速链接到README 文件不同部分的内容表
6. 有适当细节和链接的不同章节：
  - 关于项目：动机和背景
  - 团队：团队成员是
  - 贡献：与贡献准则和行为守则的联系
  - 引用诱惑之路：引证项目的说明
  - 联系：项目线索的详细联系方式

最后，我们提供了该项目捐助者的完整名单。 此贡献者表使用 [全部贡献者机器人](https://allcontributors.org) 更新，它承认所有类型的贡献，包括那些不推送代码的贡献。
