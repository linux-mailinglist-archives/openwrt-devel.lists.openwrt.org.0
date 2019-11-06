Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9011F0E6A
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 06:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eh2PR3ygl43mAXBgag4tQSADmthOi2waigWOBKcyKic=; b=aJcX22ZRmVrskX
	tOHAadCff8Wz+S4KGw3ud64GPr+PLJKSUcWkR1Jmsy05IWrKYZC/zY0zcpzONF/XJCiJC1WxiGSYo
	g6QExMhV0YLkidwd1n4NSGHwVy8CfhhSZFiq+/zZ0RG9CE9kOiDSU+0J3THQW710XcLK2Ay0c4lRd
	TiVRgIAC1ayDu3VxB/whSfEY25wIlwREEkly3ruI0lIHnhiIWX8gpvFp9Q++6SQGnQQMpm8LTw4yT
	zaZ7Ts4HqnXokP0sZbT6WPg82u/0zYD4d8Dyj0d6G8IbhOo7lb3lwI+tlPj1qY2VTh2my9Qrbpk7q
	0cNrTcj+RT6p2pVCZVsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSDw8-0000SL-TX; Wed, 06 Nov 2019 05:32:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSDw2-0000SD-0G
 for openwrt-devel@bombadil.infradead.org; Wed, 06 Nov 2019 05:32:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wCl367CTAJPRJ+OzokUIXaF5xG80Wj1eNiJf04VMSuk=; b=KDSMPpb6ojAzrRJCm9ZkV8KNIf
 r3EEoPNIbxdKMgPL1P0KdirSgqHpxHh7e5j8UrDcSdAYRaPogeP3M95qjyDSUI47pUa6RyoergUen
 ErcVKZt9spu/SshZV3tjm0D0m2DOtCjK1d5BFqOaLTI3zDoLbjMjPFwI9gNu8tWTUhznlwX4NX595
 BI8inf/wJVDOy/xuTrTX1uHV4iRaEbi3tkI0AR0E+EABvqR9hg/Im/a/too1JPlalQAmCuzESDSfy
 MT7048LFLRmonY5hTSU/6SjvVkmcnz3UlQ53t9FeMKCeMUsQGCgMx94XTDsxr+pjwwtzhXVqVBisT
 aCXJ1h3Q==;
Received: from smtpbgbr2.qq.com ([54.207.22.56])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSDwU-0001Hg-4d
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 05:33:20 +0000
X-QQ-mid: bizesmtp20t1573018007tycx0app
Received: from example.com (unknown [112.19.111.227])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Wed, 06 Nov 2019 13:26:46 +0800 (CST)
X-QQ-SSF: 0120000000000050E122B00A0000000
X-QQ-FEAT: IyFUh2Wdp9rUiphS9cKvpjUJ8pkSBql5rQI/IxJZ1gP1BFtRZnf1gTxZRp2NF
 wUE/ZK57M5xy2MvalwoXF1XasY/WucH8ABHb+GaSWw9uQfYh7vVNVab+F8J4Y4Ux/XPJW7j
 uYGXb/+nt3li4VoSV8YZ2n3MTLR5CJ+Xs1FzraBn1XXR94OlPZ7IlXIyD26VVp2ar6iE099
 mr7FpXnKotZsxxrnw9PYHqDN3jxYX5uqHhbStLA/0KyDvj0ZkM8kQlyTe0HhPFcSqrpV4Mu
 VCgkDSklIf/1sRgUl2nEU95soIICHWh3umoH21DcRjrsdba2A+CBnSvZNqkk6NGFWwOw==
X-QQ-GoodBg: 0
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 13:26:41 +0800
Message-Id: <20191106052641.6864-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_053318_583213_EF90B0AD 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.207.22.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH] Revert "mt76: probe load mt7615 driver
 asynchronously"
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

This reverts commit 81764319637f408623ed9f4bae3f0d149b010f07.

After said commit, users report that MT7615 no longer works on boot
and have to manually enable WiFi (via command "wifi") to make it work

Fixes FS#2546

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 package/kernel/mt76/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/package/kernel/mt76/Makefile b/package/kernel/mt76/Makefile
index ce2bf8f14b..04c1761d88 100644
--- a/package/kernel/mt76/Makefile
+++ b/package/kernel/mt76/Makefile
@@ -144,7 +144,6 @@ define KernelPackage/mt7615e
   DEPENDS+=@PCI_SUPPORT +kmod-mt76-core
   FILES:=\
 	$(PKG_BUILD_DIR)/mt7615/mt7615e.ko
-  MODPARAMS:=async_probe
   AUTOLOAD:=$(call AutoProbe,mt7615e)
 endef
 
-- 
2.23.0




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
