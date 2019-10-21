Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26EBDEB0C
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 13:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=98z8G76gJ+BT74iRdluR92GDQuSXQWKyyuJz6BHNGzU=; b=eu/W3WtLL0C+6u
	0oSyh+h1e6atWjoEZyE+yXKvYkTIHu0dZenyZz7tRmkBSiKz4CXU5ISk/M8s+t84Y0c3pm2Cw+zfB
	4eHW4mdG4lkL2bZeIfvzFf9UCact1p+kU8AVCkCBJXmdhnxfsVVmhWTlOALjI8v3YVl1PxXXp9Fcf
	UQVDipeFFfTFM5vZeMZ4G/kDaXZ+pKayIqN14osA69PGIUkvImRRyu9UiCudHEK4ZYD2JgBTNDOgC
	Ahjf2YpSkHoWQplmcL9XpWQLXAdsWU+1I9aaqyBjyR9S1AoH8XWKUzB3pUPW53fS5Cl/Ms3ItnCcx
	drqFKE5GK1kIWM5jEFUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVzR-0004Hr-3A; Mon, 21 Oct 2019 11:36:45 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVzF-0004HJ-S3
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 11:36:35 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MDykM-1iCec720HM-009vEt for <openwrt-devel@lists.openwrt.org>; Mon, 21
 Oct 2019 13:36:31 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 13:36:28 +0200
Message-Id: <20191021113628.2728-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:L48ddrG0Hv7Cl0NrgBLOkZRuZpcABUUjRazeH7DO7Md7T1FW303
 f61+tqd+DuukqJeq9prpvX513p5jtUaxsfRd1biNBz3HW5qTIzO5OPv6Ldp1/1Od8ZJxAUd
 DPnsJw/VlqmBzf+V8Dc69LiVT7+vBCxZCK03r+2BRatIyVrHmUVU5/TmznVIhnWhDdS1Y+e
 tV5JD0lkXOcGwTc0z8wEg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Sb6qzLM3mGA=:/2E2Iejmgu7Jd+/J+oP6FZ
 fFwzOVh+Onq3Q1MYjxm9rmt5nEukv2wcW0j3GTgJtrAb1bi/GVZ2c7Vds0QDFTZVw9B440DPB
 iEqC6wmM4ENgFXMdtq/XgK+CN0XShIDy6sLssbNEp7DtSqXwbh4olHVIth4DhvY00VBnMkjrj
 9JB8XWugw5mELLYOqqEimVh3Sb8jxAICdX/cFPAydrik7mbndwE1gReIwHUDifHFzOIpRqhi7
 lCnszCpk17wsTPg+a9LK5mziMGptvrDOYBZ54eE5/CLeI5SU0xLsfZa/+4fnjeAgKVaFyqnpS
 6f1PEAUguyrQI2jQbYh+Ry1Y1Z9IvHHO+ZzAZI4stWvcFKZSBJEiZKveORQvPTK5vUpYdQlb2
 83VaJbi4b6TW/K4fn/Wf018nfJ/95BoDOnirXNGjsagClygDXOWuE77maH1TbsSfR/pB/+A3G
 s7SiEdpNKgE9AM6mBtSH+ut3fmC67qYRoLYD/J7o3SDgXO514q479SmPnAgB+sY6A/h0YtyAi
 2fr2d7RsVZuZQQURzh1dFAlFTEjiW7HStYvpiLe7qKEDhBKvXXt9uB4V7EHCCFaI7LyGAjNFL
 ctQkiG/x/Ca1iX1+JdNcwFQoafjOVBg+qf384x1HG11xfGGF0YVMKBTxGtrqPCeExOKT9jsMr
 DiMgRU6nA2FqDMOV6DcNWmW2W7om1JGjYU5YlimqIqr7cZYPB3c4vjNgQVPUzTB2xXvbi0tct
 UpQPZswXH9UrEwtISpSFMnSECYHZyLTJTwb8mOz/SlZXm3LwloWjHjrhC37wnAxrUSXdveau0
 GQHHurGTL+UZE+/k0GOo1bwUcWbomMYRacYo7KcT7ejkGoXfN591a4HUD/vBnmkSU5J262lpN
 NOIFWrtlh1WIo1HjteZ18cGDtmB2IXHz/IRzInAO0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_043634_199819_445D1CB5 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ipq40xx: add label MAC address for
 Netgear EX6100v2/EX6150v2
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

This is based on the EX6150v2, which should be identical to
the EX6100v2:

The device bears two MAC addresses ("MAC 1" and "MAC 2") that
correspond to phy0 and phy1.

The ethernet MAC address (gmac0) is the same as phy0.
As this one is accessible via local-mac-address in gmac0, the
latter is used for label-mac-device.

(Although this is a one-port, gmac1 also has a local-mac-address
assigned. This has the same vendor part as the other addresses,
but completely different data for the device part.)

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

v2: Also set for ex6100v2 by using DTSI
---
 .../files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex61x0v2.dtsi      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex61x0v2.dtsi b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex61x0v2.dtsi
index edc1af60fe..cc70080c92 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex61x0v2.dtsi
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex61x0v2.dtsi
@@ -78,6 +78,7 @@
 		led-failsafe = &power_amber;
 		led-running = &power_green;
 		led-upgrade = &power_amber;
+		label-mac-device = &gmac0;
 	};
 
 	keys {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
