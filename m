Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C93D14F25D
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 19:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NecEpu9zwisxGdYJTXLvYh792IVeEtwYgjrA/lrdhgw=; b=eDNmozsn0FwaCv
	e0VbMwYeGtHI7Oqr1GvfleiWAV1xmgBpINj2Qux5PV2gK+cXjHnimlNfogf5UoerEBbFSEUklOy1k
	VTReruoH8erIadC6OziTmJ9YfwkbzFF6kgNHnVxATmdGB0NaKe7YfG+P3r9FQ9KDDeKI4CuN7nDuy
	JdH/2V5mnUtBmigDIVrzgfYHbGAGurfTB+K6bgRLdlo7pC40VWITuOwY51RJSnJZg7uco4kcnq7gF
	2qKzdHp6lVzGOb5w8CYPPlvz4XoIriIhNl+fFHKnrjS1Exq6UoH/KoJX/bxrEImvCfcfi1bYNV9yM
	mbnNYyVfoAPFTQj1oeyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixbKv-0004mF-Bs; Fri, 31 Jan 2020 18:48:13 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixbKc-0004eB-3O
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 18:47:56 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N9MYu-1ja6zr3P6q-015Et8; Fri, 31
 Jan 2020 19:47:51 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-5-tomek_n@o2.pl>
 <010401d5d84f$cc88c8b0$659a5a10$@adrianschmutzler.de>
 <55432b84-6089-6701-cf72-d7b64c95b793@o2.pl>
In-Reply-To: <55432b84-6089-6701-cf72-d7b64c95b793@o2.pl>
Date: Fri, 31 Jan 2020 19:47:51 +0100
Message-ID: <019601d5d866$f0f5c4c0$d2e14e40$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIg9Z1HjtTSr13X0aN4mb1BSdO/fgGAo88YAV8LIz4CQuQQC6dFy9Tw
X-Provags-ID: V03:K1:4B4qrFFhVN+/RA/X81tdPa++Ct9vX6s/Gjy1ZJpmEuPPyTAC3Nb
 CoYvrefjeL9MLDoV5tg05g1PtlaLWJ4xXxXzecmmvDbGLyDX9ICWXE66RktbOb1YfTAtUcd
 9NCEcs2IiAD3Uy1pXZSgm9y41Fbw6ZZbMYyAg59v29qPxQoiFIzlPrpgeXg7ujAVddDv1Oq
 RrT5dn1U5SbsqxD6x47ow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:H4Swid7F3CI=:Tbv6NWfu9L4v+ACB1UCbtC
 1BqmwnfyMPUJK83kUw5icW8bivJMLCjCwIYwp6cJ7DpSLfpMhTrZS4GK6jPZcI37d2CAhQ/CM
 Hx1/GHnmQs+hj1afmUW4zTooOxz66WnEPjrTr4COhRDwBPn79gGUzgUr9g4EXA9+6gWUduvaQ
 y7gBJRAwM7IoCgqqpnNaKYxdvHCB6ZJnqr2dvx+7rLFK4SmYrHwjPoQ+f+YMPAXmk0jg7//0N
 Pi+G2gt6gltIoc2lLNkR/ckpefia5P7yrUxVq6nafWqDJ0UUceQUN0s8+476SReVXnyCd3fTP
 uUhEmwDbx9YGx0ioHTQIX58h2FBBsNoBbJaU4rxFg0RFv7ExkL5jbk+Emv65vbRn90MAp0Xe4
 tLKg/Qbz6NMVoVswYYSPaOooBN+iJcxuZS4bNPzLkaHbNxNBp5YzcubfDeuyf+aIco6abJOpR
 mLvPZMJs3YAcmi6rDOV0uyHjSEhFNRik2tQco3WTOjZx4j2lFlsdmTM01C/NLcOrmDTBtdoCX
 WJ2uGw49X439JDAe+8NblQFTyMAz/D9+u1XvpJYapoKascsZ6rTThAb5APIS8pilZ56TLMm5C
 toYw67lFAOK2hTSs4JUjt85xH1ZcZkJ1Q21uKc1gZTGMnEIAvzpQNoN25zZJnGCudD3LbQxeo
 RNLN3dssnl5j++N93iSeunsu7pWsgK/tmcQ5An5CPZW/OeQ0Lm46BCB1i5X2PgZPamKRybJFW
 an8Fk1rFneli8F44vV4WsH6mu1Gyc9SjU92+/4Kt79eya2Yom7pumUnYSJW4ZtfIqWtqRvsWr
 ZK8Qi5uigjFZ1u52QNFY70qH59sFNoTnbEiEEh0h13EX+nGdWBpsn1B/itlhPx8CAxManZT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_104754_479527_557B2CF6 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 4/8] mvebu: image: keep global DTS_DIR
 intact
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

> -----Original Message-----
> From: Tomasz Maciej Nowak [mailto:tomek_n@o2.pl]
> Sent: Freitag, 31. Januar 2020 19:39
> To: Adrian Schmutzler <mail@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 4/8] mvebu: image: keep global DTS_DIR
> intact
> 
> W dniu 31.01.2020 o 17:02, Adrian Schmutzler pisze:
> > Hi,
> >
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> >> Behalf Of Tomasz Maciej Nowak
> >> Sent: Freitag, 31. Januar 2020 16:46
> >> To: openwrt-devel@lists.openwrt.org
> >> Subject: [OpenWrt-Devel] [PATCH 4/8] mvebu: image: keep global DTS_DIR
> intact
> >>
> >> Don't rewrite global DTS_DIR, instead, use proper variable for
> >> specifying devices dts directory.
> >
> > Have you build-tested this?
> 
> Yes, images built fine before sending and from glance, they looked fine. What I
> did not test was Image Builder. Will do that and send a feedback.

On a second look, if you introduce DEVICE_DTS_DIR for Default-arm64, we should also introduce it to Device/Default:

DEVICE_DTS_DIR := $(DTS_DIR)

Otherwise, we would have part of the target relying on the device-specific variable and part on the global one, and I do not think that's desirable. With the change, the whole target will use DEVICE_DTS_DIR.

> 
> > DEVICE_DTS_DIR and DTS_DIR might behave differently
> > when it comes to includes in DTS files.
> > That's why I couldn't replace SUNXI_DTS_DIR with DEVICE_DTS_DIR when
> touching
> > this some months ago.
> 
> The issue might stem from DEVICE_VARS defined inside the profile, which might
> be exported too late? I'm not so good at Makefile syntax so maybe others can
> comment on that.

For sunxi, no. There the problem is that DEVICE_DTS_DIR is present in conditions in image.mk (or one of those files), and the device setup in sunxi itself assumes that subdirs are part of DEVICE_DTS. But this effectively might be a separate issue, as it is connected to the setup in sunxi.
It's not easy to fix that in a proper way.

Best

Adrian

> 
> >
> > Best
> >
> > Adrian
> 
> Regards
> 
> >
> >>
> >> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
> >> ---
> >>  target/linux/mvebu/image/Makefile | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/target/linux/mvebu/image/Makefile
> >> b/target/linux/mvebu/image/Makefile
> >> index d9e4b1acce..ae4d3b9594 100644
> >> --- a/target/linux/mvebu/image/Makefile
> >> +++ b/target/linux/mvebu/image/Makefile
> >> @@ -91,7 +91,7 @@ endef
> >>
> >>  define Device/Default-arm64
> >>    BOOT_SCRIPT := generic-arm64
> >> -  DTS_DIR := $(DTS_DIR)/marvell
> >> +  DEVICE_DTS_DIR := $(DTS_DIR)/marvell
> >>    IMAGES := sdcard.img.gz
> >>    IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip |
> >> append-metadata
> >>    KERNEL_NAME := Image
> >> --
> >> 2.25.0
> >>
> >>
> >> _______________________________________________
> >> openwrt-devel mailing list
> >> openwrt-devel@lists.openwrt.org
> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
> 
> 
> --
> TMN


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
