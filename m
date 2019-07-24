Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1A573270
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 17:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BFkkZqy07CDCwHD83d/k0zBm5bka/DiSWUewZGhwUho=; b=IL8RICr1Cjg+4N
	XHPVwNdcvMB+h9jA2ipMkJfRV1FjIySGm5K5ZgPGCRQJp2pFv4qTmgV4nuPAyYBDmLRX7VFN6ex/j
	sJv7Oy+2lHn2Bb4zYicQeZMTRkQCuVtnuJ5u7sdTAcu4B2oo4vYYNgdcITztCKcSvrhee9y61P/h0
	W0xDiXVH3FXX47rUH5ZCGQ5nNSm3vCRMRKx/Xuu0MB2D5PyFifMJZvYWUYVR6dWuke6/bcQsrgN/e
	6+T2i6KS7i7TLdDYLKQgAg2jZKox8574R4vzeKsk86/J+JZXNHG4DFdGwpsx3VXGCJoqiyBrXU5/X
	zOUz+KYu8C/b72FctnMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqIph-0001Bz-Ft; Wed, 24 Jul 2019 15:05:33 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqIpa-0001Bf-KC
 for openwrt-devel@bombadil.infradead.org; Wed, 24 Jul 2019 15:05:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=76uBMeHaFLFDUHLoXRrWgNwq3QnQxsBVepqwQtM60qQ=; b=fpTONBYUie8qJibI11EK7mJjMH
 c21FJRwjfvGyycnF95ICBvnyIJCtxJnBny8VnusJsLrfjLLjjL+riR05KpFeW8X75sRGZtjwEMyfi
 MY8LG825d8ztqa5GWOp3JDNjAxScyoytgJXHvt1MhWM0QjRIw4pbkkfTW+8zoJBB7acHdWBdvOIvO
 dgMyy1eZxqIapx13mt69EMqk6eV8G64HkimIezZL6wbkb/3n5KiARfluXg2VeG1m322XlmzDzIMvW
 pqhvNZYu9SqCwFiu5z2y/MiYniSfitEQNt97ATdH7ZM52Z+6zQ//Qkoc440oZ913oaIHoIxjwlfXg
 MmhUtsLA==;
Received: from mout.kundenserver.de ([212.227.126.134])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqIpX-0005xg-B4
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 15:05:24 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M58zc-1hrPI648fM-001BtD for <openwrt-devel@lists.openwrt.org>; Wed, 24
 Jul 2019 17:05:15 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 24 Jul 2019 17:05:02 +0200
Message-Id: <20190724150502.4005-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:QyERFn8ID5epp4/isuFB83PeaejESYibO8SyUphJ28V71+KvjLS
 XWqOq1VJWrPvsc62TyntyuNq5hFmA849teUESfFlgG3YwFpwUCxj41s+Qqq0PzlEvL/sKh+
 /Jitciq6E3cwQTptjvO63eA4An1s+1YunVHpWOXxSizNo3IH5qWHKJsJDOj9/DjDfOmUQRh
 DuCzL4tjzoIx6+DjmEzZw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AGo8ZwNaFF8=:e87f7Pcqo/n1/i8pJp4Wy0
 v9jbu8eKKPu9nnTwHGiBE4UHJ7lOl5eNPcZZADfeusoUvpV80PUMmPjdJ1CklmZhKqSCUwTi1
 P+u7d7nmOqExOGMbk1vdZdatIJgPmrSM9e7pl6NHiChtWoMgRjWmZEbneBavKuefLZ0+EL03/
 bvFINuWCA7KnQCvuYM5Mh7jBjPmAzMO78GQe/Jy6QzJioK2UpL4GskwGsrb6MUMyu4MGoNBRe
 zhVw24vljmlgYjMDizhZ8Q3v4uLNAp2q0FpN0Vs9QUHSKKRMeK/C5W6wHJAgtDtM3HrCBOSir
 RUxD8RdFzJ3qtpFVOF2ARS5QL2K27mg8i2JdDyz00TOCQILmcX7ktdbPT6cJbSHEj8TS47NCh
 pM9t12nZLGgH1+XSe+OtWmxqFcIfck6Gk2FWr3ImAPnO9qiedSL+EPIYPbxoXO/8AJ0WsN/Fw
 MXRjBr/JxDOAb1CYMOnEvNb20mZor6BBHhq2Z4Q2yOcbCsdeSFZm7N19Nmo6FErUjBmSGvc1f
 vbkoNjnuUypEO392nqNvTJsWdMRqGT4PUmA+etIXBLak6KQ5z26EsJFpjy11imtYWnlhGtcqq
 KFp+sRptMEeHbVt2apCxDy0o21PM2IEfF7byp/8VCiCKO2b+YGbxE8r14UCApr8v2JkhwweZH
 RGUkU34FQt9WRzokEh0MrO+WOOg9EobbhMcgK3FXchwq9Hqcc3xyAGbpQ1QX+qDZOKovLZKvW
 Qb3VEZ9laFncnh43Vhm77HoRjQOO6/kGqXPZU99QiShEh7BXd3FtXliKYrM=
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: Fix indent in 01_leds
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

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/base-files/etc/board.d/01_leds | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index d24a42d239..f3bf43a247 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -206,8 +206,8 @@ tplink,tl-wr842n-v2)
 	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0" "0x02"
 	;;
 trendnet,tew-823dru)
-       ucidef_set_led_netdev "wan" "WAN" "trendnet:green:planet" "eth0"
-       ;;
+	ucidef_set_led_netdev "wan" "WAN" "trendnet:green:planet" "eth0"
+	;;
 ubnt,bullet-m|\
 ubnt,bullet-m-xw|\
 ubnt,nanostation-m|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
