Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9385D740
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jul 2019 22:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVQqisN3dNnmoo66h2jSlRaZKvzVtZ8uXVwHh75Jf8o=; b=Uq3BqAZ7PUKHwT
	FSr//dpL3fvYEA929NInkQWuyTOC0NXfpTj78hXZ6VDR69lg+Rso8UvCqG5WCT//L8ck8zLetsY51
	+9BuebjSMR3TlPzI421J3YVNC34SjL9xup5WK7WQ6hV+hNf0uAAO9msuHudiuumxqR5k0FAbxkRC/
	j9yWfLIUXtDoU6k+DJprDzm76gchlA8mYFkBrv/l8IAqROH0SwroAsHd2Mhhh6QA2IIc5MU+b6oXz
	qCgeq+hg63DUXMyaMf9QxowxWRKQ8eRDCs0giRpwqy5ZvNt/oepw85Ji3o27Cky92wGjdlg0q51QP
	TEqWJE/X/7Lk6puR7qKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiP5o-00008f-20; Tue, 02 Jul 2019 20:09:32 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiP5V-000087-CC
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jul 2019 20:09:14 +0000
Received: by mail-qt1-x844.google.com with SMTP id h21so20047599qtn.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 02 Jul 2019 13:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+nuhmE5MKbvpRQt22l+Dl6NZuZZrCvIva4VqvdQG8kk=;
 b=THXrbsDrYrx5FwMkCx+lTVhOTGHVcX33CnbEbc4+FnrDvlY/CMOi47keL+srPapjTM
 jIMOq4AIF5tHjTgygAsCsYbiseVKOmEaIl/eM9vVR6r9teSyGIAZtF221quj7giHS81P
 OjZmO6wPp5K8u/26c8rWrWCvh2S790SWOeM9f0fYrzq2AYw3c4D3PGhaT3tCoFwVpdGL
 dJtZ+Xd4r0GyppLWz4MjOM6IW49hG8GdqtG4g33p5/XvECPjHOc8My38s1OCm1f0YlQF
 frwvWC5yUlUt9NsWihbQjBaSlX0ctCAlRtxsjAujxBA3bXqzHsJSlWgmNXKXFrbaKmh7
 R6Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+nuhmE5MKbvpRQt22l+Dl6NZuZZrCvIva4VqvdQG8kk=;
 b=tTp3NZYx6jIiNsnf874pT8G84CpuLwqK4k/0PMnn+FFbKGKXMKDctD10J8us4W5VZ3
 ddpqUrd0p15AslHQxBViR2Q+Q43EVUCNII604GSEJ4+UXklJn+B6XdtzZat5xYE1Oltm
 xJ7NDQk7823D/+C4AljeEmRgx7m0pSfWj1snJzcILeBgALHSW6edr2a8uveDpMEz/XAN
 ifTC08LRIg4Kx7Va/ozogdChye6QuZJnA9/tWACP7dIAjVjGuhOurZtAkA7DK1XTpPcC
 1516FiauuTHIFcgM7YTq3y/vPY5lEx/hXTEPLIEVlPi/OzAsyj8jgM9VhQujruXpf5/C
 1KFw==
X-Gm-Message-State: APjAAAX6JBzEPBzIF48O0KGZgZhHtDAWwZGzXgWTz8c3ZE2YKqCvqMui
 hbWd65Qw1tMO5rDNDkaw7lxLfVAlyhu/GIAieQs=
X-Google-Smtp-Source: APXvYqyWW/17kfrM77BZiH2h35NT77J4Ejpoz5W+1Ye2YxtxlB1Qbh7Gyu0SkehI0Cw+dqhz62QWnQulwKH6xXv2ACc=
X-Received: by 2002:a0c:87a1:: with SMTP id 30mr28901928qvj.167.1562098149454; 
 Tue, 02 Jul 2019 13:09:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190702124250.11079-1-Jason@zx2c4.com>
In-Reply-To: <20190702124250.11079-1-Jason@zx2c4.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Tue, 2 Jul 2019 22:08:57 +0200
Message-ID: <CAJLcKsEJug3Ogdve5YWMVava0-6TGDn9VBuhLAjWjPFQtx1KEg@mail.gmail.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_130913_450504_E48C30D8 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20190702
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Jul 2, 2019 at 2:43 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> * curve25519: not all linkers support bmi2 and adx
>
> This should allow WireGuard to build on older toolchains.
>
> * global: switch to coarse ktime
>
> Our prior use of fast ktime before meant that sometimes, depending on how
> broken the motherboard was, we'd wind up calling into the HPET slow path. Here
> we move to coarse ktime which is always super speedy. In the process we had to
> fix the resolution of the clock, as well as introduce a new interface for it,
> landing in 5.3. Older kernels fall back to a fast-enough mechanism based on
> jiffies.
>
> https://lore.kernel.org/lkml/tip-e3ff9c3678b4d80e22d2557b68726174578eaf52@git.kernel.org/
> https://lore.kernel.org/lkml/20190621203249.3909-3-Jason@zx2c4.com/
>
> * netlink: cast struct over cb->args for type safety
>
> This follow recent upstream changes such as:
>
> https://lore.kernel.org/lkml/20190628144022.31376-1-Jason@zx2c4.com/
>
> * peer: use LIST_HEAD macro
>
> Style nit.
>
> * receive: queue dead packets to napi queue instead of empty rx_queue
>
> This mitigates a WARN_ON being triggered by the workqueue code. It was quite
> hard to trigger, except sporadically, or reliably with a PC Engines ALIX, an
> extremely slow board with an AMD LX800 that Ryan Whelan of Axatrax was kind
> enough to mail me.
>
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Patch applied; thx

Hand
> ---
>  package/network/services/wireguard/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
> index 310d559..0516769 100644
> --- a/package/network/services/wireguard/Makefile
> +++ b/package/network/services/wireguard/Makefile
> @@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
>
>  PKG_NAME:=wireguard
>
> -PKG_VERSION:=0.0.20190601
> +PKG_VERSION:=0.0.20190702
>  PKG_RELEASE:=1
>
>  PKG_SOURCE:=WireGuard-$(PKG_VERSION).tar.xz
>  PKG_SOURCE_URL:=https://git.zx2c4.com/WireGuard/snapshot/
> -PKG_HASH:=7528461824a0174bd7d4f15e68d8f0ce9a8ea318411502b80759438e8ef65568
> +PKG_HASH:=1a1311bc71abd47a72c47d918be3bacc486b3de90734661858af75cc990dbaac
>
>  PKG_LICENSE:=GPL-2.0 Apache-2.0
>  PKG_LICENSE_FILES:=COPYING
> --
> 2.21.0
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
