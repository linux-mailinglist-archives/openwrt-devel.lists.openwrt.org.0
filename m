Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD01711452D
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Dec 2019 17:52:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R+4ZgYTqwWW636rRjgmpyK/WJATmwDQjkfvpl2XS/FM=; b=dBJLgl7C8e6E3i
	rNUFD4iOBMMZYzcRz5Q+CuGLhhGIvEINeSmF9PW3vvOzuebXSyDnmMR0UcV/xh1Kp+Fv0+G0etjm5
	N5ktrLUuGCSReYEYmZTwhWzhsfHnbWgkNs8Ujtsn43jLjmF2ok5/f7v0jzOFryvnojM5Txt437jXD
	bfgljRJdLwzwDDXv8S+/2LWvklHv7xMSCRJMUE1hEAhHASeYFuhICR/AJ7eg8QubaV8vSXDldVrmm
	KCOOA0vpd5riCDT/lnshN63N+1vRXVilyPHOWH6VIuS1YgpT6jU4Gw0V/OuriOW1aEH6FPMiuG1wo
	hT7/ItUrOhXH2A8EYG9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icuMd-0000v3-R9; Thu, 05 Dec 2019 16:52:27 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icuMT-0000tR-No
 for openwrt-devel@lists.openwrt.org; Thu, 05 Dec 2019 16:52:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=PqXAyo6/rNw2s4pU3dzt4mB1HM+tgGy2q+CnZM00uwY=; 
 b=RAKrNE4Pjbj8tooUIuRU6UUCZEg3yBPIaM+mH+bWUYUWrYWAyY94XFIvZOJkY2i19fse8RQQfsK4hP5xhiJg+Qph78k6pNuXJ9COSCUd71CnXcrYySGzQ/mFK75JZufDQwL/COR8qhXKsjt6TFaPwrcnL+0wJ492/buaXF96HMQ=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Dec 2019 17:51:58 +0100
Message-Id: <20191205165158.645726-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:30f6:319d:d5ae:fb2f
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1icuL3-0006Ou-Dw
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:30f6:319d:d5ae:fb2f]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1icuL3-0006Ou-Dw; Thu, 05 Dec 2019 17:50:49 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_085218_762563_6D1D3C7E 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] uclient: Add string error function
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

This add's the uclient_strerror function, which resolves and error code
to a string message.

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 uclient.c | 20 ++++++++++++++++++++
 uclient.h |  2 ++
 2 files changed, 22 insertions(+)

diff --git a/uclient.c b/uclient.c
index 1137168..9f98cbc 100644
--- a/uclient.c
+++ b/uclient.c
@@ -422,3 +422,23 @@ void __hidden uclient_backend_reset_state(struct uclient *cl)
 	cl->error_code = 0;
 	uloop_timeout_cancel(&cl->timeout);
 }
+
+const char * uclient_strerror(unsigned err)
+{
+	switch (err) {
+	case UCLIENT_ERROR_UNKNOWN:
+		return "unknown error";
+	case UCLIENT_ERROR_CONNECT:
+		return "connect failed";
+	case UCLIENT_ERROR_TIMEDOUT:
+		return "timeout";
+	case UCLIENT_ERROR_SSL_INVALID_CERT:
+		return "ssl invalid cert";
+	case UCLIENT_ERROR_SSL_CN_MISMATCH:
+		return "ssl cn mismatch";
+	case UCLIENT_ERROR_MISSING_SSL_CONTEXT:
+		return "missing ssl context";
+	default:
+		return "invalid error code";
+	}
+}
diff --git a/uclient.h b/uclient.h
index e3695db..4f37364 100644
--- a/uclient.h
+++ b/uclient.h
@@ -36,6 +36,7 @@ enum uclient_error_code {
 	UCLIENT_ERROR_SSL_INVALID_CERT,
 	UCLIENT_ERROR_SSL_CN_MISMATCH,
 	UCLIENT_ERROR_MISSING_SSL_CONTEXT,
+	__UCLIENT_ERROR_MAX
 };
 
 union uclient_addr {
@@ -126,5 +127,6 @@ int uclient_http_redirect(struct uclient *cl);
 int uclient_http_set_ssl_ctx(struct uclient *cl, const struct ustream_ssl_ops *ops,
 			     struct ustream_ssl_ctx *ctx, bool require_validation);
 int uclient_http_set_address_family(struct uclient *cl, int af);
+const char *uclient_strerror(unsigned err);
 
 #endif
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
