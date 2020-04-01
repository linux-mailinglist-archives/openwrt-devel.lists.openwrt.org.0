Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF6A19A538
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 08:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rputEsxhYUekkzA48UBJKIEmTiqYFJQ7UCPHv9o75xM=; b=I/9lH0/GBEPyHS026Xy8poLJTM
	qg2sBTRRNteWTzHK+bve2Cex38F3la2aNWfgsMOb6EVJ2sBQ7t1fcIgmR84eMUpjrdDfqAnA66NJU
	RYVJ9t8lgfQgHzAhmjiwKQ3HfiTsDr9rD26Wz7zjGdgDAROa2jW0RwPe72WNcmIOnZ9fjIprHaVGU
	V/eInTl+PEO1KZ0Ly+RNPpqcaG+N22EQ1AxES47FVXjhGmAzUiL/zW4CamrJkedfhf3A30QRkbrj0
	xAANzlbyV7/DEpY4++dF/lA6uFKAEHI7/ue8CZMthM2SU2KJD/yIzhQxejezASmlsj21eFlol9hC0
	P0kH38Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJWiL-0008C2-Mz; Wed, 01 Apr 2020 06:19:01 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWhl-0007XB-GH
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 06:18:26 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 8E802FF802;
 Wed,  1 Apr 2020 06:18:22 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Mar 2020 20:17:49 -1000
Message-Id: <20200401061748.2022142-4-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401061748.2022142-1-mail@aparcar.org>
References: <20200401061748.2022142-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_231825_673481_39AA997E 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/3] ImageBuilder: Show alternative device
 names
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

With the introduction of `Target-Profile-AltNames` the ImageBuilder
should show these names to allow users to find their devices without
knowing the name used in the OpenWrt build system.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/imagebuilder/files/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/imagebuilder/files/Makefile b/target/imagebuilder/files/Makefile
index 15b3d5c35c..d92cd253c8 100644
--- a/target/imagebuilder/files/Makefile
+++ b/target/imagebuilder/files/Makefile
@@ -75,6 +75,7 @@ include $(INCLUDE_DIR)/target.mk
 USER_PROFILE ?= $(firstword $(PROFILE_NAMES))
 PROFILE_LIST = $(foreach p,$(PROFILE_NAMES), \
 	echo '$(patsubst DEVICE_%,%,$(p)):'; $(if $($(p)_NAME),echo '    $(subst ','"'"',$($(p)_NAME))'; ) \
+	$(if $($(p)_ALT_NAMES),echo '    AlternativeNames: $(subst ','"'"',$($(p)_ALT_NAMES))'; ) \
 	echo '    Packages: $($(p)_PACKAGES)'; echo '    hasImageMetadata: $($(p)_HAS_IMAGE_METADATA)'; \
 	$(if $($(p)_SUPPORTED_DEVICES),echo '    SupportedDevices: $($(p)_SUPPORTED_DEVICES)';) )
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
