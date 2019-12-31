Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E5A12DA71
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 18:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aM43LOtcan5P+MvyGil029LYcodpO/uTGFOypUnNkFs=; b=OLuUe2EO3jdb0YyRPB+0Q1Ue3S
	/vsqU4d9OrACAcH9OD7+jPiqJVZHC5haJwqSVvBZKIoIrJRBlVuC6KTxID3Dd54DHFP0DsQhx/9y7
	1rBbB/oF/ZvEFlNFANE0b9WmiKery/7vQxo+w/QeIOaJTtkZNdSn3epOHHxPNP6b8emeC6QAccxPA
	UA27CtZdSgwH0Cs+n273pICMHQcxW3HwlamLCguMUYKDVT4rGwQq7ixt7TRndiBXejlKUqvNl3OfC
	kHtlLENnXaAF0FfUv3fXGUOMnAkc712SMxAMAJmjTkFLGJTqHplKIQfNquO3/IxTYbxqIc+ZF+j1P
	cN0qJEvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imKxw-0003AL-4u; Tue, 31 Dec 2019 17:05:56 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imKxp-00039a-NM
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 17:05:51 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MWRZr-1jDygj0Wrb-00Xp9y for <openwrt-devel@lists.openwrt.org>; Tue, 31
 Dec 2019 18:05:46 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:04:54 +0100
Message-Id: <20191231170454.31452-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191231170454.31452-1-freifunk@adrianschmutzler.de>
References: <20191231170454.31452-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:bAP1k2zAvRkysvCbBZOomB1aR3uu/M9029NqoavjsedR3kZCul8
 HCJe+q47ZvxzFJd/vqwYMbGiO+/eZ2dliBdrrgetQ8Ey/wslvKMOgp93mvHUGkwCvx1OGa/
 BGEtURHJ/evXYuUQFOKy3+NTgOmjojjESKqG9YeZy9bfRoy6KWaO5pn89yObR5XmFvDITDM
 4Am4iYyFxneaMpe6k/cNw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LCSRSBJmvHY=:/nFMgEVQO1GrUsJTfy+2f1
 y6CFZxdiLhiR3SSQ2pk0HtPKSkb2KnCnWizKs9j7GC8OI41G0FqkPeU5fUEgQclTDZApIQU9S
 /jHHWXkdbs7rgqkxakMsAPgBznA/2+dG0PRAcoKYRIf2tHPeKzICswUgHVSrcMAgda14gDJTV
 XgsEYtsEaPJXPJ3sM7ryZB4PdEX0r5FZ4u7oGMYiYF1AoU1LLD2b6++FXTUch+UR7zCnH//eL
 G5lCruYDkrrgJyS6yTcNa1VNfZ+YHkbeyttqqxxKSoTdFFivl5zbwNXicO24GaDNhJeK4bp+6
 7l7SO9WxHdSat7FEqZe9/xnGXlqzSoeP/UMPwoCnp1cQnENiGX+FIIWGdSCFvH4wpjJswrJD2
 FqA06g4X8F7Zw7OPMJhxw4h5XEENuGpaait/Kl9r4S9cWpYRswpN89pS60SD0QtQoLWfY9lYW
 YGX+dJbQF8Jj8701GwkhHKxZ4A4XghDvz3S448RlpwCeU4eosUOL90TslR6c5aTd92+UYYhQJ
 xqaZN/apFwZNGmIGIjVZjAkzcTpRHiCvobHcj9u/m1nu8yx1BUctARScNT0PQBjvoXPsZBt2o
 JWjxouPOd+xST7YZr/ljmBSNGj5GrBuCfXDHkxHkV7UCftX9Wd2j1LR1bmL+mrNmRgdXHsey2
 IYQ6XS/lSBrQkVuO4NZrfTBrFCECdf9H63PvLxDaDgppu0QzrHklGabokROjYqSXWzTS/UbgC
 uWlC9wqc338/jz/8SeE3FIAe+pdlgboJlTuyXMiPZwE7ZzZzlzDS3LMAsltotbcUc0MSG6PPD
 KhdwRzEnuiHhomv7igOcTH3ah8VNzylak5G45p7eyErPQnnSKywdimmwRuCB4OyCP473vx4uL
 hUDGpxYFqOlwTKZugW7E94NFtPBgGU3KAK6BKI/OQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_090550_052728_3BEFC3BA 
X-CRM114-Status: UNSURE (   5.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: remove unused
 Build/mktplinkfw-combined
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

Build/mktplinkfw-combined is not used anywhere, so remove it.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/common-tp-link.mk | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/target/linux/ath79/image/common-tp-link.mk b/target/linux/ath79/image/common-tp-link.mk
index 87fc922b3b..6d2c141a97 100644
--- a/target/linux/ath79/image/common-tp-link.mk
+++ b/target/linux/ath79/image/common-tp-link.mk
@@ -5,17 +5,6 @@ define rootfs_align
 $(patsubst %-256k,0x40000,$(patsubst %-128k,0x20000,$(patsubst %-64k,0x10000,$(patsubst squashfs%,0x4,$(patsubst root.%,%,$(1))))))
 endef
 
-# mktplinkfw-combined
-#
-# -c combined image
-define Build/mktplinkfw-combined
-	$(STAGING_DIR_HOST)/bin/mktplinkfw \
-		-H $(TPLINK_HWID) -W $(TPLINK_HWREV) -F $(TPLINK_FLASHLAYOUT) \
-		-N OpenWrt -V $(REVISION) $(1) -m $(TPLINK_HEADER_VERSION) \
-		-k $@ -o $@.new -s -S -c
-	@mv $@.new $@
-endef
-
 define Build/uImageArcher
 	mkimage -A $(LINUX_KARCH) \
 		-O linux -T kernel -C $(1) -a $(KERNEL_LOADADDR) \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
