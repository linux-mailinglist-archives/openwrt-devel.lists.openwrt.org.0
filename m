Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C07F535A
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 19:15:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jePWw7pzdIcibkSQxuT9ub0ScOlXYYzSVH50+GvbcA4=; b=dwBr4ZZdbVUWx7
	QyzRKKsAK/kct7YaaVKBQ0rdQKE6ldUAswerNIxMy2zYCPsVZTiIK3rk+kB3NYqqJ858QB5vzj7wZ
	Ktm0DKZ/hftCCPNQw30jhjvn1+xA1ijA1H+IJTnX2AntRE8I6k6fSrJ7fRVN521owlWw8Ne6Xs2CP
	vOvaBSB/dYbk3cFCtIDYXo7P+5pUyIAwqgDmwkQOvZ6tMdXblQSvduanvNy+Kv8VHZv6XFrwmGLkr
	kmnyMS312j1q41CwWt6aEgdWqYbCvRQ2sZIbsQgbtWGnpDS3l3nA1cu/b1GTkhnRMExG43qWFiaCW
	7GsRoVOJvJm6asrljTHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8nI-0008Qd-GQ; Fri, 08 Nov 2019 18:15:36 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8m2-0006Cj-OO
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 18:14:21 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MjSwu-1i5KbW49qE-00kvjS; Fri, 08 Nov 2019 19:14:13 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 19:14:07 +0100
Message-Id: <20191108181408.18272-5-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
References: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:7pE5nlDFGCTXiHTDUBQQRV/RAPR48wTjd+mCdQbTzNp5IXXlbfU
 VDJAdBZDkYQnFXIrzT3l9DQ5OFTVqwwLXBLh+tffv4qa+4NUyu8rJ78SIQ33CbHtSiSjsuE
 LtB64SrD0teJibLuLf8XFNviIb2Mq9W2fupW2py/DHwHyFU8J+gazIGcNqT6bzt04qP45o3
 On6m7Dg4UROOJMARF4dcw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JzqGAcvApKw=:GqfKEYwEN8itYvuwbvB4kG
 B4GXyP01byynitjR2sbfCbKFOPW5m53zHLRgy3EE4ZeePcrk+YnlXR/h8hdyYZJ8DfflVC2K2
 A061oAnJfHRKslwKYb9rjaJCl5Xp0dyJubb4+zM7ABslsl4U5hHiDkyFsXAJP6XJvH7JqVJuN
 2HRSOE7V3svXcdlr8z+3A5czLfUHifrAchneFFxbQqoKaOLXKoBZAlivXrvsr4mgjPVqL0mr0
 DAp+98kt/G+LTOLdZfU8CpnnfdX6PhCgsZR2b9XpOo9VHnPVC/TqGao4kRlmL0i6K6bTW0qGF
 w9VqmV7TqliUU8EpgimuqnUN4IrW7cpyakJElsRlYIXfKlVOG/wQyOmcggpO705MS73D8e7SI
 CpAIJlBPrpECa9l8fA1ET2e/11CAcClkJv7fGOKQhST7kpA2+rjyzmfgV+mwDELR5COgZHvt3
 hBC5c6dHaf8vZ88FfQr9npTuFVEXk8aNuRnXp8zO5YgRkolH21Dnu6hjrD5QVtJiheQaD/QdY
 nVcvBM8vwXD+1dxcU2VQZFJzVjzHb2MxSrNgch0cGxhRJZeq6EIlsJRafEOYXtEzO96kbesHQ
 mWFwAqk2DK+L08dwfHi++8s7eGWpQRYcF/VRIoxHD4Wex77SJ42VT8vd4rAU9NLXUcS8/k94f
 t9/V/a3rvMz471egpdGonR2KZFqWl8nr1FNtWWT0oX+mHu3THZr+WPsGXuAIQ8A6gBHc/a+dG
 FuqivOYjGxXCMmMkqBXEMtZoPdNodb0Cpq6OGXKmjAtukY5vZeaVyQLHfmKNy6fhmHDySMqQ5
 CRBKXJjqtzw2YB5sRvLLN6+SywTp62vFYg5gthODcYczi3qGQwI4BabqDy0DdgjPr7OP/MC6S
 y3YYySSwC+Q3wCpFAjBWN3ckZm4mEZiVP89D4/nPc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_101419_085486_6880B88F 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 4/5] base-files: wifi: add 802.11ad support
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Robert Marko <robimarko@gmail.com>

This patch adds 802.11ad support by adding 11ad hwmode identifier.
This way hostapd.sh requires no modifications as for 802.11ad only
hwmode and channel are needed as channel width is fixed to 2160MHz
and there are no HT modes.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 package/base-files/files/sbin/wifi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/base-files/files/sbin/wifi b/package/base-files/files/sbin/wifi
index f7a10de215..eb0397b4d9 100755
--- a/package/base-files/files/sbin/wifi
+++ b/package/base-files/files/sbin/wifi
@@ -81,6 +81,7 @@ wifi_fixup_hwmode() {
 		11a) hwmode=a;;
 		11b) hwmode=b;;
 		11g) hwmode=g;;
+		11ad) hwmode=ad;;
 		11n*)
 			hwmode_11n="${hwmode##11n}"
 			case "$hwmode_11n" in
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
