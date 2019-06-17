Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8532649608
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Jun 2019 01:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qc8KIq0X/GsJDcwD9f935oPdahiy5RDRutZiV3+tSE4=; b=D4vdJBxg6WCivX
	SFiHuPaJxEg39p0B4PXaImIsQXARwZgHpyvtlNqaZunGX3UImYwGSKqiqcjiJoz+JhOPjjtgsB+Dl
	pp4T6vIm3tcyS5W4pzWFyh84gR5qESnMAfw8h5siPmozIMEFzAJVBZvSqFAJcIBmQIQbTzNZB9K/M
	Znj5zfqlNxLGVRj3it8HW8UnBsDi0lL2mmp9jEDiIr0/6GZOM9GCiPAZnlks2XhYQ2fmEnKWigbt8
	cDgkDAkwtrrCpe4s6JaAJD0B0v7AGfmN7fQmaKxP/fA3ZnPmGYC/HrILrRcwQqRgA294Y96r6vz/6
	iGC1zz8R8lWdHdRG758A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd1IB-0005Pv-Hy; Mon, 17 Jun 2019 23:44:03 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd1I1-0005PR-R2
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 23:43:57 +0000
Received: by mail-pl1-x642.google.com with SMTP id f97so4871680plb.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 17 Jun 2019 16:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=ll4vg397b5tEoaI+29Zr4JZRM05K6ww6PN2fuK/LYWM=;
 b=Yl+ZcT078GJZEOy5Vj4NPYtNO/6NA6Izq2pWt8fv6Tju91bFIQ38B1j0dO3DMp0M3I
 keZgrBy6CWYVu/jpS9t6fs0fdtYeonhqWZ7oCJnlWBtZf6cOx1GxZS8TCQDmsf21qw5T
 enX/ZN870IVQyG0SsA2ql15fnZt1lgahHVrDltMboIq45vkF3VJMKdFJDgqKAkq7/gjy
 tMl0lK+JQvvh9aQ364PCxYsq9r1MCR12SvMFnh/lfHaIFctVkpUeJ+BTEobe1dseAmq1
 7SsDDmpxzm91fnHeFPDqe010embhE0Edd7Jt8snDGlh+nPfyty22jwrhdvOqgokdWUpt
 OFcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=ll4vg397b5tEoaI+29Zr4JZRM05K6ww6PN2fuK/LYWM=;
 b=HLVcq0MjiYX62zjq9KUa+aQf8fC5sLNfh9XE7rxOXnkNs7eFgnECHTVorJaNj5cSKn
 S44LmWu4EYXO5s4dfmuSfrr3zmxH47EaLCjWFPkALLu6HP6EZ/zAbrfTh9Vc/SwW0BV1
 KiD/pRT4nHqnKS/PWVZCXjIm3xDgDfOKylIbL5tjATsUsOPMgY6pXyny5wy2ccbNDw/Y
 SSrFoamEtsmtlrl4SU8EZLJH11QllLBllDrxH/RHd6g2Lg2ZWZC0VBLVQM8xfEusu1vP
 rvL4NxVpMOOJw5IdQY7HUu9Mw+A8hrUdgaTyphm0CmpA06LVsCwBgGEofEjWeZg88Bn0
 h0GA==
X-Gm-Message-State: APjAAAVqvE5Fyyz4pjx15OaJ/FNE2tmRghIxrMitQrMZWRLMfv5O7A9l
 O6kmNohHOoA2WhlPiMKQ2gBt1KVQ
X-Google-Smtp-Source: APXvYqzjihUwlKOg0D2qkRO7UNudgzG/ZHdt1lU+QpAWskJZ4Gl6HzFtDGopdZhiTphPpC0Lyz8YWA==
X-Received: by 2002:a17:902:2ae8:: with SMTP id
 j95mr70654525plb.276.1560815032013; 
 Mon, 17 Jun 2019 16:43:52 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id i127sm12572052pfc.91.2019.06.17.16.43.51
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 16:43:51 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Jun 2019 16:43:51 -0700
Message-Id: <20190617234351.6525-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_164353_907198_9369C2AB 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] gdb: Remove !arc dependency
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

Supported since 8.0.

Added uClibc-ng patch.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/devel/gdb/Makefile                     |  6 +++---
 package/devel/gdb/patches/130-uclibc-fix.patch | 11 +++++++++++
 2 files changed, 14 insertions(+), 3 deletions(-)
 create mode 100644 package/devel/gdb/patches/130-uclibc-fix.patch

diff --git a/package/devel/gdb/Makefile b/package/devel/gdb/Makefile
index 434fb41df4..a5b752326a 100644
--- a/package/devel/gdb/Makefile
+++ b/package/devel/gdb/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=gdb
 PKG_VERSION:=8.2.1
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@GNU/gdb
@@ -25,8 +25,8 @@ include $(INCLUDE_DIR)/package.mk
 define Package/gdb/Default
   SECTION:=devel
   CATEGORY:=Development
-  DEPENDS:=+!USE_MUSL:libthread-db +PACKAGE_zlib:zlib @!arc
-  URL:=http://www.gnu.org/software/gdb/
+  DEPENDS:=+!USE_MUSL:libthread-db +PACKAGE_zlib:zlib
+  URL:=https://www.gnu.org/software/gdb/
 endef
 
 define Package/gdb
diff --git a/package/devel/gdb/patches/130-uclibc-fix.patch b/package/devel/gdb/patches/130-uclibc-fix.patch
new file mode 100644
index 0000000000..ea39acac21
--- /dev/null
+++ b/package/devel/gdb/patches/130-uclibc-fix.patch
@@ -0,0 +1,11 @@
+--- a/gdb/dwarf-index-write.c
++++ b/gdb/dwarf-index-write.c
+@@ -705,7 +705,7 @@ public:
+     gdb_assert (m_abbrev_table.empty ());
+     const size_t name_count = m_name_to_value_set.size ();
+     m_bucket_table.resize
+-      (std::pow (2, std::ceil (std::log2 (name_count * 4 / 3))));
++      (std::pow (2, std::ceil (log2 (name_count * 4 / 3))));
+     m_hash_table.reserve (name_count);
+     m_name_table_string_offs.reserve (name_count);
+     m_name_table_entry_offs.reserve (name_count);
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
