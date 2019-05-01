Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AA110BBE
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 19:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BryEj2RuTOZM+bxlGu3IE866RZz3urwFpyf8loAoLNw=; b=Rh5GtK1KVmBNr/
	iZaHM0SUk06CzkFtaU/AMpOcjFy/pUL3q05P+LX3Y1D+0cVxYR1hNOD8W0F1oJUS9D7A79rfMzUgq
	xs3/Cjb20TSUq0hHjb8tqBxhiGxd5R6DnJWbtbbbG1XRqfak9swPjV3cPgPYCdLnNB0CQth8Ekkuu
	0EefAEvT3K4TfYt8l4Aq+5+U9DSSOY60Hz/5OclDkTPUzh3FsPD7NDnjb5szmmLUH8IWs7qyNjp4E
	445RqTV8Ab7l8+DqYCt2Pv2d8Ezv68mn0YNfkLWsKTTI6dsoBJa8n6h5Tpnl7yzMRLXBcGJXkBoYq
	tkMdaAW70HeoKZ9CwaFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsfi-0002o0-SC; Wed, 01 May 2019 17:05:30 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsfb-0002mj-EQ
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 17:05:24 +0000
Received: by mail-pl1-x641.google.com with SMTP id b3so8433208plr.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 May 2019 10:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=RjylO2MK+140JF7IDciJWOLnw7b4R/PfRkIpImQ9Wm4=;
 b=qicmYQyWYPzhj3O+Tmyib8v0vHUNUNPoA8jWhGU/G6ALtHDeuDK2JwOgsaV8a+pyaN
 1VNWLE28uyDVxu2EffxZU/DH6bFj0uAMDhBDBPO9yCg3oSLmpZqKemM/H9kdoh18equV
 2kNPdRow5arHz8BeoT21Ep/Hv+wM7mylxm/s4cJDZNRnQen9a5WxfCHFIwao8dG8AdCD
 AJA0ssGwyKs7JLfZW3JZUidWrltEmVhk9aafrVNxKgquT/jpT/mNN3BfdrHMGFEuFzyz
 11+wQ2dbtgd5QLRS6MaUI10eidV2g1GG20yvkzOFUgYg6p+x01uuM04vvIACP4M4H+B0
 8RpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=RjylO2MK+140JF7IDciJWOLnw7b4R/PfRkIpImQ9Wm4=;
 b=UPg2Eh1C+o/HE4K+Nhwg0/ZUKJPyMIODWWRSKkAU442HOOL2JYqcbyX9C2Yfimyo8C
 OuKiog/AIA1vveM5kw8tikDlmhpCkdm6Ln/+v3FRfd/Xsxj8fmFM/XFxpFa0H9cDOZBp
 NhsaCgWkaSxLBKJB6TIIz6+6C5DpZfs7meMkpyj2s5NH+PF4FZgFAnBPN+f6/CMXXHEh
 ORqv4zDAhmrIfTSKl1/akTkArgxVZaue8PdPC0QO/eotAQ/x/kw5OZyuauhk+SlxWJ/3
 36GztuQxQRHrYTYtVadjOci7RLLEipbxIe5MZ5PPXw5qqcOPKEE8rO2GBuE2+JVbelTp
 HnuA==
X-Gm-Message-State: APjAAAWlg4EZMH4PH3eR+ykBLRdwO70EzNXUA3aMZqSDn/yoIfjfMy/j
 VrEnC7zFZgFHg3wIExabjhI4YUiQ3vk=
X-Google-Smtp-Source: APXvYqyY52jQzuBbLgkgdPhKA+XvY0DTh4WhjmUKMzzKTpEzhUGs01cGgmGmsvlM6CXrM3KgICuZng==
X-Received: by 2002:a17:902:7783:: with SMTP id
 o3mr24909819pll.159.1556730322100; 
 Wed, 01 May 2019 10:05:22 -0700 (PDT)
Received: from mangix-pc.lan (76-14-106-140.rk.wavecable.com. [76.14.106.140])
 by smtp.gmail.com with ESMTPSA id
 j22sm52155361pfn.129.2019.05.01.10.05.21
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 10:05:21 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 May 2019 10:05:20 -0700
Message-Id: <20190501170520.4733-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_100523_480555_51659131 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] elfutils: Fix compile with uClibc-ng
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Probably glibc too. argp_help takes a char *. not const char *.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/elfutils/Makefile                        |  2 +-
 .../libs/elfutils/patches/200-uclibc-ng-compat.patch  | 11 +++++++++++
 2 files changed, 12 insertions(+), 1 deletion(-)
 create mode 100644 package/libs/elfutils/patches/200-uclibc-ng-compat.patch

diff --git a/package/libs/elfutils/Makefile b/package/libs/elfutils/Makefile
index c6b1d6df65..e148df096c 100644
--- a/package/libs/elfutils/Makefile
+++ b/package/libs/elfutils/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=elfutils
 PKG_VERSION:=0.176
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL:=https://sourceware.org/$(PKG_NAME)/ftp/$(PKG_VERSION)
diff --git a/package/libs/elfutils/patches/200-uclibc-ng-compat.patch b/package/libs/elfutils/patches/200-uclibc-ng-compat.patch
new file mode 100644
index 0000000000..b0ae1c7401
--- /dev/null
+++ b/package/libs/elfutils/patches/200-uclibc-ng-compat.patch
@@ -0,0 +1,11 @@
+--- a/lib/color.c
++++ b/lib/color.c
+@@ -132,7 +132,7 @@ valid arguments are:\n\
+   - 'auto', 'tty', 'if-tty'\n"),
+ 		     program_invocation_short_name, arg);
+ 	      argp_help (&color_argp, stderr, ARGP_HELP_SEE,
+-			 program_invocation_short_name);
++			 (char *) program_invocation_short_name);
+ 	      exit (EXIT_FAILURE);
+ 	    }
+ 	}
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
