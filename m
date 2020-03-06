Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06D017C820
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 23:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GG52kg5J6hDPzWKT1sT4I+zhSGaeDZaXvYz7IQsvfdE=; b=aLDpgeDZX5w2qj
	MqsR8V1uKzePA1rCKqbJjGt4BxxajhuQIpNeEuMI8UBS18wVjspDzTz7jE69gJ50L0dSpcdXnqbOn
	v96BMHO/W1ZrewGTEqzrDKEg1rYNPm9qYibPCL/uMgMgVIQSRM9U8vYDBxfLhiiUSJlDoSjRnd4r6
	RBaOQH3CXDow9lA6bgvpyMnoXw3HzBGKI0xNe9vhaAzZXhffQjFlYLe8LrGVnK94tSlbPzItXc9HJ
	gEOLohb6ED7+KeJudWgzqK7Fo/cntC+5dCF16rfyNvgyEspNuysP7NBdl3VCVOAuOCSckhqSJnBnl
	n/JaqJtH//Vt8gknHSKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jALA5-0005vR-OS; Fri, 06 Mar 2020 22:09:41 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAL9x-0005ng-2v
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 22:09:34 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jALB3-0000Kw-3S; Fri, 06 Mar 2020 22:10:41 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Date: Fri,  6 Mar 2020 14:09:25 -0800
Message-Id: <1583532565-30087-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_140933_166688_3122B7EC 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] kernel: 5.4: add missing symbols
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 target/linux/generic/config-5.4 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/target/linux/generic/config-5.4 b/target/linux/generic/config-5.4
index 0c246ee..597cd8e 100644
--- a/target/linux/generic/config-5.4
+++ b/target/linux/generic/config-5.4
@@ -783,6 +783,7 @@ CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
 # CONFIG_CGROUPS is not set
 # CONFIG_CGROUP_BPF is not set
 # CONFIG_CGROUP_DEBUG is not set
+# CONFIG_CGROUP_HUGETLB is not set
 # CONFIG_CGROUP_NET_CLASSID is not set
 # CONFIG_CGROUP_NET_PRIO is not set
 # CONFIG_CGROUP_RDMA is not set
@@ -992,6 +993,7 @@ CONFIG_CRYPTO_BLKCIPHER2=y
 # CONFIG_CRYPTO_DEV_FSL_CAAM_CRYPTO_API_DESC is not set
 # CONFIG_CRYPTO_DEV_HIFN_795X is not set
 # CONFIG_CRYPTO_DEV_HISI_SEC is not set
+# CONFIG_CRYPTO_DEV_HISI_ZIP is not set
 # CONFIG_CRYPTO_DEV_IMGTEC_HASH is not set
 # CONFIG_CRYPTO_DEV_MARVELL_CESA is not set
 # CONFIG_CRYPTO_DEV_MV_CESA is not set
@@ -3962,6 +3964,7 @@ CONFIG_PINMUX=y
 CONFIG_PLUGIN_HOSTCC=""
 # CONFIG_PLX_HERMES is not set
 # CONFIG_PM is not set
+# CONFIG_PMS7003 is not set
 # CONFIG_PMBUS is not set
 # CONFIG_PMC_MSP is not set
 # CONFIG_PMIC_ADP5520 is not set
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
