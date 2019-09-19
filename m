Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD20BB718B
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Sep 2019 04:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxYso5LzZlha6Y0Dvkbc/6E8zCfz8he86trIce/fvRk=; b=RjTFnANN9AtBPd
	OERZUEvlI6bsraSWD3FYSOXW81dqa77yc7sdqJXiFMiUl/NZADLoOibdt2vbD6/67wNKVispY9q3E
	XnupqdJWu/asuXhwVBlKWzPUNl7HH0Vr1g8KyOoL+xRQN/3WScMkikG6NXnzKCSwZc7wbjRKmSqEj
	Kh3TkRpOXAp8WOiVE0VAAxNPnRlVeepU7wbSroQUxxg0n9dOaHvVdO4JcDshvu1LMimz3Yv8v5Fbw
	VwpBRT9NdssAqmXw4fxx5i/9uA7ewIVDyqWU9sF+MzAVsTYH4y0gzi7K8Ng0GwCj/vSAWSmC+kedr
	buy+gfPnLUmaUZ7bsT/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAm2g-0000NM-0L; Thu, 19 Sep 2019 02:19:34 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAm1Q-00081q-KR
 for openwrt-devel@lists.openwrt.org; Thu, 19 Sep 2019 02:18:18 +0000
Received: by mail-qt1-x844.google.com with SMTP id n7so2316159qtb.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Sep 2019 19:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jlElOjNNuwO5Hu9Xv68T87gNZ/Vo7mkkfAPAslxqq4o=;
 b=L6vxCy291ww0OIaPnlTK84WPPHgA97GOwLrPETtH5HAR4cPhVDzCQW8KVYRPf1khFV
 MZsCptvUMwascSdOb9GolIV8VqrBGkxwi/yOX+WrJBLILLpB+ssRFUddFXRsB05j8G0o
 GnIGoA92UbFGVjaj9ixz3Ipit9o8wRSot4q2epIJPXuDVCpK+BbpLboPJTIRzFW7kkDw
 mSGfZ9IQRK08gj5Sf7eC9HJTJsJGjW99WFjzeAGb62sYNPEANQ6i2vMrAffDd68WgGFm
 wlb/DgoPkBiwnelcvaQ0emk6DLuOTzdn4cqLGYGv014VlSG88yEy8mb3/k1mcXZA/JHR
 4QNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jlElOjNNuwO5Hu9Xv68T87gNZ/Vo7mkkfAPAslxqq4o=;
 b=F2xnr3CmWE04MZEocoLYVU5JtzBfRdQz70vBPVgU3ccBtT7JB/pFptRAdJMA9IJm04
 E6GAFFWnQ0i39EjudhArjekAVdHBB/0fOv6E3iDtmu95e0gcAzxnM36o2ZDHoZqxOolc
 ZVTYKBnj3eEfsVsXkgAAlzRtD0zBtbzlvcH79dyToUi9VeFwR2OdWiMnv+EYRIP2zXy1
 OLLSGbyvfCoEMCGHkK8pZS58nrD3O/WZRsBXozwVhqx2EgMdqYuiL9t7IzJ2IPSBsHVa
 fIwJiW3uJTvBV0oc+ifVDFUyFK1RzEcTqn1lYvby4O7e0PO6lD7Lx1weD2u5zyRyQWW+
 NTlg==
X-Gm-Message-State: APjAAAWL9+oypJGAgYwtYkm3kxNLz3fDQKFHPuRXQzqojNl7zrTsrDBQ
 9wfKzJ8Pw0AY8QSuBOiM5KLWnw0q
X-Google-Smtp-Source: APXvYqyo3uGfUadm3f44o+WJVUNcNIrzxVdlkWeTHE+WyUetnQcl1P/BOomA0uhEh7mrtL2HM7Tf1Q==
X-Received: by 2002:a05:6214:582:: with SMTP id
 bx2mr5868457qvb.60.1568859495633; 
 Wed, 18 Sep 2019 19:18:15 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id i30sm3984496qte.27.2019.09.18.19.18.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 19:18:15 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Sep 2019 23:18:03 -0300
Message-Id: <20190919021803.31271-4-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190912195558.11513-1-cotequeiroz@gmail.com>
References: <20190912195558.11513-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_191816_812628_B6292B01 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH ustream-ssl v2 3/3] wolfssl: enable CN
 validation
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

WolfSSL added a wolfSSL_X509_check_host function to perform CN
validation in v3.10.4, depending on the build-time configure options:
--enable-nginx enables it for all supported versions;
--enable-opensslextra, since v3.14.2.

If the function is unavailable, then SSL_get_verify_result will be
called, and 'valid_cert' will be true if that call suceeds and we
have a peer certificate, just as it happens with openssl. Only
'valid_cn' will not be set.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/CMakeLists.txt b/CMakeLists.txt
index 6b3fc8c..86e1b07 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -21,6 +21,12 @@ ELSEIF(WOLFSSL)
   IF (NOT HAVE_WOLFSSL_SSLSETIORECV)
     ADD_DEFINITIONS(-DNO_WOLFSSL_SSLSETIO_SEND_RECV)
   ENDIF()
+  CHECK_SYMBOL_EXISTS (wolfSSL_X509_check_host
+		       "wolfssl/options.h;wolfssl/ssl.h"
+		       HAVE_WOLFSSL_X509_CHECK_HOST)
+  IF (NOT HAVE_WOLFSSL_X509_CHECK_HOST)
+    ADD_DEFINITIONS(-DNO_X509_CHECK_HOST)
+  ENDIF()
 ELSE()
   SET(SSL_SRC ustream-io-openssl.c ustream-openssl.c)
   SET(SSL_LIB crypto ssl)
diff --git a/ustream-openssl.c b/ustream-openssl.c
index 21abf61..c830618 100644
--- a/ustream-openssl.c
+++ b/ustream-openssl.c
@@ -203,7 +203,7 @@ static void ustream_ssl_error(struct ustream_ssl *us, int ret)
 	uloop_timeout_set(&us->error_timer, 0);
 }
 
-#ifndef WOLFSSL_OPENSSL_H_
+#ifndef NO_X509_CHECK_HOST
 
 static bool ustream_ssl_verify_cn(struct ustream_ssl *us, X509 *cert)
 {
@@ -212,10 +212,15 @@ static bool ustream_ssl_verify_cn(struct ustream_ssl *us, X509 *cert)
 	if (!us->peer_cn)
 		return false;
 
+# ifndef WOLFSSL_OPENSSL_H_
 	ret = X509_check_host(cert, us->peer_cn, 0, X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS, NULL);
+# else
+	ret = wolfSSL_X509_check_host(cert, us->peer_cn, 0, 0, NULL);
+# endif
 	return ret == 1;
 }
 
+#endif
 
 static void ustream_ssl_verify_cert(struct ustream_ssl *us)
 {
@@ -235,11 +240,12 @@ static void ustream_ssl_verify_cert(struct ustream_ssl *us)
 		return;
 
 	us->valid_cert = true;
+#ifndef NO_X509_CHECK_HOST
 	us->valid_cn = ustream_ssl_verify_cn(us, cert);
+#endif
 	X509_free(cert);
 }
 
-#endif
 
 __hidden enum ssl_conn_status __ustream_ssl_connect(struct ustream_ssl *us)
 {
@@ -252,9 +258,7 @@ __hidden enum ssl_conn_status __ustream_ssl_connect(struct ustream_ssl *us)
 		r = SSL_connect(ssl);
 
 	if (r == 1) {
-#ifndef WOLFSSL_OPENSSL_H_
 		ustream_ssl_verify_cert(us);
-#endif
 		return U_SSL_OK;
 	}
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
