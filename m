Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60941E5895
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 09:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gfdLUHI0uw79IJhFf4JvU1JVC04rqL8MIvNNRX6ENv4=; b=hnJNY/wF4O5/lj
	/EfJRT+KdXfeMWRGss2qHMTz+RinL2NbTWVw0f74k8aL74gOvw8G8c6H80Y1/Lnopl7FmNDKtZXBR
	ZY4/Avycr0zpfd5i1Hh3f3V8yfQ7IMdP4Di4f4xLE49Vo2If6hZbIL/jXeyQG0lBDeL/4RreP5NAX
	8F9JWNvyNwdyfe20+wcWbG4CtyzCNefUBkt2D4XkulWGcFX7EDV/2YPVLVGZjU6/6Flq9Tf+PJG7C
	sN/Or8rtBYz9DVJkZxThWsjuQ9tUoeDIwoPVE/hYQ1UaOk7uNlXHMLFI+keyVJDLbOtVysMJwunwd
	p4VHpiO3O/nH+dHQBCNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCvu-0003mW-BT; Thu, 28 May 2020 07:26:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCvR-0003d9-3Q
 for openwrt-devel@bombadil.infradead.org; Thu, 28 May 2020 07:26:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=UG0Nu/Z9Zx4QRO94gZcUDoolgBXnyC9qyXspBtPe8EQ=; b=bO0qNgxeC0Uy4ivJl+IjGXE0VX
 ls+l9WY50uLzeRZy14eeGyk/HAPqcUMj3N/pTl61ePIUb0fDhXZW2BlHVBe/qzc6AIRiFuhRVSDXJ
 W38h3p+aOSthmqFXiWxKlGY37mkmWMwqNnBFNz+69ax7JwQaTQwQJsr9msz/qJqIRRROsxKwTs0VN
 z/bmcx+RidpWW/Mrh4s1Xsnua5Aj9n8tuW1K0gJFeoTTrK2ZxWRjT2tHoYkxC1vbie4cdHOan8zWp
 le26OEAkF9Nh84zbS633Z4ERAV+aoxNj85ZOwT4m/BNg91/0dw8TrG6aeQYiD2I3fVTeJTPYck4HW
 PDmM9ynQ==;
Received: from smtpbgsg3.qq.com ([54.179.177.220])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCvG-0004ib-VC
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 07:25:56 +0000
X-QQ-mid: bizesmtp26t1590650708t3gkjrf9
Received: from i9.localdomain (unknown [120.236.174.147])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 May 2020 15:25:08 +0800 (CST)
X-QQ-SSF: 0140000000700070I590B00A0000000
X-QQ-FEAT: ia/zSiuM9A3DTze+HJj5iJ6xbU6yuri1zxBPN57paiE5XBIrqm7y2JwCTYBci
 +I8X+xnMi2pjq7FtDtCGQU/hJGR4y5ZUwxslRpOuVCsAfNaODo1GBYnfl4NasrrJjCWEW5j
 w8r9JNZwPWYGoN8RcPsf7LgaNusjaiIkIGSRHw1KTlJBHCauj0f60EUNIh7zqK9TLTs5mBp
 eHxlSLd/G0CDCg/8W2LlVLWX4uHb7zTbrGsAD63TqCvIr1GMG0HFGOIZp9xbnE6E4EwHcfx
 N9yRU5366WyrAdGbdiesL83NV7I9JVfCmDXoCm6fegMe3ST/XdXGMnh/1PqNmF0wPhVs20E
 C34jz0Zmuv0o7ev0D4=
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 May 2020 15:25:07 +0800
Message-Id: <20200528072507.19736-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.16.6
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_082551_537950_4FEBD21D 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.179.177.220 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [54.179.177.220 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] ccache: update to 3.7.9
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

Update ccache to 3.7.9

Release notes:
https://ccache.dev/releasenotes.html#_ccache_3_7_9

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 tools/ccache/Makefile                       | 4 ++--
 tools/ccache/patches/100-honour-copts.patch | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/ccache/Makefile b/tools/ccache/Makefile
index 4e99207872..bf81f2d388 100644
--- a/tools/ccache/Makefile
+++ b/tools/ccache/Makefile
@@ -8,11 +8,11 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/target.mk
 
 PKG_NAME:=ccache
-PKG_VERSION:=3.7.7
+PKG_VERSION:=3.7.9
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://github.com/ccache/ccache/releases/download/v$(PKG_VERSION)
-PKG_HASH:=b7c1d6d6fe42f18e424de92746af863e0bc85794da3d69e44300840c478c98cd
+PKG_HASH:=f893da7543bfb9172bd55e603fcbdfcd83e6def176a28689c13235695b4cf44b
 
 include $(INCLUDE_DIR)/host-build.mk
 
diff --git a/tools/ccache/patches/100-honour-copts.patch b/tools/ccache/patches/100-honour-copts.patch
index a3cef56213..31f70090e4 100644
--- a/tools/ccache/patches/100-honour-copts.patch
+++ b/tools/ccache/patches/100-honour-copts.patch
@@ -1,6 +1,6 @@
 --- a/src/ccache.c
 +++ b/src/ccache.c
-@@ -2220,6 +2220,7 @@ calculate_object_hash(struct args *args,
+@@ -2227,6 +2227,7 @@ calculate_object_hash(struct args *args,
  			"CPLUS_INCLUDE_PATH",
  			"OBJC_INCLUDE_PATH",
  			"OBJCPLUS_INCLUDE_PATH", // clang
-- 
2.16.6




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
