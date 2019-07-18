Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6490E6CEF1
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 15:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N3nsSVkA33BfApChy2fjBtE9KFp4LTvikIpy1NUdXzo=; b=df+1UJ409VHQGq
	c0UM1ApiBVMOU6pfQQpHN36al967BGaOLmWVmjX4Vt71/GbUj/h/tGrLn2yfjzwHx7hsAmN7YxOBH
	TMzVMbRn/QyrUQ8Nmh0HzQkorZtQ3SZyu+ehzgMMH2ubW8rB4aIYNWevTgedTtvkkqAZs4G+riguk
	DE4DinsUJB/sn7g4OWiLaNUU4DJaRF/XIpygLeVOus9+kKVWWMU3i/A7tMKppb471T25nzPTwmfEx
	F7eH3ERvIXF+8QVs4Da1OUKj1ZULEVVnqTMaMpHpOh9Vfza8k06g2EzjWqKg1ciIYLvgMqni7AQuY
	V9tQqngHrkEG0Yi8f4zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6Zd-0000Ja-4Z; Thu, 18 Jul 2019 13:35:53 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6ZC-0000IU-T2
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 13:35:28 +0000
Received: (wp-smtpd smtp.tlen.pl 10576 invoked from network);
 18 Jul 2019 15:35:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1563456924; bh=FRwNexbLRtp+f32LDwvsPx63J0ZsNey6RtXK0Sk5CPk=;
 h=From:To:Cc:Subject;
 b=KDQQk5lRCSkM1i3DeF6JF1Mtp5LJGqUy+jGJyAvo9jxXQp1ZQllIzKZPz9acMvJK+
 B2XZZwYyp8Sz4iD9hZYrcPo0QSUWDVZTrbU171g7hyvPlkl3nZEz0kFabDTZKU+13M
 WGCnY7p7TKHw2k8EZcWCQmcDNydF79nHHQA0RXcE=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 18 Jul 2019 15:35:24 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jul 2019 15:35:16 +0200
Message-Id: <20190718133516.6835-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-WP-MailID: 4809127107dc41644eb4da7e1f848a40
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [sZHl]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_063527_127153_98D0DF4B 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.175 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] mvebu: remove support for deprecated DSA
 bindings
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

These legacy bindings were removed long time ago from dts, so there's no
need to keep support for them.

Spotted-by: Hauke Mehrtens <hauke@hauke-m.de>
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/config-4.19 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/mvebu/config-4.19 b/target/linux/mvebu/config-4.19
index 5a554a0bda..2de2c37bd2 100644
--- a/target/linux/mvebu/config-4.19
+++ b/target/linux/mvebu/config-4.19
@@ -350,7 +350,6 @@ CONFIG_MV_XOR=y
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEON=y
 CONFIG_NET_DSA=y
-CONFIG_NET_DSA_LEGACY=y
 CONFIG_NET_DSA_MV88E6XXX=y
 CONFIG_NET_DSA_MV88E6XXX_GLOBAL2=y
 # CONFIG_NET_DSA_MV88E6XXX_PTP is not set
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
