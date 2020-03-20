Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BEA18DC29
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 00:45:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xwXyoA9JTn9Oa1PNtdMuODfNccLbwPY6zzfiIOjzT+c=; b=Hl8agUtiKRUzPw
	0HWvEQxhbjezgFEYCiw3TzGYmQZRzklz0te2VlLr8d9Gpe+/t5pHSuqJUM96lC3fh6aUBQ0PrUAUs
	J/KpJa190ZukorG0WcLcreucJQWZXDqlN09za2XYXITWDzPQy7pcTMYUGB4ZDUMPK3ZcV4h5Kl67j
	UZsU1F/VD0wdjHMZwpk/ypi4ysSq+P0EId+TtJqMi4i79kE6WdzcmMxFdIo1z54dlDaet9EZGL/xc
	AFGH+lGWi2i6GVMJorIMWXD7xFBRfDnZ58ThCeXClN+Hc+VMEQOKivLk4CvC2MSLb51q8HjY97OgM
	261bx/VhxbhxCAmBF9pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFRKI-00083l-Na; Fri, 20 Mar 2020 23:45:18 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFRKC-00082i-6Z
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 23:45:13 +0000
Received: by mail-pl1-x643.google.com with SMTP id f8so3157876plt.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Mar 2020 16:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y08KKk9txCv+LJcT2mzosP88Q7bgX9KpKtnSwN4E6Ec=;
 b=Oog9grJRbX2uoPuFv/oc/KNYvokOhui9Xs3kMf348+92T+9Sjrlarer/WcxKHPb2z2
 lWmFcWGSdMFG+ayJasmUaiF+4GGkxQaUZ9cz6dLdWS8BYWubgWcudsygyXTDka4Qi6Cv
 /x9E2cUPFBL8yWxGi4lstA14/nVSDZHnN0ulL1T9NzVv8OttZf3N2SWEX90cc57+sTeR
 XhtEwnc+WW1pRU8fpWbiiCNEi6rgnZMVWxjKVY9YayMcnS9sBoJDwJZr+WcDgheJbcBS
 TjYynkGspr6mP1dus63hPvPKz+iZWP5K8NDINCFHBRapwOwV0yiJtiexJvtJE1fBjHMZ
 3jkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y08KKk9txCv+LJcT2mzosP88Q7bgX9KpKtnSwN4E6Ec=;
 b=sxf6UsCkoXcm5krRKmpCqTblAqZf/wT1ko0qQcYouunCmmVnH4nZyqerMWyWNh37jx
 ote1Qtt7a0yS400aD8BunT5MZaKrfiS8+6D2IUTC0+TgRjJWFOynIgiclwDwi7T+A2++
 HKUei4NH77QY2AdbwpRgMjsayK3a/vG352T+AdrfI4qFys+u/ycc2NTduqwi/YFl2Xq9
 0R02vHTjlsMmv0K6Qu6S+H1Gn/3wkbghXBvxadPQmR632GsR8ocF4YxJ45S8BLMEups+
 tWqwT6qBzt7Yf6o598Cha4WEM3LQQ0mLvYhBQhbVKYSDRgZJcpPvIVzdIepgwhhSGZFB
 BsGQ==
X-Gm-Message-State: ANhLgQ1PmkVI0/Sq724MxCmN+vspo1wEnjVJvIzrSheAMRjfPfbzkJYj
 ktKmHFycKjE8WY7Fjdr7sqlhNts3mEU=
X-Google-Smtp-Source: ADFU+vuYk9rNDfdyf8TNsEiZZZEWHwowHfO9G4dEllYm0pXPEtLj7RpmfIL6KG9drK1jk0Wnx1/20w==
X-Received: by 2002:a17:902:9b8b:: with SMTP id
 y11mr11255999plp.189.1584747909261; 
 Fri, 20 Mar 2020 16:45:09 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id l20sm5712294pgo.1.2020.03.20.16.45.07
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 16:45:08 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 16:45:06 -0700
Message-Id: <20200320234506.1310362-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_164512_268055_9AE50F62 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] busybox: fix build with musl 1.2.0
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

The SYS_settimeofday is no longer present. That is, it's replaced with the
time32 variant. There is no time64 variant.

Note that 5a7c064bdbb71bfbcded073c7c0a8723be306009 switched the patch to
use the syscall instead of the function as the function expects the
timezone argument to be non-null.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 interestingly enough, musl returns clock_settime in the settimeofday
 function. There's a clock_settime64 syscall.
 package/utils/busybox/Makefile                      | 2 +-
 package/utils/busybox/patches/250-date-k-flag.patch | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/utils/busybox/Makefile b/package/utils/busybox/Makefile
index 01441d1e87..baf375eb13 100644
--- a/package/utils/busybox/Makefile
+++ b/package/utils/busybox/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=busybox
 PKG_VERSION:=1.31.1
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 PKG_FLAGS:=essential
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
diff --git a/package/utils/busybox/patches/250-date-k-flag.patch b/package/utils/busybox/patches/250-date-k-flag.patch
index 5aadbb233c..b80d402387 100644
--- a/package/utils/busybox/patches/250-date-k-flag.patch
+++ b/package/utils/busybox/patches/250-date-k-flag.patch
@@ -69,7 +69,7 @@
 +
 +		/* workaround warp_clock() on first invocation */
 +		memset(&tz, 0, sizeof(tz));
-+		syscall(SYS_settimeofday, NULL, &tz);
++		syscall(SYS_settimeofday_time32, NULL, &tz);
 +
 +		memset(&tz, 0, sizeof(tz));
 +#ifdef __USE_MISC
@@ -78,7 +78,7 @@
 +		tz.tz_minuteswest = -(tm_time.__tm_gmtoff / 60);
 +#endif
 +
-+		if (syscall(SYS_settimeofday, NULL, &tz))
++		if (syscall(SYS_settimeofday_time32, NULL, &tz))
 +		{
 +			bb_perror_msg("can't set kernel time zone");
 +			return EXIT_FAILURE;
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
