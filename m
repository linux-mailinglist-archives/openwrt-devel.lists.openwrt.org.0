Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC071A529E
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 17:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sa1XutzUSgXxfeWwYyqeXehwXOGZOOr2Mnmn/XpZ3AQ=; b=QhikjzHtzGCaRt
	QtZwaF6SB8BAwGyPnm8mt/2OeWmFJoj9YkFteuulGy7qVTrrRa2Vz0YKayX2TsYyDh6NXSNuW4K6Y
	L8Grj+6ZJiKDUtfjWQX/mC21sM7MGlLKc6K7VKXS0nvcg7nBa/nPNZxl5W9Q6M7b50bwLnojcB+3c
	uq84eZ4J31MBX3mKPtaQlCrnSizivrWk8bRLog0nMWszwTJQJHNxgCoG8Bao+sQt6+e2n7nMfIa0j
	bUzEZRw9ijdkytxpJTvrM3/7J6c4JmKYtKtyECD1PZdPkjQgbywsO7CFgBJA7NbtEDpFL6zlWMcRv
	SrRM2+hgmzCWziUIVzfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNIEN-0006oa-VA; Sat, 11 Apr 2020 15:39:39 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNIED-0006nY-Nl
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 15:39:31 +0000
Received: by mail-qk1-x744.google.com with SMTP id l25so5169248qkk.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 11 Apr 2020 08:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mk0z+jVwwIk7uXtNLHdf+kFcNrE+Iyeuc1iYMDCmtro=;
 b=V+axDp8uc+gFOKYneTNl/2dQFJk97I6tqRTrFZerUaQsOj/9+e5tE05t9cVRoQUMrw
 xv6yrCqDKIWZ2+Ou1NQgkizP42jETeZHxrXTMOD48Vms+g7zKTTBvICIYejYP9HKV/Jv
 EL4xB9kWkJJY3DHuJkQIkxy2OK58bnQ0jpKd4nZx0D35kayNmm77pzWRwF69WA/GObHE
 +T0SYdybEIJzJmWKeWkp6WfVyOjwAtNXEFpwa/D1xwzqaw1gJbmZjoBMqvX+GbPrNjCc
 q42mJ74LxgG+egQxafqRZcdeAd9kmVKSgs/ymKLRwfXSNc3ptiwn0enXVKkg49DLvU/Q
 dVRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mk0z+jVwwIk7uXtNLHdf+kFcNrE+Iyeuc1iYMDCmtro=;
 b=pUKN2oi0RGq6EiRbXR4wb6/cygcc5Bwjzf4iYGHUWLpJ6Z56pRKDP7lyEFxXvO8ABY
 f+kUex6HRKGPAfo26YcnRmJCPpgZeIR+dsbb6OYAcQogkn+0qcu15ZZGqQlmEp9CnquI
 I3pWBvF+DBEobQFX3QGL9IYaym3596BIDcrkn34UOBNgwCReE/vJzadEDeUmP/nnULbl
 F6Q0pKP+L8S4uhEWExYJbkXO0tsnWG6bUr2MjYDdwUfvcISpo/cS5fYKBIc8F7Md3YLz
 1SwpXToPa4scIl6g4nN33sQJcJ3nqbSLcCxHm20Ech32ns0CoTE4Tod8xed/sch6FQ9U
 HF5g==
X-Gm-Message-State: AGi0PuZdvqdEM7jyx1QtjVK7d4hk4iaAsl6j6NP7cqFLy8v/3QPY6eYA
 rOQMWTjk2pYl1GOxzFZf8Kr6uevQ/YirIoGrYP4=
X-Google-Smtp-Source: APiQypJwieELrLis8iYj8IfPysAoPEUNPnfot+ulj4hkqNkP27zb940ECSuBfO2ic/Lyfkn+JnODqPEIaJ2o/+I4xMY=
X-Received: by 2002:a37:6407:: with SMTP id y7mr8962763qkb.462.1586619567706; 
 Sat, 11 Apr 2020 08:39:27 -0700 (PDT)
MIME-Version: 1.0
References: <a39e388f-a421-3b22-f271-418473b71bf3@iki.fi>
In-Reply-To: <a39e388f-a421-3b22-f271-418473b71bf3@iki.fi>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Sat, 11 Apr 2020 12:39:14 -0300
Message-ID: <CAPxccB3Z5RM5rScLnEGU_LktkPdhAWJzbwj4zwYwxNXqcsd=ow@mail.gmail.com>
To: Hannu Nyman <hannu.nyman@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_083929_778842_77E824E5 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Phase2 packages buildbot has failed since the
 kconfig changes
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

On Sat, Apr 11, 2020 at 11:07 AM Hannu Nyman <hannu.nyman@iki.fi> wrote:
>
> Looks like the recent kconfig changes broke the whole packages buildbot.
>
> (For some weird reason, the arc targets succeed, but all others fail miserably...  )
>
>
> http://buildbot.openwrt.org/master/packages/grid
>
> http://buildbot.openwrt.org/master/packages/one_line_per_build
>
>
> Some of errors in the logs are possibly related to the TARGET_MULTI_PROFILE error preventing some default packages, and for that bug there is already a proposed patch.

This should be fixed with https://patchwork.ozlabs.org/patch/1268895/.
Tell me if it does not work.

>
> But most errors seem to be related to recursive errors inside the rather complex mac80211 wifi driver collection. I have a hunch that for buildbot the "treat recursive dependencies as warnings instead of errors" option (from 3204430e3 ) should be activated in the config binary, or alternatively some major work for re-organising the mac80211 submodule dependencies needs to be done.

Yes, I've added the WARN_RECURSIVE_DEP option to be used by the bots.
I wasn't sure if this option should be default or not.  My reasoning
was that erroring out would make it harder for new circular
dependencies to creep in, and bots could run with it on.
Clean the scripts/config directory with make config-clean (if bots
don't start with a clean slate), then add  WARN_RECURSIVE_DEP=1 to the
bots make flags.

Most of the time, the recursive dependencies reported by config the
ones causing the trouble.  It usually occur because some package
selects (DEPENDS= +<pkg>) another package that depends on another
symbol without either selecting the symbol (DEPENDS=+<sym> +<pkg>)  or
only selecting the package if symbol is on (DEPENDS=+<sym>:<pgk>).
The most common case is a package selecting a module that depends on
some global feature.  The ones I've fixed in 2e6b6f9fca ("kernel: add
@IPV6 dependency to ipv6 modules") had kmod packages selecting ipv6
modules without checking if CONFIG_IPV6 is enabled or not.

>
> Example:
>
> http://buildbot.openwrt.org/master/packages/builders/mips_24kc/builds/219/steps/compile/logs/stdio
>
>
>
> Config-build.in:10377:error: recursive dependency detected!
> Config-build.in:10377: symbol PACKAGE_kmod-cfg80211 depends on PACKAGE_kmod-cfg80211
> For a resolution refer to Documentation/kbuild/kconfig-language.rst
> subsection "Kconfig recursive dependency limitations"
>
> Config-build.in:10273:error: recursive dependency detected!
> Config-build.in:10273: symbol PACKAGE_kmod-b43 depends on PACKAGE_kmod-b43
> For a resolution refer to Documentation/kbuild/kconfig-language.rst
> subsection "Kconfig recursive dependency limitations"
>
> tmp/.config-package.in:10656:error: recursive dependency detected!
> tmp/.config-package.in:10656: symbol PACKAGE_kmod-acx-mac80211 depends on PACKAGE_kmod-acx-mac80211
> For a resolution refer to Documentation/kbuild/kconfig-language.rst
> subsection "Kconfig recursive dependency limitations"
>
> Config-build.in:10665:error: recursive dependency detected!
> Config-build.in:10665: symbol PACKAGE_kmod-wl18xx depends on PACKAGE_kmod-wl18xx
> For a resolution refer to Documentation/kbuild/kconfig-language.rst
> subsection "Kconfig recursive dependency limitations"
>
> tmp/.config-package.in:11992:error: recursive dependency detected!
> tmp/.config-package.in:11992: symbol PACKAGE_kmod-mwlwifi depends on PACKAGE_kmod-mwlwifi
> For a resolution refer to Documentation/kbuild/kconfig-language.rst
> subsection "Kconfig recursive dependency limitations"
>
> Config-build.in:8941:error: recursive dependency detected!
> Config-build.in:8941: symbol PACKAGE_kmod-batman-adv depends on PACKAGE_kmod-batman-adv
> For a resolution refer to Documentation/kbuild/kconfig-language.rst
> subsection "Kconfig recursive dependency limitations"
>
> Config-build.in:10501:error: recursive dependency detected!
> Config-build.in:10501: symbol PACKAGE_kmod-mwifiex-sdio depends on PACKAGE_kmod-mwifiex-sdio
> For a resolution refer to Documentation/kbuild/kconfig-language.rst
> subsection "Kconfig recursive dependency limitations"
>
> Config-build.in:10545:error: recursive dependency detected!
> Config-build.in:10545: symbol PACKAGE_kmod-rt2400-pci depends on PACKAGE_kmod-rt2400-pci
> For a resolution refer to Documentation/kbuild/kconfig-language.rst
> subsection "Kconfig recursive dependency limitations"
>
> Config-build.in:10425:error: recursive dependency detected!
> Config-build.in:10425: symbol PACKAGE_kmod-mac80211 depends on PACKAGE_kmod-mac80211
> For a resolution refer to Documentation/kbuild/kconfig-language.rst
> subsection "Kconfig recursive dependency limitations"
>
> Config-build.in:10229:error: recursive dependency detected!
> Config-build.in:10229: symbol PACKAGE_kmod-ath10k-ct-smallbuffers depends on PACKAGE_kmod-ath10k-ct-smallbuffers
> For a resolution refer to Documentation/kbuild/kconfig-language.rst
> subsection "Kconfig recursive dependency limitations"
>
> Config-build.in:10269:error: recursive dependency detected!
> Config-build.in:10269: symbol PACKAGE_kmod-ath9k-htc depends on PACKAGE_kmod-ath9k-htc
> For a resolution refer to Documentation/kbuild/kconfig-language.rst
> subsection "Kconfig recursive dependency limitations"
>
>
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
