Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 490B62D003
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 22:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Date:Sender:Content-Type:
	Subject:List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JCv6Rh6BmmIDWMALtWyvKARf7a3KLNbWFPP54I0Pe5k=; b=Da/XkgZpy7U0tVvPZaBpfwwwQY
	3Fn6M5iL5T1YpIDn5e6NIoDyptU9ESIvKdCOPAET4BWEaG6e0t5TVQS1WbIln8W7iANwWFgBrwCCc
	0kO6SsE4Q7YcsA7p1+63cq4pCWOOH4vHkYkZ4T/X1pn65D15EEfK2AQJhfWsnqqMjMMx87XY4qurJ
	8Cs3evOLSLC3xe/F1f8Rq008ARLF/bKHxTczkaPSQVYfvpeRo93Z1nCgCQv0F+6jP6Dr1UY7c0Zie
	4xYhf/TTCVNDruL+6XO9E4Gt3bOMEPjdZo8PHGNIAAAk5HlAtDhK2G/JPbTBOq1ZQlLRDMupFup6T
	qV0o6W+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hViO8-0001kf-77; Tue, 28 May 2019 20:08:00 +0000
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.43208.1559074076.2376.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Eneas U de Queiroz via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.21
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Eneas U de Queiroz <cote2004-github@yahoo.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] openssl: update to version 1.1.1c
Content-Type: multipart/mixed; boundary="===============3132169270458421764=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Date: Tue, 28 May 2019 20:08:00 +0000
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3132169270458421764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3132169270458421764==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic310-21.consmr.mail.gq1.yahoo.com ([98.137.69.147])
	by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hViO1-0001kK-KD
	for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 20:07:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1559074061; bh=njJ8q9AtgcZbbLUmDIUJkWmcIx37F5rrI18YNi9nKAA=; h=From:To:Subject:Date:From:Subject; b=TMsg29kyJTJUi9nOotDBOWv4IKEAudCyXe2m4EqwcyJKRxpH7ChNVH0RoRjcEXASuZwe0fbeRWT1BDJwB9NaYyWSrRNZaD4F+0Sg32aigbkWUhOjpSduwFW0SuHAzfQ+JnhsWiHAuBzxvDSlIJbCRutKetzr3Q8AUaW9cgMjQyiXv1iRqIUFahQr5QgdrmGb2C0HgRONsXLm3BhK+kk9NjWBMA00qvp5ckZBv/WkwdbDJXqKLgB3DvYeYoOmazyLku9mF41xapZZp30rAD28NQD/dFJRCzzoVzw3oSsYM3a8dt5y8i0vYYToQte6vUlDj2jyMcbgrQbxQEPl36hI1Q==
X-YMail-OSG: kNtuGtIVM1nikHW7gli7qGg6y4XjLm.IJJCRAdLVDzuvoMpBtHIWJ6gFs.F3Yub
 jYhy3XvQDZ2W92mMhVa2_kLQEqT8CF4GvHg1OrkZMd.5Hdcpab3QRs8tGX_70GJYzonIgZzsVEak
 f9oJN3H9bKDBC1iPMXMibuuDL8TYjU2kK5TE2svrKCKunMHVrUo8Z95gYLKdSSjbLEq5PHc3ASns
 UgUEeRCgzoK1seaCa4zsUy3HbP0PvtcU65T3hwZsERjgtF4tPen7agfrFjAGmsV_wGRvK4UD7WFU
 a36UWxOIB4W_kcUdKPt5AUcLBVi5cHUBooeK0IKXmR0hGQhFbQIw.9Y3qpeBEXFDhXaP_LihwK_Z
 R8M9sLSyHR6O.SymiONI7qbh6cLWWQDP4.UerfasN1vUepNO5SdxL.iSqE7OGWolmIXQsHmUZiQE
 _cEEbG18V3k.D_y0soVWcmINPIqRTXQ_AvodwxacQvTzLX.WEpTUIDbHvTGdvh6MEFND9IASGrZL
 XQ5r73n6denMmbMnNQKnNU_mhARMRpBwWBL_3XZXkrVXO2fqLJ90F0ImGjRTKKyFgkwaeVIIGniN
 rgzMFlmidh0A1xbQ6zMKWaKFfDFbd7Sm_68xTPwX9QpMl5VbtxS50Lo.VliPhW9ta9s994tnCdEc
 _2l_IHAuppOKolagj85f38xPXVQDiZe4ilqItOF_PcUQd3y_.cIJDJruIl0sfQ6AsMR6C4m41OK7
 3QzJLeLKE.m18iHk7jpdpVDSALLDzBb.nona8TPO5KZGT4zYrm1u0hUzvM06OBzBLcFbD7b_TQr.
 bVZM339unv9cmYNY2lrlODVoKhGgps29rE5n1G8MCsLj7l7v8bDl4YBEK4.rlV7PzXVMRYjTO_CI
 HONAnu2x7nzQqUt.cr.yfxagbuOfAzdIa9X7o7O7IDlkE60kZHeoVHYVVsEvQ2TILvZHz1eOSx8O
 a36X1fL89vZFz4FD5mMgt4YgKypyTomO1zHbBo2HflRSvwGTTKYQLZhfvBtxJNge19840up4fGv7
 3t7rWZ1sAEqn.mXhVZWglFLEwsGKKMSq16Cgeyw1VnTx0LSywwt_rwCXT7O0896LH5LULECZRp3b
 nRA8CEtkYELiBkY89eh_xGcbDy6RzgPTcA.vZvy_9y2sFP6JNTDx9HYnCa5NNEpGAkzFXQ58-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.gq1.yahoo.com with HTTP; Tue, 28 May 2019 20:07:41 +0000
Received: from 18.175.75.177.infopasa.com.br (EHLO gateway.troianet.com.br) ([177.75.175.18])
          by smtp417.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 68f36e9e5b537ec963b367d92ba92b95
          for <openwrt-devel@lists.openwrt.org>;
          Tue, 28 May 2019 20:07:39 +0000 (UTC)
From: Eneas U de Queiroz <cote2004-github@yahoo.com>
To: openwrt-devel@lists.openwrt.org
Subject: [PATCH] openssl: update to version 1.1.1c
Date: Tue, 28 May 2019 17:07:33 -0300
Message-Id: <20190528200733.14402-1-cote2004-github@yahoo.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_130753_688440_02BA4A19 
X-CRM114-Status: UNSURE (   5.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [98.137.69.147 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (cote2004-github[at]yahoo.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Highlights of this version:
 - Prevent over long nonces in ChaCha20-Poly1305 (CVE-2019-1543)
 - Fix OPENSSL_config bug (patch removed)
 - Change the default RSA, DSA and DH size to 2048 bit instead of 1024.
 - Enable SHA3 pre-hashing for ECDSA and DSA

Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index c173ede9b3..f16c24f7c6 100644
--- a/package/libs/openssl/Makefile
+++ b/package/libs/openssl/Makefile
@@ -9,9 +9,9 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=openssl
 PKG_BASE:=1.1.1
-PKG_BUGFIX:=b
+PKG_BUGFIX:=c
 PKG_VERSION:=$(PKG_BASE)$(PKG_BUGFIX)
-PKG_RELEASE:=5
+PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
 ENGINES_DIR=engines-1.1
 
@@ -24,7 +24,7 @@ PKG_SOURCE_URL:= \
 	ftp://ftp.pca.dfn.de/pub/tools/net/openssl/source/ \
 	http://www.openssl.org/source/ \
 	http://www.openssl.org/source/old/$(PKG_BASE)/
-PKG_HASH:=5c557b023230413dfb0756f3137a13e6d726838ccd1430888ad15bfb2b43ea4b
+PKG_HASH:=f6fb3079ad15076154eda9413fed42877d668e7069d9b87396d0804fdb3f4c90
 
 PKG_LICENSE:=OpenSSL
 PKG_LICENSE_FILES:=LICENSE
diff --git a/package/libs/openssl/patches/200-OPENSSL_config-restore-error-agnosticism.patch b/package/libs/openssl/patches/200-OPENSSL_config-restore-error-agnosticism.patch
deleted file mode 100644
index 3923ac41da..0000000000
--- a/package/libs/openssl/patches/200-OPENSSL_config-restore-error-agnosticism.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From 9933d4a06bd0a0b5b757f072944e8cd54d4bddd3 Mon Sep 17 00:00:00 2001
-From: Richard Levitte <levitte@openssl.org>
-Date: Wed, 20 Mar 2019 10:18:13 +0100
-Subject: [PATCH] OPENSSL_config(): restore error agnosticism
-
-Great effort has been made to make initialization more configurable.
-However, the behavior of OPENSSL_config() was lost in the process,
-having it suddenly generate errors it didn't previously, which is not
-how it's documented to behave.
-
-A simple setting of default flags fixes this problem.
-
-Fixes #8528
-
-Reviewed-by: Matt Caswell <matt@openssl.org>
-(Merged from https://github.com/openssl/openssl/pull/8533)
-
-(cherry picked from commit 905c9a72a708701597891527b422c7f374125c52)
-
-diff --git a/crypto/conf/conf_sap.c b/crypto/conf/conf_sap.c
-index 2ce42f0c67..3805c426d8 100644
---- a/crypto/conf/conf_sap.c
-+++ b/crypto/conf/conf_sap.c
-@@ -35,6 +35,7 @@ void OPENSSL_config(const char *appname)
-     memset(&settings, 0, sizeof(settings));
-     if (appname != NULL)
-         settings.appname = strdup(appname);
-+    settings.flags = DEFAULT_CONF_MFLAGS;
-     OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CONFIG, &settings);
- }
- #endif


--===============3132169270458421764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3132169270458421764==--
