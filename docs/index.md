---
# hide: "toc"
icon: lucide/braces
title: 'the hpc docs'
description: |
    some description of this site
hpcsite: HPC UGent
status: new
---

# Welcome to the {{hpcsite}} documentation

<!-- Yüksek Başarımlı Hesaplama -->
---

:material-information-outline:{ title="Important information" }

![image](img/ch0-hpc.png){: align=left style="height:383px;width:378px;border-radius:6px" }

Use the menu on the left to navigate, or use the search box on the top right.

You are viewing documentation intended for people using **{{ OS }}**.

Use the OS dropdown in the top bar to switch to a different operating system.

**Quick links**

- [Getting Started](getting_started.md "to start")  
| [Getting Access](account.md)
{%- if site == 'Gent' %}
- [Recording of HPC-UGent intro](https://www.ugent.be/hpc/en/training/introhpcugent-recording)
- [Linux Tutorial](linux-tutorial/index.md)
- [Hardware overview](infrastructure.md)
- [Available software](./only/gent/available_software/index.md)
- [Software installation requests](software_installation_requests.md)
- [Migration of cluster and login nodes to RHEL9 (starting Sept'24)](rhel9.md)
{%- endif %}
- [FAQ](FAQ.md) | [Troubleshooting](troubleshooting.md) | [Best practices](./best_practices.md) | [Known issues](known_issues.md)

<br/><br/><br/>

If you find any problems in this documentation, please report them by mail to <{{ hpcinfo }}> or [open a pull request]({{config.repo_url}}).

If you still have any questions, you can [contact the {{ hpcteam }}]({{ hpc_support_url }}).

*[HTML]: Hyper Text Markup Language
*[W3C]: World Wide Web Consortium
*[OS]: Operating system
*[RHEL]: Red Hat Enterprise Linux
*[RHEL9]: Red Hat Enterprise Linux, version 9, released on May 17, 2022
*[HPC]: High Performance Computing
*[YBH]: Yüksek Başarımlı Hesaplama "HPC in Turkish"
