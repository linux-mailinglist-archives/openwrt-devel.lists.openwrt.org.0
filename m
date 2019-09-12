Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EA5B14F8
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Sep 2019 21:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YuiKBcCODvxwDVmv4JVHGMubin+Kyk+belQN+qBw9ho=; b=GwrQRXobAryEuN
	BVcgsqK0WgJzs/MCaayAawjamoRU33xdXpPz2JyyMH+cQkAEJNx0rYbgp4eTcjosZReZWP+dHdFM9
	uPM/74g8Bi676Ea/xajjQ7t1nqT1BY7Gy3IRTzudRvYwK5Fhn7oPNs88xFbUDZp+SooWlH6KlXhuT
	dc81d6PyOQNSK75JW9CKEgSM8xaPD2aUKXfxTqxF6GxMeUStHICogshh5m2+N46RBnrh1Ay6rLkXm
	yxEKGPgEVV3sKxt2heZcBFXUeCBCNgVXMNgQvq2nEBq/vxfddj1YjCDDaOb8nZmt7hk3PzFsH4fCr
	u9zzU2nkz4kR6uruPQsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8VDW-0005KC-4H; Thu, 12 Sep 2019 19:57:22 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8VCz-0005Ju-1b
 for openwrt-devel@lists.openwrt.org; Thu, 12 Sep 2019 19:56:51 +0000
Received: by mail-qt1-x82e.google.com with SMTP id v11so31027206qto.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Sep 2019 12:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iabiJF6Bia3vYGgsRZLREqve1LgfTMV/7PlBF8/RxCU=;
 b=cTwslCoAz+ZMHf5GdxCZnsSvQB8w0deg29vYVlurQysOy7t8MBHQeekM86UYDMxlk7
 hbczuD2rZDgDsYO4pVvFzZYNSRQUK2WNlCs7pbzZDsqJZmyIXTEVaXuuvADiE9naapgB
 Z0GeJiETyV7yBWe2pHGvGxetE+qtHi9PIuWYL60fPIUoRkI/8uqtbuZ2tJhA7ezf/f/R
 iiPCcx9J4mNmJ59/qasJFmAMWrfBJDel5cDkWUCrJn9CwQVShd+qBUbIAQAYmGcTrCp3
 w9/VsLRSDBBRBQmlg/jxbUxUV85mM4Q0HEqAXNY9agv+8qzJdQwV+bvdqGaeidex1C9S
 m0yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iabiJF6Bia3vYGgsRZLREqve1LgfTMV/7PlBF8/RxCU=;
 b=Em7PQaUSvwK0m69FKnF5GB4ZO4FjnWwM88zZ1v7tfktjF/KcXs9m/LoKaTvflggzkQ
 bs4AkRiqJXovboOeKqmCnT1+8At/ZV4hRUdHWK9w2CpkA0et79VXOS5HTfshPLLESD4L
 CF7Xo4juruEotoHJ27HTWc0eJJtGyU89Ud/IwbnY3VgyZD3zZYdFqsiuCPTbPuSxG9dI
 kc3BWMYGtdALwuYrhFzxFxLghGR3UZnGdL/u2zAJzaGbn8e8sRBKSUWH62vU15ns8LUm
 vFenPK6myQodVEetsmG239QW3zAHyv2jyfIOdhRt5tJf+YzJhgAN+TBqCkpGCsLk3fap
 yWoA==
X-Gm-Message-State: APjAAAVcXm606O15Bh4H0YrpKJX4caWfKOXn/bFMT8beM8YR5ZMGOBDC
 c5HqQlAdYvdcUal/9q4NvZWzJEHN
X-Google-Smtp-Source: APXvYqxfWM582Gn/c6i6OAkU9bVK+td0ItLOrBkdtfpnnT9VbBq3/Zr9sZ/hUznZs9wNOEqVH9jJJw==
X-Received: by 2002:ac8:5512:: with SMTP id j18mr7872741qtq.89.1568318205803; 
 Thu, 12 Sep 2019 12:56:45 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e2sm11263361qkg.38.2019.09.12.12.56.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2019 12:56:44 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 12 Sep 2019 16:55:57 -0300
Message-Id: <20190912195558.11513-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_125649_261112_B5AB70CD 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH ustream-ssl 1/2] ustream-io-cyassl.c: fix
 client-mode connections
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Starting in v3.13.2, wolfSSL added calls to set the BIO send and recv
callbacks used by the SSL struct.  When the SSL session is created, it
inherits the calls from the SSL_CTX, but they do not get updated when
the SSL_CTX callbacks are changed.

ustream-ssl sets the callbacks after the SSL structure is created, so
it needs to use the SSL functions.

Client apps, such as uclient_fetch fail immediately to connect to https
URLs with a 'Connection failed' error message.  uhttpd seems unaffected.

This commit adds a check in CMakeLists.txt to detect the presence of the
new call, maintaining backward compatibility.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

---
This was tested on a WRT3200ACM running openwrt master, using
uclient-fetch and uhttpd.

I've also tested on x86_64 (not on openwrt, though) for compatibility
with previous versions of wolfssl, so it _should_ be safe to use this
for 18.06 as well.

diff --git a/CMakeLists.txt b/CMakeLists.txt
index c4a3c44..b99b242 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -1,6 +1,7 @@
 cmake_minimum_required(VERSION 2.6)
 
 INCLUDE(CheckIncludeFiles)
+INCLUDE(CheckSymbolExists)
 
 PROJECT(ustream-ssl C)
 ADD_DEFINITIONS(-Os -Wall -Werror --std=gnu99 -g3 -Wmissing-declarations)
@@ -16,6 +17,12 @@ ELSEIF(CYASSL)
   SET(CMAKE_EXTRA_INCLUDE_FILES cyassl/ssl.h)
   IF (HAVE_CYASSL_VERSION_H)
     ADD_DEFINITIONS(-DHAVE_CYASSL_VERSION_H)
+    SET(CMAKE_REQUIRED_LIBRARIES "-lwolfssl")
+    CHECK_SYMBOL_EXISTS (wolfSSL_SSLSetIORecv "wolfssl/ssl.h"
+			 HAVE_WOLFSSL_SSLSETIORECV)
+    IF (HAVE_WOLFSSL_SSLSETIORECV)
+      ADD_DEFINITIONS(-DWOLFSSL_SSLSETIO_SEND_RECV)
+    ENDIF()
   ENDIF()
   ADD_DEFINITIONS(-DHAVE_CYASSL)
   SET(SSL_SRC ustream-io-cyassl.c ustream-openssl.c)
diff --git a/ustream-io-cyassl.c b/ustream-io-cyassl.c
index d97d55e..17a8e94 100644
--- a/ustream-io-cyassl.c
+++ b/ustream-io-cyassl.c
@@ -101,6 +101,11 @@ __hidden void ustream_set_io(struct ustream_ssl_ctx *ctx, void *ssl, struct ustr
 {
 	CyaSSL_SetIOReadCtx(ssl, conn);
 	CyaSSL_SetIOWriteCtx(ssl, conn);
+#ifdef WOLFSSL_SSLSETIO_SEND_RECV
+	wolfSSL_SSLSetIORecv((void *) ssl, io_recv_cb);
+	wolfSSL_SSLSetIOSend((void *) ssl, io_send_cb);
+#else
 	CyaSSL_SetIORecv((void *) ctx, io_recv_cb);
 	CyaSSL_SetIOSend((void *) ctx, io_send_cb);
+#endif
 }

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
