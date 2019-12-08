Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7731B1163AE
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 21:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LF8p7zA9UQ5PnP8ExsEejiFCuJ/Z3tKYe5l1OpcZPng=; b=UNJawPTHh3DGyA
	jeiYet2KmCho1Tq42CBWLaFwO4amoT8/ndokO0pdO2z56E9iQ/tRacu6bO6hVOXwAE6cvUdLuKsp7
	r9f/jMw5ipKTyGZKmTxQKW/fTu/n4SMrpp+bj1RfOAxi0nhObs26O1SjoFy+tFEUyCIwj32C/62C4
	DZ1bYNtnWAqIFxNUM8rdnoY1Kj5/SiKve/ZZcvDbt/hKhgeK4RzdKdg2+qlCHWlUGqXoDszX/vSb6
	0OGvu+WNS+HRjI34TrSNxUxYNhbVdhBTW72/RV8qpztyQkQlwUufMTUJ1zz6cVm0hA4FQwJs6NrEJ
	ypf6B4im6WlNFNf8I3eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie2wm-0000tp-EC; Sun, 08 Dec 2019 20:14:28 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie2wa-0000tQ-6Y
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 20:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=wQUnq8jpUSmmrqig0lzg1nKTz+XTOHe8tNDjAl109kI=; 
 b=Iw2fypO1OFy7YARSIxfkWEVYJbh6GKfhGvpxxYo1HbBfZzkX2TumLJnQZBsS4RLXYtEe1xLz0TUdKwHLGt7eVSz2rSEvrAPkoHzAfFhwOY0dEBPtgzA4VlTsF4ud8Z5DjjgA1zdR9SSz+T5Nd5VPXCylLbmjB+LY2yLLzxVSKC0=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org,
	daniel@makrotopia.org
Date: Sun,  8 Dec 2019 21:14:08 +0100
Message-Id: <20191208201408.130971-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.24.0
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
X-NMN-MailScanner-ID: 1ie2vJ-0002BZ-4W
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:840f:e4b6:a243:a02]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1ie2vJ-0002BZ-4W; Sun, 08 Dec 2019 21:12:57 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_121416_662716_4AE935EF 
X-CRM114-Status: UNSURE (   6.52  )
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

The ustream_ssl_update_own_cert() function should, like the name suggests, only
update the local ssl peer's own certificate and not the any of the CA's.

By overwriting the CA's certifcates when setting the own certificate, the code
broke SSL client verification.

This bug was only triggerd when:
 ustream_ssl_context_set_crt_file()
was called after
 ustream_ssl_context_add_ca_crt_file()

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
