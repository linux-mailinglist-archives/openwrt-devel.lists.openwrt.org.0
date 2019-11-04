Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E473EDFD9
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 13:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nyrljl/gHEhitwA7kpUeNrdtQVYLTgql3+90JrCEr/4=; b=Uj6qOv12QbcSHF
	3Vi3MYriQiqC0i7BI106ZdTfnbmYQTkaRoaWGOkFGFaev6Q882JqY7Mx+SsOkmLCcmk2Y0V74YtYl
	VNUrbr4bvn07bggcDaUJTGvqTx/OOshee6znAKB4e+WVnziba3USRIcH3Wz3x46hBTSeOYXBtTOjd
	2Myfn6uE4E6UFvkAYJeYpCTB64odW/pB7Di2Im6ODknFBWkls4rMuCzuDgyUQ0R0ZEvZ0Ij0TO2Iz
	x9R7Dlodj0EHWMSfhwvp1mNgA5PMD6ycvYm1XC/qSjsU0zFjLDVrsEWjTiiaDu59Cgwy4VaSns1Nv
	Miu8F/E3ywqwsv4sv3MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRbIN-0005wD-OX; Mon, 04 Nov 2019 12:17:19 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRbIE-0005ej-T3
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 12:17:14 +0000
X-QQ-mid: bizesmtp25t1572869797tme1zd97
Received: from example.com (unknown [112.19.111.227])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 Nov 2019 20:16:36 +0800 (CST)
X-QQ-SSF: 0120000000000050E0K2B00A0000000
X-QQ-FEAT: oPf+tCeE8zFvtMS9J16Ln/bm5/wE5spg4Y6j3/cexFV7uXxEULKRe9YaBYlMt
 5kU1qABDeQc62ppRoqQCWXnmUKGsHu3W8QPvDudtJOsH/uisbPwpbkPkMw7ueGGGVMrXoj+
 gg5W3dtRbnqqJtsThNKYIEKJQ+vOJ9Qs111wDif9X6X5sedRg+3ZhHtxJCdfwmRtFjrayYN
 Omo7ylBiEDR9xL3X3xvf0r/SPo1NSqNKDdprx1FCSVba26wqilWgImRIDAy2wj7H89zoInt
 2EUTf/3o+HwwS00GM/bnQKLaf3DnE6Lmv5yfDmSLkl33KeJAWtsYG90FitKggRTHxlyw==
X-QQ-GoodBg: 0
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  4 Nov 2019 20:16:31 +0800
Message-Id: <20191104121631.1502-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_041711_057945_80ABFE38 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ipset: update to 7.4
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

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 package/network/utils/ipset/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/utils/ipset/Makefile b/package/network/utils/ipset/Makefile
index 2cb6ec981e..0bab21a12f 100644
--- a/package/network/utils/ipset/Makefile
+++ b/package/network/utils/ipset/Makefile
@@ -9,12 +9,12 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=ipset
-PKG_VERSION:=7.3
+PKG_VERSION:=7.4
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL:=http://ipset.netfilter.org
-PKG_HASH:=4644c7c5005e90a9b6385d625283eb0b69b34de7192301428665dd909fdaa35a
+PKG_HASH:=4a974176e57fe4b7e2984abb231c4a18af2291bdc41536ef64e4b8ec4d4a1884
 
 PKG_MAINTAINER:=Jo-Philipp Wich <jo@mein.io>
 PKG_LICENSE:=GPL-2.0
-- 
2.23.0




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
