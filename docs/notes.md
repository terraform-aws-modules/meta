# Terraform AWS Modules - Office Hours - Notes and Decisions

YouTube Playlist - [https://www.youtube.com/playlist?list=PLvz1V_9d3uiufsJF6Romw_cyXBCqtNTGn](https://www.youtube.com/playlist?list=PLvz1V_9d3uiufsJF6Romw_cyXBCqtNTGn)


## 24 August 2021

### Video: [https://www.youtube.com/watch?v=D42CCLSA-qU](https://www.youtube.com/watch?v=D42CCLSA-qU)

### People (maintainers, triage, supporters):

* [Anton](https://github.com/antonbabenko)
* [Bryant](https://github.com/bryantbiggs)
* [Ilia](https://github.com/DrFaust92)
* [Thierno](https://github.com/barryib)
* [Dawid](https://github.com/daroga0002)

### Decisions (Actions Plan):

1. Add labels to all Terraform AWS modules. @antonbabenko
2. Add "community note" at the top of issue template (similar to [this one](https://github.com/hashicorp/terraform-provider-aws/pull/19632)).
3. Configure stalebot to close old/bad/inactive bug reports more aggressively.
4. Improve, standardize across all out repos and automate a bit more a release process and changelog to remove humans from this process. @bryantbiggs
5. Run `pre-commit` job on GH Action on Pull Requests which will correct the code in PR and not just complain.
6. Drop Terraform 0.12 completely, bump new major versions.


---

## 6 November 2020

### Video: [https://www.youtube.com/watch?v=RXwYBI-IWw4](https://www.youtube.com/watch?v=RXwYBI-IWw4)

### People (maintainers, triage, supporters):

* [Anton](https://github.com/antonbabenko)
* [Bryant](https://github.com/bryantbiggs)
* [Max](https://github.com/max-rocket-internet)
* [Thierno](https://github.com/barryib)

### Decisions (Actions Plan):
1. Use `pre-commit run` inside of GH 
   Action workflow instead of separate commands (like validate, fmt, docs, tflint, etc). @bryantbiggs
2. Put GH Actions by Bryant into a less active module than VPC (to not notify all watchers every time we run something during development&tests). Use terraform-aws-lambda module where we have just 7 watchers and less activity, but it is very complex, too. @bryantbiggs
3. Keep using git-chglog since nobody wants to work on a replacement implementation.
4. Terraform versions support by the modules:
  - drop 0.11 from today. Close PR related to usage of Terraform 0.11. Do not accept anything new event to "terraform011" branch.
  - support 0.12 till 1.1.2021. Close PRs related to Terraform 0.12 from 1.1.2021.
  - support 0.13 (start using features introduced there, if necessary) after 6 months "grace period" after the GA release
  - support 0.14 features 6 months after GA release (approx from 1.5.2021)
5. Propose a list to map conversion using 0.13 features (try, can, and so on). @antonbabenko
