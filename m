Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C1310C809
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 12:35:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5W6nmDXHqHjIZHDnAroXombWKc4f+oVT8//Qah1TWhI=; b=IPQ2kcivOkHxO4
	R3WHZxvIZVl8adg0//JveDEi9X799ov/3byrGV3Z0Bq63TTv3u5hB22xZT4jlTbKytyD+Cruy8i7e
	p7yvQGzWcDB1jsuvbjIp9T5xSWXKS8GcoZjC0+EeSt3f0ZxYVZjcjGnGjCDWmW3OfT2HsVy2cjght
	QdrGI+mQz8c/SITUvg8F1nNpeVSsRvUaqRztAjlI3n+w8I6HG5BV7h1SuBkgVhgnQtqS6xS7F53lS
	yqLCeAKxrt63IK0efq5voQKcEJxJ3m5FY2d6O78mX91q4ixfvWCpB0NNqcNlnWipv47OX7GPVh3p2
	FaYyCLR09ye/WYGFwruw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaI5R-0002dM-2a; Thu, 28 Nov 2019 11:35:53 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaI5I-0002cD-OM
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 11:35:47 +0000
Received: from [192.168.0.143] (ip-94-112-143-156.net.upcbroadband.cz
 [94.112.143.156])
 by mail.nic.cz (Postfix) with ESMTPSA id 0665A141301;
 Thu, 28 Nov 2019 12:35:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1574940937; bh=kh0AkgF61EodedVsamEk3Qgzf4EyLHsf8JLZYmMvMK4=;
 h=To:From:Date;
 b=NnTzFDHkPw1IVgEMytZ1FY+QIZif4dEbz/y2tT6Dggn3viTNZJNIT0vTDv1mUJNBG
 ytpoXTwp++ZptfWB5CSJuvkEEEHNWAWfmfxZv2I9JInfL+wHZgtehOExUjFJnDHmbA
 5cGRw+WBmuqrRBLNqCi3JHw25y5NewncHLU7dW0c=
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 openwrt-devel@lists.openwrt.org
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
From: Jan Pavlinec <jan.pavlinec@nic.cz>
Openpgp: preference=signencrypt
Autocrypt: addr=jan.pavlinec@nic.cz; keydata=
 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
 rj0rIUg4FQ==
Message-ID: <e8117837-aaff-8ef7-c24b-f6359d9d4ed4@nic.cz>
Date: Thu, 28 Nov 2019 12:35:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
Content-Language: en-US
X-Virus-Scanned: clamav-milter 0.100.3 at mail
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_033545_241834_E9E04610 
X-CRM114-Status: GOOD (  25.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH packages 00/11] SELinux support:
 packages feed changes
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

I really like the idea of SELinux support in OpenWrt, but I think that
if you send these patches directly to
https://github.com/openwrt/packages/ they will receive more attention
than here in mailing list.

J.P.

Dne 22. 11. 19 v 10:55 Thomas Petazzoni napsal(a):
> Hello,
>
> This patch series is one part of the changes needed to bring minimal
> SELinux support to OpenWrt. SELinux is a mandatory access control
> Linux security module, which I assume most if not all OpenWrt users
> are already familiar with. The work presented in these patch series
> presents a minimal integration, in the sense that it allows to:
>
>  (1) Build all the important SELinux components, both on the build
>      system (for example to compile a SELinux policy) and on the
>      target system (libselinux, policy management tools, etc.)
>
>  (2) Set the SELinux security contexts on the files in the filesystem
>      image generated by OpenWrt.
>
>  (3) Compile the SELinux policy on the build machine, and integrate
>      the compiled SELinux policy in the target filesystem.
>
>  (4) Load at boot time the SELinux policy and enable it.
>
> The provided SELinux policy is the default SELinux policy from the
> upstream project: it has not been tuned specifically for OpenWrt.
>
> There are two patch series for this work:
>
>  - One for OpenWrt itself
>
>  - One for the OpenWrt packages feed (this patch series)
>
> OpenWrt changes
> ===============
>
> This patch series brings the following changes:
>
>  - Allow to build Busybox with SELinux support, mainly to get -Z
>    option support in several commands. This requires linking against
>    libselinux, which is provided in the packages feeds as part of the
>    second patch series.
>
>  - Addition of minimal SELinux support in procd, to load the SELinux
>    policy at boot time. The patch has been submitted separately to
>    procd, and is being discussed.
>
>  - Addition of the fakeroot tool, which we need when generating the
>    filesystem image to run the SELinux command "setfiles" that sets
>    the appropriate security context for the files in the
>    filesystem. It obviously requires root access, which is why it is
>    executed under fakeroot.
>
>  - Addition of support for generating a SquashFS image with the
>    SELinux security contexts defined. It could be extended to other
>    filesystem formats of course.
>
>  - Add some logic to be able to enable SquashFS extended attribute
>    support in the kernel configuration, as well as SELinux support.
>
>  - Enable extended attribute support in mksquashfs.
>
> OpenWrt packages feed changes
> =============================
>
> This patch series brings new packages for the different user-space
> components of SELinux and their dependencies:
>
>  - libsepol
>  - libselinux, including its Python bindings
>  - audit
>  - libcap-ng
>  - libsemanage
>  - policycoreutils
>  - checkpolicy
>  - refpolicy
>  - selinux-python
>
> These are pretty regular packages.
>
> I'm looking forward to the feedback of the OpenWrt community on this
> proposal.
>
> Best regards,
>
> Thomas Petazzoni
>
>
>
> Thomas Petazzoni (11):
>   libs/pcre: add host variant of libpcre
>   libs/libsepol: new package
>   libs/libselinux: new package
>   utils/audit: new package
>   libs/libcap-ng: new package
>   libs/libsemanage: new package
>   utils/policycoreutils: new package
>   utils/checkpolicy: new package
>   admin/refpolicy: new package
>   libs/libselinux: add support for building the Python bindings
>   utils/selinux-python: new package
>
>  admin/refpolicy/Makefile                      |  78 +++++++++
>  admin/refpolicy/files/selinux-config          |   7 +
>  libs/libcap-ng/Makefile                       |  53 ++++++
>  libs/libselinux/Makefile                      | 104 ++++++++++++
>  libs/libsemanage/Makefile                     |  70 ++++++++
>  libs/libsepol/Makefile                        |  65 ++++++++
>  libs/pcre/Makefile                            |  11 ++
>  utils/audit/Makefile                          | 125 ++++++++++++++
>  utils/audit/files/audit.init                  |  16 ++
>  ...tue-functions-for-strndupa-rawmemchr.patch | 133 +++++++++++++++
>  utils/checkpolicy/Makefile                    |  42 +++++
>  utils/policycoreutils/Makefile                |  60 +++++++
>  utils/selinux-python/Makefile                 | 155 ++++++++++++++++++
>  .../0001-sepolgen-adjust-data_dir.patch       |  26 +++
>  ...hardcode-search-for-ausearch-in-sbin.patch |  38 +++++
>  .../0003-Don-t-force-using-python3.patch      |  67 ++++++++
>  16 files changed, 1050 insertions(+)
>  create mode 100644 admin/refpolicy/Makefile
>  create mode 100644 admin/refpolicy/files/selinux-config
>  create mode 100644 libs/libcap-ng/Makefile
>  create mode 100644 libs/libselinux/Makefile
>  create mode 100644 libs/libsemanage/Makefile
>  create mode 100644 libs/libsepol/Makefile
>  create mode 100644 utils/audit/Makefile
>  create mode 100644 utils/audit/files/audit.init
>  create mode 100644 utils/audit/patches/0001-Add-substitue-functions-for-strndupa-rawmemchr.patch
>  create mode 100644 utils/checkpolicy/Makefile
>  create mode 100644 utils/policycoreutils/Makefile
>  create mode 100644 utils/selinux-python/Makefile
>  create mode 100644 utils/selinux-python/patches/0001-sepolgen-adjust-data_dir.patch
>  create mode 100644 utils/selinux-python/patches/0002-sepolgen-don-t-hardcode-search-for-ausearch-in-sbin.patch
>  create mode 100644 utils/selinux-python/patches/0003-Don-t-force-using-python3.patch
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
