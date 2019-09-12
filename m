Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D902B14FA
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Sep 2019 21:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cE4QlCJ4PICvS6EWhV8bSSr9iNiQF4KrocjfC2FoceA=; b=W5wCv6s5DzpgZ/
	p0hZwn+l43aDEK1XSoK+mpxtz40bs2sXxWSa8BTJLrbNH/R0bkXzglKxBHGCuuh3CCPHbt4M7wpx+
	6HggPzyNSArhHYp4b+F6iaqKf0H2qGuLKncB0h7r5pfSh6Rb5jF14VTbSrUhVHE3FtwPDgong28g8
	3WTWTINEC/zOGcRGx5J6WOozNNwMICgvzi0WOzJzMPX5Lyqn2qXZg+MOejOm6FW3qAOJU107wI9JZ
	BmyiGIRwE1sI2ipDHRdGTuxWiEDDKQITKxbTmiutEdAGj+uPJsd5t031gt22GM8+ZVOWnHsci5D5J
	rrLjHqND8AtXTkye3AHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8VEC-0005Wo-Ci; Thu, 12 Sep 2019 19:58:04 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8VD7-0005LN-2U
 for openwrt-devel@lists.openwrt.org; Thu, 12 Sep 2019 19:56:59 +0000
Received: by mail-qk1-x742.google.com with SMTP id p10so7760113qkg.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Sep 2019 12:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ci4a4U7ijsIeXUMDUVTrjyvrkWJQoilSGB5izA1Pfm8=;
 b=jL8inOkUw75rxAVQuJGPW3DAem5pPuOcSsXXLI6xi7see55CV1QgZnuopbsv/SMQOO
 sadaV0jFpZXyaeMfWyKh1LDutqOfXcM2kDJzaSBJtX9QF8Mp9yUzquTKmbMEk1i9avz7
 cvzbRfTakClrUb1a8ZYNrDYis/ENShAMaNlBF7+JhE4OrtAXEA8LcH2aVhrS1dLnBFSq
 PjIa709JxDVzg7C/CmaUDCbZ9WQ1rMU2Klr96gOFCFs3a3G37ZgiRGSHNB79l4+E2gMG
 Sf5aKN449BE2AOt0xyJEYwhGEoycN09p3qhE4UGQMij24QErYTA9BlaI5y9XMMssGfS6
 KL/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ci4a4U7ijsIeXUMDUVTrjyvrkWJQoilSGB5izA1Pfm8=;
 b=Bnjoaq0PQBccsX5TbOo+4rJV9AyOX7gXwLpbtAj2CiAPa1wgoNiciDvRm+VZId2OJA
 fQtURxcJTvZEztjhtthOdYGYy29Lmo9H1no3pCqjygbQZHxmxFyXI4/itbVRrcBouqEE
 lm6LLLqwkVTLHwX+8eWlqk08NPCQuc1QyA9dRQz16cD1+3LWLmIayFHqWVCmMW4ImD7W
 zga88SdS0HEe5tsZim9qmD9MDwYrkpgyd7QgfG3T7hvFZ4XdUoZRg6f1FBbhwnjGol9v
 ePDRMJdumSiT7oRY/tDi6///HTrTx+I8Vs09OnAVkmJ+20Q83ZPxFd57nIF9cQt921Q9
 0MMg==
X-Gm-Message-State: APjAAAWYj9w6p1QoYVwlYvd8SLKgRRoox73RYsuC/0Uka4o+TqDV5F1x
 zlZJyMZfEHMpz9coJ7PWz5jGzp/O
X-Google-Smtp-Source: APXvYqx9bK0b1BAfqkqDNmKM6obSBIWrBXIZUUS1eff5RYP6LWxsP7qDV2iQ6ylq5WjD+1PQy5Jb0g==
X-Received: by 2002:a37:9d95:: with SMTP id g143mr4010499qke.320.1568318215542; 
 Thu, 12 Sep 2019 12:56:55 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e2sm11263361qkg.38.2019.09.12.12.56.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2019 12:56:55 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 12 Sep 2019 16:55:58 -0300
Message-Id: <20190912195558.11513-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190912195558.11513-1-cotequeiroz@gmail.com>
References: <20190912195558.11513-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_125658_151264_E8B94A15 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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
Subject: [OpenWrt-Devel] [PATCH ustream-ssl 2/2] ustream-openssl.c: do CN
 validation with wolfssl
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

ustream uses X509_check_host to perform the validation, and that call is
present in wolfssl since v3.10.4, depending on the build-time configure
options.  Currently, openwrt always builds support for it.  It currently
does not support X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS, so no flags are
being used, which should be good enough.

Nonetheless, the call is being checked in CMakeLists.txt, just in case
wolfssl build options change.

Without CN validation, uclient-fetch will fail to run unless the
--no-check-certificate option is used.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

---
This was run-tested on WRT3200ACM running openwrt master

diff --git a/CMakeLists.txt b/CMakeLists.txt
index b99b242..8dbdb89 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -23,6 +23,11 @@ ELSEIF(CYASSL)
     IF (HAVE_WOLFSSL_SSLSETIORECV)
       ADD_DEFINITIONS(-DWOLFSSL_SSLSETIO_SEND_RECV)
     ENDIF()
+    CHECK_SYMBOL_EXISTS (X509_check_host "openssl/ssl.h"
+			 HAVE_X509_CHECK_HOST)
+    IF (HAVE_X509_CHECK_HOST)
+      ADD_DEFINITIONS(-DHAVE_X509_CHECK_HOST)
+    ENDIF()
   ENDIF()
   ADD_DEFINITIONS(-DHAVE_CYASSL)
   SET(SSL_SRC ustream-io-cyassl.c ustream-openssl.c)
diff --git a/ustream-openssl.c b/ustream-openssl.c
index b2df362..ab763f3 100644
--- a/ustream-openssl.c
+++ b/ustream-openssl.c
@@ -203,7 +203,7 @@ static void ustream_ssl_error(struct ustream_ssl *us, int ret)
 	uloop_timeout_set(&us->error_timer, 0);
 }
 
-#ifndef CYASSL_OPENSSL_H_
+#if !defined(CYASSL_OPENSSL_H_) || defined(HAVE_X509_CHECK_HOST)
 
 static bool ustream_ssl_verify_cn(struct ustream_ssl *us, X509 *cert)
 {
@@ -212,7 +212,11 @@ static bool ustream_ssl_verify_cn(struct ustream_ssl *us, X509 *cert)
 	if (!us->peer_cn)
 		return false;
 
+# ifndef CYASSL_OPENSSL_H_
 	ret = X509_check_host(cert, us->peer_cn, 0, X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS, NULL);
+# else
+	ret = X509_check_host(cert, us->peer_cn, 0, 0, NULL);
+# endif
 	return ret == 1;
 }
 
@@ -252,7 +256,7 @@ __hidden enum ssl_conn_status __ustream_ssl_connect(struct ustream_ssl *us)
 		r = SSL_connect(ssl);
 
 	if (r == 1) {
-#ifndef CYASSL_OPENSSL_H_
+#if !defined(CYASSL_OPENSSL_H_) || defined(HAVE_X509_CHECK_HOST)
 		ustream_ssl_verify_cert(us);
 #endif
 		return U_SSL_OK;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
