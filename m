Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86051162EF
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 17:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iar6UNY3CEcAOy/nD1Q2dFVvqSRm9Ct6iZnZIZXhxQQ=; b=fbtkOa+ps5QrJg
	K+zTqhscu/6ZMV3C1RGOG3q0/E7q0BM4/7ytQk9crIhQK5LmyHphvyK8nUJXUJ23QqkMs3LvMf2kO
	Jnf2nKlP6NyFiXgtv52UhmjbobLMqLZRObqlHNnJc53t9d0wd+L+/2q+kFmNVuycvUHkouvnifCeg
	34nUOtl9L1HHXBlIq+65YbzK+6NQMvWIut+jHw5WSSBWV1FoWViirW5QePUn5y/LKMzlb4bR2GE4w
	po4e2sDWiN50naR6YWpC19UDhc2DfAn2/df8IkWCVbwqX1+xDLaih18IJ/vFkx4gfe7XuvqIgKtk1
	xD8HP3xLbpy8xjV9SB/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idzCn-0007ZB-Ke; Sun, 08 Dec 2019 16:14:45 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idzCf-0007YT-1C
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 16:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Cc:To:From;
 bh=qZirfSPfas5Fbg8gcZHXmrCYldMvnFdvC/dh6ZOnKdE=; 
 b=i3pn/AH3m+9PqmMi4fedATYDriFgiGAbVtHBpBluWCJVkZdYwx1k3ILBGlpPk2QY7e3UP8GRV4Zy5hISyVzkeEZlgP+Bx+ajB0OgiqdQCo/jgyLznOo4D4CoAQv0wDxznUQBaDyqZInB2LfAyc6rjqYy045meIfcbSaHEZ40ELA=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 17:14:19 +0100
Message-Id: <20191208161419.124991-2-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191208161419.124991-1-daniel@dd-wrt.com>
References: <20191208161419.124991-1-daniel@dd-wrt.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:840f:e4b6:a243:a02
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1idzBE-0003r4-OO
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:840f:e4b6:a243:a02]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1idzBE-0003r4-OO; Sun, 08 Dec 2019 17:13:09 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_081437_402175_1E296893 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/2] ustream-ssl: mbedtls: fix ssl client
 verification
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 ustream-mbedtls.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/ustream-mbedtls.c b/ustream-mbedtls.c
index 85bbb1c..74c27a5 100644
--- a/ustream-mbedtls.c
+++ b/ustream-mbedtls.c
@@ -182,16 +182,9 @@ static void ustream_ssl_update_own_cert(struct ustream_ssl_ctx *ctx)
 	if (!ctx->cert.version)
 		return;
 
-	if (!ctx->server) {
-		mbedtls_ssl_conf_ca_chain(&ctx->conf, &ctx->cert, NULL);
-		return;
-	}
-
 	if (!ctx->key.pk_info)
 		return;
 
-	if (ctx->cert.next)
-		mbedtls_ssl_conf_ca_chain(&ctx->conf, ctx->cert.next, NULL);
 	mbedtls_ssl_conf_own_cert(&ctx->conf, &ctx->cert, &ctx->key);
 }
 
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
