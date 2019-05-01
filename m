Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842F610BBD
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 19:05:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=41b1v0dMUbEt5E9dN+l08uWy5NRXJQuIlnj2ss/t7ew=; b=Mwd1YKK/8DIUMq
	qpwbM0QPAxhppyRh+9R/lsSn0OprQc9WgkX6nUg3ewTsGDDpziuNvTF1Wl1j+6n6eopIV+4V+rMhG
	2sGhiLXlGX4pCZ1g8agMlsIHTlGapRVME5tHN/H3+uj401JlTRcjCrkRprgQlSYD9OYQdGXdbOKcA
	qUKx8zgmYbQ7LHQAnQrCibL90XwDE2H7tjaja4SYntexQa4PoiduT6twNTmxFPbV+MsDTo7OQS1++
	ePC9cBrjdz24kzpJaygYaq8wB/8KzXlmS2G86c5GD7buX1a4KHsr1049bmXwnOwSgFWXpAYAWe1Uj
	exvS8Ar30q5+nn3Aj63A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsfB-0001LF-SJ; Wed, 01 May 2019 17:04:57 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsf5-0001Kn-1U
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 17:04:52 +0000
Received: by mail-pg1-x542.google.com with SMTP id k19so8560472pgh.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 May 2019 10:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=PPW0V43Iar8YqCAQD8f5k+P8kJSOucLzybR2jX7w9jU=;
 b=B5svcGfl4kSgY2t5IrWv+ZSURmvwdklbGWmZcxCWx38ehIIHBfZ752CZZSVA4II4+6
 oom3O8BMh/a31yAs1VlrXGZFSKTKdDqUCJhLteE1KHDgnLM84LkykA1+02bgTlnJXNp1
 EvTDg/FjBKHXBSmhm1eOQA3inP/xjBR2KYpZ/4ebF+c0DczScgWJD0+zVscsYmfmbXgW
 N0q2T/9P18by2Si2IvcRpPv2pTpJTj+vaJWMXwcQQs3RVnQuZVuPOYP8AQbzotP25b6q
 uUEamNJ+egUGLP7SSeLIsX1xW9v0/Np8fovev4tZ+Tck7e7MJrrKfW9IJAb83ErFkrUW
 UG4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=PPW0V43Iar8YqCAQD8f5k+P8kJSOucLzybR2jX7w9jU=;
 b=SQ9MJNvW3pMxxROgyb/vsRuuwiVlOEvBfRTr00Ab/WBIxvCuV03CBn19ocDuGk+11E
 ClbwGBqf3QNwpBtabYlTCS5jLdvAYbT7v1fpDjlO9CoXkGwKXLea2pVkNI8RGeelmLXV
 r/6yJcg3BjlQZG1gwbUEzboK63kEoVHs16sZ0GDuAZ/pOlquCipmvji8gYC15i41VBSL
 xWh19s02h/7NI6QFt7gsSWzndqF6NReF8Y1sd2dN2l6V6eufLXjzfBZI9px/I3HBOJLq
 NssASAX9G99i460CX3vx5TQo6Ws+q3+yxxC2QqiMTMsilnCf5JhhODbppaLQX6/h717K
 ztjg==
X-Gm-Message-State: APjAAAXpYJi6B1ThmAJzI4FPTS6udw3l/gF1sOcGDU9bh9KYAY3jucGQ
 KNNRDNmnaPBTvXLWn17BpzF44YAvhkU=
X-Google-Smtp-Source: APXvYqxguVs8d82/F3rBr7YDBm0xLdX06ThNsuLrCNuBPhAcwLl/35hsDUPLRAtPCgYV7YVs92axxQ==
X-Received: by 2002:aa7:8186:: with SMTP id g6mr43455848pfi.126.1556730288460; 
 Wed, 01 May 2019 10:04:48 -0700 (PDT)
Received: from mangix-pc.lan (76-14-106-140.rk.wavecable.com. [76.14.106.140])
 by smtp.gmail.com with ESMTPSA id
 b5sm6740877pfo.153.2019.05.01.10.04.47
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 10:04:47 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 May 2019 10:04:45 -0700
Message-Id: <20190501170445.4607-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_100451_085424_53E3F352 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] libbsd: Fix compilation under ARC
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

The 8 year old file does not have any ARC definitions.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libbsd/Makefile                  |  2 +-
 package/libs/libbsd/patches/010-fix-arc.patch | 15 +++++++++++++++
 2 files changed, 16 insertions(+), 1 deletion(-)
 create mode 100644 package/libs/libbsd/patches/010-fix-arc.patch

diff --git a/package/libs/libbsd/Makefile b/package/libs/libbsd/Makefile
index 4101d5e0ee..63b9ceafc3 100644
--- a/package/libs/libbsd/Makefile
+++ b/package/libs/libbsd/Makefile
@@ -2,7 +2,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libbsd
 PKG_VERSION:=0.8.7
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_HASH:=f548f10e5af5a08b1e22889ce84315b1ebe41505b015c9596bad03fd13a12b31
diff --git a/package/libs/libbsd/patches/010-fix-arc.patch b/package/libs/libbsd/patches/010-fix-arc.patch
new file mode 100644
index 0000000000..7b1bcbe348
--- /dev/null
+++ b/package/libs/libbsd/patches/010-fix-arc.patch
@@ -0,0 +1,15 @@
+--- a/src/local-elf.h
++++ b/src/local-elf.h
+@@ -53,6 +53,12 @@
+ #endif
+ #define ELF_TARG_DATA	ELFDATA2LSB
+ 
++#elif defined (__arc__)
++
++#define ELF_TARG_MACH	EM_ARC
++#define ELF_TARG_CLASS	ELFCLASS32
++#define ELF_TARG_DATA	ELFDATA2LSB
++
+ #elif defined(__arm__)
+ 
+ #define ELF_TARG_MACH	EM_ARM
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
