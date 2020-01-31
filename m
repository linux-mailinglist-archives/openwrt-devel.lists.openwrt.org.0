Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C6314F059
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 17:05:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFMLyaQkKOpetis33+7XZElwwpFVPn9OIlPd3WL5uM4=; b=ClNSsZmuL6V8C3
	gjo2/ZPSFwTLO5+Y9KBv8F9mZN7htxEzIGTDnmdsWSbCydKDv/61iJl8ifyefEp5tJA8YJJN21ZDj
	2Iswe7IDxoeNtmLkjQ/9pdXLWcZp2SBNJ9N7uBUHDpct89QdZPuUV76JnFbxjxsLv88tYC68uhX48
	A2dtFOcfKEZMnNTeneOBHMfNT7Ji2caHciVzovKTqGJUdg47eQvrU/NCRDa8msjytNxtLrAUl/OFs
	yy2yGymuHRtiIx04E6tjgfgs2+cn03dnZNRXJmb3ZvX/VgtcrWLsouLA+EZB4JMjUs1pB+cLKNXCX
	u/VzwLgjvKIIBm9levHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYmu-0006QV-IZ; Fri, 31 Jan 2020 16:04:56 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYmm-0006Q9-NW
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 16:04:50 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MyseA-1jkYrl1AVm-00vysE; Fri, 31
 Jan 2020 17:04:47 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-3-tomek_n@o2.pl>
In-Reply-To: <20200131154620.25773-3-tomek_n@o2.pl>
Date: Fri, 31 Jan 2020 17:04:47 +0100
Message-ID: <010801d5d850$28ec5d60$7ac51820$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIg9Z1HjtTSr13X0aN4mb1BSdO/fgI6YyLXp1zh4wA=
X-Provags-ID: V03:K1:oWaFEkq7hQYWSrNgotDudyurzzZTC+WmOX4Bc/PNjc5+jeglvUV
 PduitKcGkGUklND0qOjYotg10qffv56icn6EUHDOsN17t6ILh887Yn4wJnPqWU+pRo6AWCD
 QQIWWzsSiyijv19DpI074vEEaag+CKY2FA59quW8sYxLCMWCV8Rak5Pyvg8g4rxmINQ4dIb
 MVAjWSoZIqTHZ+vB2iU2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:u+SZlBM/Peg=:Q7c9oyouVUdH1JoybkZ/Fd
 T7r/cmSUNuO5xYRUrQsZa+Dja5huGoVF7tWAo6BXhTy5GAxb80Uy2DMMUQT691OP89G5gbMAL
 FRzXG6B0b3+SxJBwW/tKy409nnbZdeSWwO9OYvYSyv7kmyOYSnxESqhI63KdsCo4LFO5bT++e
 f4L6iXfkXdzryHy06FLNJO/1bHNglTZzs+35xcnXlEmRqix2hTdsFtNF9aa1uvUwfYfaEvO67
 G0cdxAMeY53vvUgZJQqXdUb9bXysIJ3rDT16IW95uBeAxY0CFiblqPcegqETbfH7S7BTVup9Y
 D7yB7vrfTCxFkiAEWFVT+oLs2DKt3Ivl5p97sWkUNdL4kvorBMVz+WiDWWrdLYQILCqHEs9nV
 oxKgso9Pflsf1y8jp+OUmWCnFtTzdeeE4cT4cb8BESE6msq1d3jPBWuFzhh5wtE2rMlpXb6DL
 0laMFfrvcmgqq9v5DLdnYgmEcUExy75kFPUMbvrxxUMLqm1hlynR5NOabJcqPiNYr4j3ZHsAJ
 pRDJXb9h5lfzUJyOTGcIYcP8fOMfUZCCkPQo71Mz/bAnsqjVNvEvDUyVfJuXvLNeSvDwHe7MG
 BCUr6L8B9BUJJcf6zll2xS7RDOqBipnoE5sThVm4G5vEhzajaVgIS/9v5Z7rbsZNwcQvzHP1c
 ttl26ygK8Me+s8eEiP9+Zbm6v6YqXnpdEaQUnHw9NI6lu4lt3cGCqV9bNfDNc3gC6gGva8Aki
 oD4TcVE2pyvRjlwdvPwm712Q+bbsuGAPzQZ1US0CXcbp7NMDwf+rMNis2IVwLwMa1yfxSiK4s
 OdPiLbuFtohvJcYv87ZwZbaJUx+sLIT0ASof0RERy4JWFWB4qQH9k8jzQMcGv4tDybHySnw
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_080449_057214_0FF3C0DA 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 2/8] mvebu: image: align subtargets
 makefile names
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

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Tomasz Maciej Nowak
> Sent: Freitag, 31. Januar 2020 16:46
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 2/8] mvebu: image: align subtargets makefile
> names
> 
> Align subtargets makefiles names to actual subtargets.
> 
> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>

Acked-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

> ---
>  target/linux/mvebu/image/Makefile                        | 6 +++---
>  target/linux/mvebu/image/{cortex-a53.mk => cortexa53.mk} | 0
>  target/linux/mvebu/image/{cortex-a72.mk => cortexa72.mk} | 0
>  target/linux/mvebu/image/{cortex-a9.mk => cortexa9.mk}   | 0
>  4 files changed, 3 insertions(+), 3 deletions(-)
>  rename target/linux/mvebu/image/{cortex-a53.mk => cortexa53.mk} (100%)
>  rename target/linux/mvebu/image/{cortex-a72.mk => cortexa72.mk} (100%)
>  rename target/linux/mvebu/image/{cortex-a9.mk => cortexa9.mk} (100%)
> 
> diff --git a/target/linux/mvebu/image/Makefile
> b/target/linux/mvebu/image/Makefile
> index c08b113b36..aeabffdca2 100644
> --- a/target/linux/mvebu/image/Makefile
> +++ b/target/linux/mvebu/image/Makefile
> @@ -118,15 +118,15 @@ define Device/NAND-512K
>  endef
> 
>  ifeq ($(SUBTARGET),cortexa9)
> -include cortex-a9.mk
> +include cortexa9.mk
>  endif
> 
>  ifeq ($(SUBTARGET),cortexa53)
> -include cortex-a53.mk
> +include cortexa53.mk
>  endif
> 
>  ifeq ($(SUBTARGET),cortexa72)
> -include cortex-a72.mk
> +include cortexa72.mk
>  endif
> 
>  $(eval $(call BuildImage))
> diff --git a/target/linux/mvebu/image/cortex-a53.mk
> b/target/linux/mvebu/image/cortexa53.mk
> similarity index 100%
> rename from target/linux/mvebu/image/cortex-a53.mk
> rename to target/linux/mvebu/image/cortexa53.mk
> diff --git a/target/linux/mvebu/image/cortex-a72.mk
> b/target/linux/mvebu/image/cortexa72.mk
> similarity index 100%
> rename from target/linux/mvebu/image/cortex-a72.mk
> rename to target/linux/mvebu/image/cortexa72.mk
> diff --git a/target/linux/mvebu/image/cortex-a9.mk
> b/target/linux/mvebu/image/cortexa9.mk
> similarity index 100%
> rename from target/linux/mvebu/image/cortex-a9.mk
> rename to target/linux/mvebu/image/cortexa9.mk
> --
> 2.25.0
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
