Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4019219F5A4
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 14:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GcpLYhamVdKFCkJ5L8dfglIUQR1oMLMmk1I6VsGLs4s=; b=OFJC5hNtD4z9OS
	vRVb3Jf9S1P3LMcA6BjO6Wod9Ra6rsfOqj6jWRtmFEI9jUnm0M8EvRIu4Q9vCMPNsd5MhuiAZDBSg
	4oM+MuFc5KubAfe1pmsrVTWbG/qQzx5eIltPi3OkQ932d4/MfxcBEytO2aGfycxRTbYYciPm5xS+r
	UPEKukYaGJi4QlSy23GZQVzKwp/Cb7Ysq60wH1PVPrZweYuKL7Qsbr79rO8f6eOtU108cq/xKbYG4
	LuKeQI8Bpski0MhnMGuYTY21stUT950nghLxuBedV7XsYbSOHGnKfH9gvBgosAFT8E5m1+xilwZH/
	8NSXe2eA9Fv7x0VGnRbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQdV-0003tV-R7; Mon, 06 Apr 2020 12:13:53 +0000
Received: from smtpbg440.qq.com ([183.3.255.59] helo=qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQdC-0003Uc-89
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 12:13:39 +0000
X-QQ-mid: bizesmtp29t1586175161ti9vq8za
Received: from example.com (unknown [218.19.169.111])
 by esmtp10.qq.com (ESMTP) with 
 id ; Mon, 06 Apr 2020 20:12:40 +0800 (CST)
X-QQ-SSF: 0140000000600060G4F0B00A0000000
X-QQ-FEAT: gVdRjIF1uLh3BUXk97qFDlpQwS9uo35O3J+IQw2FeiiEu8/bD2shMHTtuZrS8
 Q23P6NR3C+toWo+7ckmLYZ2rMFXi0FPN4a+rqfNirfEJ28XcspKuJqQHtmgvNWcG7+izT0N
 PYdl1pDFntFj4YeNbc+O4IweFEXmKlpPzpuyB+3YHizfCWwNGJo6JpxSA9Q4uQW81bfT9te
 M7d4k3GboZ8Yk3BaWGt2onuu5RpA96nD3M0xllv1c4tLyP6y1XHxvOnQOhdYP33KLGiwgUV
 nWF0eEwmN3M+Z/neKSFaiJzkDonTNu6uy3vVDVNqW64ZstK8Dtlv0IvYX8fyc3mvKibW1Ie
 3irbBan
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 20:12:40 +0800
Message-Id: <20200406121240.6133-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgweb:qybgweb10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_051334_665109_5F141E55 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [183.3.255.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH RFC] generic: mt7530: enable MAC learning on
 CPU port
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
Cc: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 riddlariddla@hotmail.com, Stijn Segers <foss@volatilesystems.org>,
 Chuanhong Guo <gch981213@gmail.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

After switching to DSA, users reported that roaming between APs that
use DSA is broken, probably because the MAC table of the switch is
not synced between the host bridge properly [1].

Enabling MAC learning on CPU port can help, according to Andrew Lunn[2],
but it may cause some traffic to go through the slow path.

Use this as a workaround, until the bug is fixed upstream properly.

Run-tested with 2 MT7621 APs.

[1] https://github.com/openwrt/openwrt/pull/2798
[2] https://lore.kernel.org/netdev/20200405150915.GD161768@lunn.ch/
Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 ...a-mt7530-enable-learning-on-cpu-port.patch | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 target/linux/generic/hack-5.4/710-net-dsa-mt7530-enable-learning-on-cpu-port.patch

diff --git a/target/linux/generic/hack-5.4/710-net-dsa-mt7530-enable-learning-on-cpu-port.patch b/target/linux/generic/hack-5.4/710-net-dsa-mt7530-enable-learning-on-cpu-port.patch
new file mode 100644
index 0000000000..ad30f5a253
--- /dev/null
+++ b/target/linux/generic/hack-5.4/710-net-dsa-mt7530-enable-learning-on-cpu-port.patch
@@ -0,0 +1,31 @@
+From: DENG Qingfang <dqfext@gmail.com>
+Date: Mon, 6 Apr 2020 19:54:25 +0800
+Subject: [PATCH] net: dsa: mt7530: enable MAC learning on CPU port
+
+After switching to DSA, users reported that roaming between APs that
+use DSA is broken, probably because the MAC table of the switch is
+not synced between the host bridge properly [1].
+
+Enabling MAC learning on CPU port can help, according to Andrew Lunn[2],
+but it may cause some traffic to go through the slow path.
+
+Use this as a workaround, until the bug is fixed upstream properly.
+
+Run-tested with 2 MT7621 APs.
+
+[1] https://github.com/openwrt/openwrt/pull/2798
+[2] https://lore.kernel.org/netdev/20200405150915.GD161768@lunn.ch/
+Signed-off-by: DENG Qingfang <dqfext@gmail.com>
+
+--- a/drivers/net/dsa/mt7530.c
++++ b/drivers/net/dsa/mt7530.c
+@@ -712,9 +712,6 @@ mt7530_cpu_port_enable(struct mt7530_priv *priv,
+ 	mt7530_write(priv, MT7530_PVC_P(port),
+ 		     PORT_SPEC_TAG);
+ 
+-	/* Disable auto learning on the cpu port */
+-	mt7530_set(priv, MT7530_PSC_P(port), SA_DIS);
+-
+ 	/* Unknown unicast frame fordwarding to the cpu port */
+ 	mt7530_set(priv, MT7530_MFC, UNU_FFP(BIT(port)));
+ 
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
