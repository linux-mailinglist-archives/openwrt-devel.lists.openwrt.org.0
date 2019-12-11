Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 504DE11BCBD
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 20:17:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4evkhxAaoUihrZP+fB8GM+Vu1Aa4tA6l6A6UmoZWys=; b=BHw5lwFXHDYsl1
	A32fuFxecEbF2KApFnrS160+Kz//AamOMOYbu+s51nM8sya+1JNFqS97idDFfslRStTZm1Et+MmMa
	7FBxEgYd7G23tkLIauIZn2fWg859WoUI5gmzVC1n4e4bK+NGDQND3DVt3hMoHiF5UM0p7GLSoZOTl
	vE5xcmAV73edzHKcs1sFnp8BdX82JBYC/WHxv35tFuLY/zlO4/QgCEpgpE/VAe2SoVTb68hFLWcva
	FTcM7JPx4D2B+WrvVwUIYdwz8AWCNUJZ1Y7j9xUgy+QOstRm+aFhXGCdhxAkxOlUPOryj50dVQg8f
	Ytebfx4XD4+02rW/XtvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7Tw-0007ll-MJ; Wed, 11 Dec 2019 19:17:08 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7To-0007kt-Rf
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 19:17:02 +0000
Received: by mail-lj1-x244.google.com with SMTP id d20so25308701ljc.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 11:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QF8OrVW6WAkGWH4X4Hg46y//rUtbPF7ZSVZWjCE2JAU=;
 b=sXC01UYMeZ/vrhwFWa7+dwHzupYsG73DeFVh6IfqQXpC2csrV3H1xtqr/nXIxAsXs5
 f2s13luinmScDRhhQ4Oq3OuAt6gri45xg6MlukZjIGbu65fYhpSKbdyLKCLZnEWABjkI
 3sCBf5Go3WGWWAr+0l4yeXBnXn081rachL6EvElm1Crpz4tAM7ExWxCkHewUFEjapAnr
 lv4Bi9oaUeA2wdjOlx60L0Ym83PZUAY+2+jSWd+2A342EYQhp9nIHvEqnXdokXfOZYUm
 5E4fnI37RfYq8gfQG8sot6YrXBYHos8c8eMzUE/4s/Lft76ZRr/ccFTYI8cwanRkf49X
 LzHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QF8OrVW6WAkGWH4X4Hg46y//rUtbPF7ZSVZWjCE2JAU=;
 b=C1bP+2XXj0LLYFZcWPPaE55an9m9Y3tYRofUGdrkSRrMSJTUP7IyClI/QKphreMrHB
 wruM3kcgNx/Ge5BUPt19a4aBl58QQDOc+KJcagemxi3rQgOzTHKmpYnC8T0kjq59X1EK
 yEcd7bx8P38gMWuqR5WUMsOJtZMj7fp/RzSfb19kDujRR3Afeb8yaS/VDhF2yiCf0i5h
 KWySZON9aEqmPrS1WlWonlJYSrqj4bq7zYQhdDBbPdlDs4BYmv1mOS++Q0mwQVETAo4k
 geo38661J/2eYShXhMno5jOqgRzbyTqObr+omoIyBkTmPFvQeZhVwcPzpBiu7QJpBgBm
 ZElA==
X-Gm-Message-State: APjAAAUBwJhs5CtgW9nn6WKu1Zjtlk1LQBjS/hMzGbzvHetYdQYQueOu
 +oWsAxLR1YBv8Q8EIn5uVEU=
X-Google-Smtp-Source: APXvYqwmCMFWjhVlGzBahvk2/FjwLVoWo0yz1+sYv1mrBs7OmVG9T599JaLosxnW/R6kyv21HMAcUw==
X-Received: by 2002:a2e:b52a:: with SMTP id z10mr3215527ljm.178.1576091818204; 
 Wed, 11 Dec 2019 11:16:58 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id w9sm1636004ljh.106.2019.12.11.11.16.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 11:16:56 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBBJGs3g016645; Wed, 11 Dec 2019 22:16:54 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBBJGrY7016642;
 Wed, 11 Dec 2019 22:16:53 +0300
Date: Wed, 11 Dec 2019 22:16:52 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Ben Greear <greearb@candelatech.com>
Message-ID: <20191211191652.GU11070@home.paul.comp>
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <20191211144459.13235-1-fercerpav@gmail.com>
 <d938b7ab-80b0-c78a-5a84-435243dff86d@candelatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d938b7ab-80b0-c78a-5a84-435243dff86d@candelatech.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_111700_892871_8F0E966E 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>, openwrt-devel@lists.openwrt.org,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey Ben,

On Wed, Dec 11, 2019 at 10:06:26AM -0800, Ben Greear wrote:
> On 12/11/19 6:44 AM, Paul Fertser wrote:
> > According to many bugreports [0][1][2] the default ath10k-ct kernel
...
> And also if you want to just have the makefile pass a -DBUILD_ATH10K_SMALL or something
> like that and #ifdef code in the ath10k-ct driver, then I'd apply that patch to ath10k-ct
> so that you don't need the patches.

I am offering my patch to the OpenWrt maintainers as kind of a
stop-gap measure to get ath10k-ct working for the release (or in any
way they think is appropriate). Another approach they can choose is to
select the upstream ath10k for those devices. Otherwise some
previously supported boards will require manual intervention to get
WiFi working after an upgrade.

Regarding your fwcfg idea, I am not sure it will work as it seems the
PCI initialisation is happening before fwcfg is parsed and applied.

Adding a Kconfig option is another possibility.

But what do you think about an additional module parameter, wouldn't
it be the cleanest solution in the long run?

BTW, according to the git logs the patches were initially added by
Christian Lamparter, so I hope he can clarify the situation a
bit. Probably there were some performance tests executed back than to
measure the impact.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
