Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAD41E9255
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 17:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TMnbTcTfyXJUkkovvilBwPHjW/34QGYwrwg77aDAWhk=; b=MBpuEkolHvXqyc
	8xODuanlsnYt73bc/zkms+F1qfaS0XaNcFDQeuRPVc4xkgp247X7IFIC07WFWBp6Xb8lik66n64Ur
	MevozWBEt9kn4k5aU+LmM68cukuAQI/G+gjsnuNJM5HTFfrWArt/aVNdhlwGV/GBjyqruEUPI/ijT
	v4OZVP5mRzNySvRmeGkBpHnpu9d+edi0E/LKZ9Cz/P47gJUNaa7ELC/D3WCaCc1PoE92Qkc8LsiiW
	a2CNCVN/DdpVBNFvgMVjO9OZaf8v5ufkQMMVlx5ba4yyxc3aKbQukiMilMMKrdrWH5jcT2rzcGvER
	QySLMXd91SAsyKpYUDIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf3U7-00005l-F2; Sat, 30 May 2020 15:33:19 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf3U0-00004r-4T
 for openwrt-devel@bombadil.infradead.org; Sat, 30 May 2020 15:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=jJ3wC45IjQJZyv+AekjJpzbFgiOomLysEVJthuN1VDA=; b=3byCt1NzY2fNUabUF3kPtWf7QB
 0/B+GUeMezy+RoptPJVT8WZ//D8h8Ppoh6NTAr9z1wxVQ3MkKx6Z7+vg1N1ZEeSBw1pgpAXLiHQo8
 28sSPTD0YijvD9pPey8ozMLVDP2NgyDB1m47p+ILPpzMdqFuiaAJ21DnadjnHyto/E3U/1G7+tAOl
 c2x3js2MSzWBNUOqipXJLCTWNQaKS+SAdagYlS8ZAYvm9ws4Pnt5kqFoVXCMgY9VuCHWz2LQQ+hDU
 36YdB1An/5eponFhj2YBCu4shUQ7YRlHLRpHMnIAMixladxacrwYwHrfYdXqKNHRYGHcW84AS61er
 BODGz8FQ==;
Received: from smtpbguseast3.qq.com ([54.243.244.52])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf3Tm-0007kg-FL
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 15:33:01 +0000
X-QQ-mid: bizesmtp26t1590852691t8rupuqc
Received: from i9.localdomain (unknown [120.236.174.147])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Sat, 30 May 2020 23:31:31 +0800 (CST)
X-QQ-SSF: 0140000000600070I590B00A0000000
X-QQ-FEAT: urqllK+UIe52q786byWuYl1d8N12Iux1CZM51OlzNRHUSkhxE6fedZmwEMiqk
 zOAkvAiLwdFMlcaPpRsn9cvmK0d//9U8ez4m4SCY8eHaGOiy/GtWIr9+Sxk3xJMipvJn14b
 2v1Bxq7bXiuuF9PwfFyfkxKjMDw0bTGeOSFU98Grz81Bsr885MMZu63gF+gWMfRjvv5V8JM
 AHwtuJliKL5usg1Kn0ckKPqPYkBYNptHvQAHKfOVCCvnCJJJZpQEu1+QPNZ4uPALhLve6yb
 7K3tTCXqre9MiUq9rnJ3i3Dn6fdPFTbhmjMIQDiUNKquoQiLpRn/4Q30Oe+hLvqAP6NuSsZ
 ofcaQyfe5jXiEDoe3o=
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 30 May 2020 23:31:30 +0800
Message-Id: <20200530153130.23178-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.16.6
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.243.244.52 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [54.243.244.52 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: disable DSA and Switchdev drivers
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

They are not used at all.

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 target/linux/ipq40xx/config-4.19 | 5 -----
 target/linux/ipq40xx/config-5.4  | 6 ------
 2 files changed, 11 deletions(-)

diff --git a/target/linux/ipq40xx/config-4.19 b/target/linux/ipq40xx/config-4.19
index 23eb5ca589..7cea66e50d 100644
--- a/target/linux/ipq40xx/config-4.19
+++ b/target/linux/ipq40xx/config-4.19
@@ -336,12 +336,8 @@ CONFIG_MTD_UBI_WL_THRESHOLD=4096
 CONFIG_MUTEX_SPIN_ON_OWNER=y
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEON=y
-CONFIG_NET_DSA=y
-CONFIG_NET_DSA_QCA8K=y
-CONFIG_NET_DSA_TAG_QCA=y
 CONFIG_NET_FLOW_LIMIT=y
 CONFIG_NET_PTP_CLASSIFY=y
-CONFIG_NET_SWITCHDEV=y
 CONFIG_NLS=y
 CONFIG_NO_BOOTMEM=y
 CONFIG_NO_HZ=y
@@ -379,7 +375,6 @@ CONFIG_PCI_MSI_IRQ_DOMAIN=y
 CONFIG_PERF_USE_VMALLOC=y
 CONFIG_PGTABLE_LEVELS=2
 CONFIG_PHYLIB=y
-CONFIG_PHYLINK=y
 # CONFIG_PHY_QCOM_APQ8064_SATA is not set
 CONFIG_PHY_QCOM_IPQ4019_USB=y
 # CONFIG_PHY_QCOM_IPQ806X_SATA is not set
diff --git a/target/linux/ipq40xx/config-5.4 b/target/linux/ipq40xx/config-5.4
index 4e5e47a802..33551a95e7 100644
--- a/target/linux/ipq40xx/config-5.4
+++ b/target/linux/ipq40xx/config-5.4
@@ -355,13 +355,8 @@ CONFIG_MTD_UBI_WL_THRESHOLD=4096
 CONFIG_MUTEX_SPIN_ON_OWNER=y
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEON=y
-CONFIG_NET_DEVLINK=y
-CONFIG_NET_DSA=y
-CONFIG_NET_DSA_QCA8K=y
-CONFIG_NET_DSA_TAG_QCA=y
 CONFIG_NET_FLOW_LIMIT=y
 CONFIG_NET_PTP_CLASSIFY=y
-CONFIG_NET_SWITCHDEV=y
 CONFIG_NLS=y
 CONFIG_NO_HZ=y
 CONFIG_NO_HZ_COMMON=y
@@ -398,7 +393,6 @@ CONFIG_PCI_MSI_IRQ_DOMAIN=y
 CONFIG_PERF_USE_VMALLOC=y
 CONFIG_PGTABLE_LEVELS=2
 CONFIG_PHYLIB=y
-CONFIG_PHYLINK=y
 # CONFIG_PHY_QCOM_APQ8064_SATA is not set
 CONFIG_PHY_QCOM_IPQ4019_USB=y
 # CONFIG_PHY_QCOM_IPQ806X_SATA is not set
-- 
2.16.6




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
