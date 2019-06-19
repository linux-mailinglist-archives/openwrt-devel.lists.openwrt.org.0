Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E9D4B089
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 05:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dRfHJvjURUpWUlPu4ueMDGzJaGIye3rw0y1/rlrsm+E=; b=SdB6YZ5nOwEp6c
	GymeL98DPUTpT5yVbZhsqqZP9+3Npwq24T5oB0I6luxye4VXI2waQUwpwyReXi0evb7zcTF/WF1Qo
	NPP6E4XbE+tDBe1513eh0AZ2q+tihrkzSVbhrOGOpCWM1maEdrX1JDUXhgHeGdLzl292zfH5Oq2fU
	Yay4UnGATOySPqMjZoquNO8Ldh0F3qPWLkuog4EC0QWFGl+Js8dhhP2+ZTS1H5/9HCXM92/Lg26Nz
	P0zJ35IsbBJWvMv8TlnHBNx19zpMcjflPrd8b1cr1fwRMrR/um5+w1IuMfUaQZXuO/ZtHwvJj6mg4
	wtXAMN+YiyddMcRtqSxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdRjw-0004sj-GO; Wed, 19 Jun 2019 03:58:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdRjm-0004sJ-Pi
 for openwrt-devel@lists.openwrt.org; Wed, 19 Jun 2019 03:58:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so8880661pfe.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 18 Jun 2019 20:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=jxE2UlwXDJjdouGUfeYAoR4cfgx5PCLKhvVdb8lpPws=;
 b=oQanO+QSY8Q1oHuC2GZ6Re0wJlFY8gEBFt/A3Vsww+WS1sjHHUYzknXiyNWmIgNFTW
 Sycd2E3nofts37ZFB5jaG1pvng9s7lDRuflGFZNW1H4r976Rubu1nAzzvlavV4doVr6p
 L2X8oGFWRDHTcg1mTXBk/Isa1Bh1N0yQ9SFAqeySNvkixHIcvMPtBH8uCd7ipAwrGMm3
 6/dKbz1aIMlkjaNmDpZKKKAYg9p1hmIS7fOW7N9PQm3Yn+p4ZLGUqC79JdG4QCtJBIKi
 5We5VB0GhPzFwUaBrkHF7ZyT1ytTc9vilK6VKQUx7dyjS834dmEX8ne8o4sVC7/8pkZE
 CO8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=jxE2UlwXDJjdouGUfeYAoR4cfgx5PCLKhvVdb8lpPws=;
 b=KI74zHVb0SMERjLWVPHuqct76nI98mfbLCA+l1xv0YJaa31arzC8RTuQ+8KJEBJQHb
 HcI703h+2B+42VaU+6kYUtJe09iS+Z716J0NPcbeMJsQt65dqa/3P1/dzQ8p4ZAKpsCS
 p2YpOEvFhDooQiyz+HdlVK2flNIGZZ0B8bEAGQbZOdzTrLzpjDhKQPbEovo4Il3EwGrx
 bq8lpCkLzEZIoLkUsKctd96AhVVI1iqAt3gi2ZJuFG3k/R6U8Rd32Yv6kPVyWJMYr2PZ
 5QCn64rLGGcvUPJwGIBSMnPS2IFCQluw9A7pkY3vogWn3erZgiEIqNRNpRYrQb3oUI4g
 Egmg==
X-Gm-Message-State: APjAAAWwSJESZ3Oh0+RzxS18IgJQ6jJXBaJByVlPvwBFqEhOyVfj48r9
 Wszx/iT+7gYNSpsNdufyXNJYEOcT
X-Google-Smtp-Source: APXvYqwZjfXy+f3yZbkN0m0eJcyhfXGa6XR0S1idSDzYVvyqTkjyBf2m2dHOP04m+O0FDgIiHi6OJQ==
X-Received: by 2002:a17:90a:2244:: with SMTP id
 c62mr9074349pje.29.1560916697060; 
 Tue, 18 Jun 2019 20:58:17 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id a3sm17492964pfi.63.2019.06.18.20.58.16
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 20:58:16 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 18 Jun 2019 20:58:15 -0700
Message-Id: <20190619035815.20835-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_205818_865121_CBCCA47B 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] libiconv-stub: Only define libiconv_ under
 FreeBSD
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

They cause compilation failures.

Backportewd from upstream libiconv.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libiconv/Makefile            |  2 +-
 package/libs/libiconv/src/include/iconv.h | 16 +++++++++++++---
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/package/libs/libiconv/Makefile b/package/libs/libiconv/Makefile
index 4d7dcd3498..6e5b687363 100644
--- a/package/libs/libiconv/Makefile
+++ b/package/libs/libiconv/Makefile
@@ -11,7 +11,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libiconv
-PKG_RELEASE:=8
+PKG_RELEASE:=9
 
 PKG_LICENSE:=LGPL-2.1
 PKG_LICENSE_FILES:=LICENSE
diff --git a/package/libs/libiconv/src/include/iconv.h b/package/libs/libiconv/src/include/iconv.h
index 8767be42ee..24d06e4374 100644
--- a/package/libs/libiconv/src/include/iconv.h
+++ b/package/libs/libiconv/src/include/iconv.h
@@ -13,9 +13,19 @@ extern int _libiconv_version; /* Likewise */
 
 typedef long iconv_t;
 
-#define iconv_open libiconv_open
-#define iconv libiconv
-#define iconv_close libiconv_close
+#if defined __FreeBSD__ && !defined __gnu_freebsd__
+/* GNU libiconv is the native FreeBSD iconv implementation since 2002.
+   It wants to define the symbols 'iconv_open', 'iconv', 'iconv_close'.  */
+#define strong_alias(name, aliasname) _strong_alias(name, aliasname)
+#define _strong_alias(name, aliasname) \
+  extern __typeof (name) aliasname __attribute__ ((alias (#name)));
+#undef iconv_open
+#undef iconv
+#undef iconv_close
+strong_alias (libiconv_open, iconv_open)
+strong_alias (libiconv, iconv)
+strong_alias (libiconv_close, iconv_close)
+#endif
 
 extern iconv_t
 iconv_open(const char *tocode, const char *fromcode);
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
