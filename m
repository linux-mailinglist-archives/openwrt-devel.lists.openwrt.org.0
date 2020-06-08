Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C19A1F1169
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 04:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fbvt3YCwnydeCycoGyJIicvqbRQ6er6cgjZNCpidAqo=; b=cbRzryIl271Y3h
	ruBQT4qXMLsjOv5r3vPpi6lYEAV+BTI+cVATOAj05m7GVezOIMg2K3WEKs3qEiNclO4YUmDB6N2Tr
	TvoBMOfVGZoAPoEERSiCIFnWUtYjBBB06xKS+LpV591Vea3/AUNaO4sCZ5rYP7RwdK3CqMFXVQ4pv
	kuAqdTOIzdYvNQj5efP1fAT7AkKbgQDyT+jJFRanqAMjrLHNShG8Z/Y0SglTB+bN3ALr04bSWFWlP
	Wzb3YzO6jdHylBfmEN6kf8G/SOas1eiihlR1+wYNgWUWfu1u3zPtXPcif8jrcnHdxYeX7McKMXLza
	/s6HEQQUG41oD+/9Sj9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji7Ys-00039X-Ex; Mon, 08 Jun 2020 02:30:54 +0000
Received: from m157.mail.126.com ([220.181.15.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji7Yi-00038h-S5
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 02:30:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=5Dcz5
 yUmeAZ6cOto7wD2Ra9q6xim+dA9XJTrKffRf7c=; b=bY3wHp4y10Dz54h+Djnjy
 KohlMOk2MoEV7jx1oe+w4nByzvE3yrn/UsuaZ65kKmG9PVH/z8gRKfRv9MNPybmn
 jesLqVMlXifVW+egOcUvunJ5V4yzhEkyXWfFkw2PO079jkLFfEfu/MAAV5QzX68h
 nfgoRtV2W8M4RSr0Xzj+8U=
Received: from zhangkaiheb$126.com ( [221.221.165.107] ) by
 ajax-webmail-wmsvr7 (Coremail) ; Mon, 8 Jun 2020 09:59:38 +0800 (CST)
X-Originating-IP: [221.221.165.107]
Date: Mon, 8 Jun 2020 09:59:38 +0800 (CST)
From: "kai zhang" <zhangkaiheb@126.com>
To: openwrt-devel@lists.openwrt.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn 126com
MIME-Version: 1.0
Message-ID: <490ce8ac.1476.17291a7962a.Coremail.zhangkaiheb@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: B8qowADXvS2Lm91eFFi0AA--.32860W
X-CM-SenderInfo: x2kd0wxndlxvbe6rjloofrz/1tbinwM9-lpD-aZz4gACsO
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_193045_325677_5E138DA9 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhangkaiheb[at]126.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH] build: svn: remove the check for
 trust-server-cert option
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
Cc: kai zhang <zhangkaiheb@126.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The command:(svn help export) does not display trust-server-cert
option by default even if it is supported with svn version 1.13.0.

Signed-off-by: kai zhang <zhangkaiheb@126.com>
---
 include/download.mk | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/include/download.mk b/include/download.mk
index 9c8ada052b..6c7b5f6371 100644
--- a/include/download.mk
+++ b/include/download.mk
@@ -167,9 +167,7 @@ define DownloadMethod/svn
 		cd $(TMP_DIR)/dl && \
 		rm -rf $(SUBDIR) && \
 		[ \! -d $(SUBDIR) ] && \
-		( svn help export | grep -q trust-server-cert && \
-		svn export --non-interactive --trust-server-cert -r$(VERSION) $(URL) $(SUBDIR) || \
-		svn export --non-interactive -r$(VERSION) $(URL) $(SUBDIR) ) && \
+		svn export --non-interactive --trust-server-cert -r$(VERSION) $(URL) $(SUBDIR) && \
 		echo "Packing checkout..." && \
 		export TAR_TIMESTAMP="" && \
 		$(call dl_tar_pack,$(TMP_DIR)/dl/$(FILE),$(SUBDIR)) && \
-- 
2.25.1
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
