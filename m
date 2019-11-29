Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F09D910DAC4
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 Nov 2019 22:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vYsnbs7mVChGeObbgewzbQWWosu/gpBCkxLrAyfyk+M=; b=W2pO/ENwFl4dtr
	sNjkFdw1YI37Ek1X+cG5eu55Ww38gLSMsampc5w7tD6ZNT+tixI4o7QvMOkQrq6CgHeiVDgD2DXRJ
	/uWZrgQXOm1f5q5AyFr+8XwDsS+HR9zhskBrgl/GcAUmGSI2UCNbUSxMVEXxZpNREij0Eoab+WQ1U
	QhqNOBWllU2/JP7dXJSnIjJfMYBiPiBPG2FGFfSOnzYO2CBSqX4dXub3sMcZIpVXnonxGyjwH96ei
	82zJ83rS1xBEfTvBC6F+fV+eEF+NLPvZ/IHkXTrSr69I7Divc82XU+UEiAbZ3W6Ju9J2TnaGLFYth
	6IPgDHzSwU21uFNab/Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ianUo-0005s2-DK; Fri, 29 Nov 2019 21:08:10 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ianUd-0005qz-H3
 for openwrt-devel@lists.openwrt.org; Fri, 29 Nov 2019 21:08:00 +0000
Received: by mail-pg1-x543.google.com with SMTP id e17so14978668pgd.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 29 Nov 2019 13:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vTZCBza93tz60yhRzEXrCZEUcmcUCr/hF0ZSima5G2Q=;
 b=MJaPblx9beVO4YuKCYULGdvQ0Ri6BFzJtkfIeZ1OHuyanmttHPjbZ2czi04KKgdEAr
 V1BZyRRAS3exg5/njZ+mdUfw2QQkphuOhi2uAFgZxBztMc95ch679KzIPX25EHT3tjCU
 4r2GM7EfUm4qyn6ALZlgjhVMzo3RHBv7W/Pn/zArLC/1PLYA3fW2qDEnSaRdf0bgNEKp
 IsPEoJgdPAWluF/j+7hcV2J4YeWdVvH3756cC2thIlaXKmqHkhEuNU30XiErbP2xlbhY
 u5cJKZZrnzt3Wki8g3ZymFyOB5AyPaHlJVJo/adftdQP2ZCcqMT/fKh+Q1fCN+xf/TbK
 kZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vTZCBza93tz60yhRzEXrCZEUcmcUCr/hF0ZSima5G2Q=;
 b=KWAp4t/xrISRdY6fGUhNIT0/MuEmEpTVkdZWyC/e2LdUvdtiTPLqgXvIrcvqnsI2Ra
 nYNUBEj+Ki97bVN6Od4XkGVUQGtW1mWoguScS1PasM0QH4zYJTpNef291qPzsC1DiiQ+
 Er6xVopMcl9jHyV7RS3x3VGyiyynt7U98fUkzo0oiXu+krHnK4FqfO1PuXvAjP8rC44i
 uO3IHxtxW5hiHLdtIE+HZOeH2A7zyRvEsbtCawYyFI8lR6OOr0GdggsriLX24CYERDEe
 rlgHbk7+DqF2J3WtJEW4N9xGEdadaZyny8qoUCWWLfhrhAaX1sPyBgNXPTlCG3eaoYRH
 BqYA==
X-Gm-Message-State: APjAAAXgu+eGM+2ZWtCg05ymdT5O4rHwIxrschrIRdqttiDhcEXOzNH1
 Tt9DRmu3FRdYg3UlD/bZmGO26hvv/7A=
X-Google-Smtp-Source: APXvYqxbPgsZYl2s4+nBjsWwla6oBjipbDOCYpztQCYMPgAfrF4iDC1D2b+bEW3zPtiUnrU7Vw2KTw==
X-Received: by 2002:a63:e953:: with SMTP id q19mr18569583pgj.256.1575061678450; 
 Fri, 29 Nov 2019 13:07:58 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id z7sm8635474pfk.41.2019.11.29.13.07.57
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 13:07:58 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 29 Nov 2019 13:07:56 -0800
Message-Id: <20191129210756.4377-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_130759_569814_C8A1D180 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ubus: Fix Wformat-nonliteral warning
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

A const char * variable cannot be used as a format string, leading to
this warning.

This change allows GCC to check the types properly.

Fixes warning:

error: format not a string literal, argument types not checked
[-Werror=format-nonliteral]
   99 |  sprintf(hreq->data, format, obj->name, msgstr);
      |  ^~~~~~~

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 examples/server.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/examples/server.c b/examples/server.c
index e0cde0b..e218efa 100644
--- a/examples/server.c
+++ b/examples/server.c
@@ -84,7 +84,7 @@ static int test_hello(struct ubus_context *ctx, struct ubus_object *obj,
 {
 	struct hello_request *hreq;
 	struct blob_attr *tb[__HELLO_MAX];
-	const char *format = "%s received a message: %s";
+#define format "%s received a message: %s"
 	const char *msgstr = "(unknown)";
 
 	blobmsg_parse(hello_policy, ARRAY_SIZE(hello_policy), tb, blob_data(msg), blob_len(msg));
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
