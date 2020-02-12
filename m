Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68888159F86
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 04:28:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k8FhnkkjpoA+aIYeZN2me+aDvhAZcCWV/6P5eTb1EY4=; b=sBCoRue/Q1b12D
	2Bmk+xYGqPXu6R5DuqggTkSRL7HELhtSSI3PUxAr8ftZo1jnQD9w1uslYyatvZaEG3fFfguxUVrft
	chnjMbecjROF+Z3vbVeSzW+/6CiIuI2Mjd9VwNCH0IcIHaHt59RhpNJ154uZId4GgErMbedSkWVtb
	Dus3vf2XPH4VIAXYROVQ76TglBsgMj2pzJ9zSb4ge9ET3hPNuUuidXW0dJV03TRPLqtfezCmhWUae
	WKAJ4koJl5z3EsUipbap2gUXpg/9Ebs+gYVGBN/EZORFyfjvrn4wppnwIGMtNGBr+FdxIeSn5e0yp
	jKpA8GMH8N+8/fuNBBBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ih1-0006Nv-DC; Wed, 12 Feb 2020 03:28:03 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1igu-0006N8-1v
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 03:27:58 +0000
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id BAA43200003;
 Wed, 12 Feb 2020 03:27:41 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 11 Feb 2020 17:27:24 -1000
Message-Id: <20200212032723.499513-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_192756_235248_771B39BC 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] build: fix empty SUBTARGET in json files
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

Some targets like kirkwood or omap don't use a subtarget which results
in a malformed JSON info file.

Instead of having a valid value like `"target": "ath79/tiny"` for these
targets the value is `"target": "kirkwood/"`.

This patch uses the same if condition to use `generic` if the subtarget
is empty.

Tested for the kirkwood target.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 include/image.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/image.mk b/include/image.mk
index 46d592e8dc..fd04d4020b 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -588,7 +588,7 @@ define Device/Build/image
 		DEVICE_ALT2_VARIANT="$(DEVICE_ALT2_VARIANT)" \
 		DEVICE_TITLE="$(DEVICE_TITLE)" \
 		TARGET="$(BOARD)" \
-		SUBTARGET="$(SUBTARGET)" \
+		SUBTARGET="$(if $(SUBTARGET),$(SUBTARGET),generic)" \
 		VERSION_NUMBER="$(VERSION_NUMBER)" \
 		VERSION_CODE="$(VERSION_CODE)" \
 		SUPPORTED_DEVICES="$(SUPPORTED_DEVICES)" \
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
