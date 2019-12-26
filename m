Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1767912ADD6
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Dec 2019 19:12:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4dPTu3dZ5htQ5vCxK02OiXrO1DQX8ZjWrVH9yQmUnhc=; b=DuKKaKsn+GOlZA
	DCpVJ+ucs6nzTrTKMJANK1kk34ffgBsZ+ns76nlqyyXRu/XwZTgBkpZ3NQ2TSxl3fEF/zJ0UoEqYF
	eMrwm330GtzppNxkBhJ8YQRc+CVxCwJbjlcQ8vVOXuJIEgHTLH0taE4NL8HlPiqF1yCfUAcwS3TpP
	4Iz4nznjVhpYVOmyNJqMIcHsKR2897DDCsF//g7CSRP+pox5uVQLkfEvpum/T2SoDYvO+wMdt2N5a
	JLH0cBzR1s1Vnca7bOYRtA+545byKDs3AZ0n80drXedi4UbyGT9UvHYTYuwCtV88O+HhiI4yIsq6b
	y24CpQcc7sZbXQNv0ORA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikXc3-0005bM-VK; Thu, 26 Dec 2019 18:11:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikXbx-0005ag-De
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 18:11:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id q8so13511346pfh.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Dec 2019 10:11:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UNBwjdfuCwH4foSW9/LS3IovWbMkB/ibDGCWvdTnNrs=;
 b=FmzXuCteqmNRXypPmIp4OXrmCbwILqygUmFIOk6m5JRZMlMeOl31TUjTzhA9ryEA/v
 Jx61XzyP6SHsA8qBf/IwlKRD1uPq86oEf0Pc5GDwup0V+T73m6tp9yAF3vdxsVvL508P
 x/ugkmL2ll6RqehTyfQpjT07FcMS6Lzii1wdbF6bBBVVfyMZoQyvqvqmcx0BJ+nJBUEC
 pMkLQY8bftoomVByhGzYR2Ed9Uf+Gli6TA4LPwnW1/hD7EyFfI7DpfBYfAdygsSNm68W
 gwMPlGchDuzp7qUcqVe8wXQ8gYVPo6cVjYxD0r5uudx/rYP1bmIucEdCfLhLmFMQSMoW
 uW4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UNBwjdfuCwH4foSW9/LS3IovWbMkB/ibDGCWvdTnNrs=;
 b=K1sv8rViCZ5i9soFayF6iO/7NNd1rfyJIABhktTYcGaeIPoTxq+Zd1zabIUuhqGLhj
 QgNBepgdvMCRcg7rbsMqi0Buf99H+H8fy7KfvodC6QarAtexG5wPZYbu3p0BOz9uCu+q
 LmjiVPV7IcEvGpY+8QVLBunPky0hy7Gn/ZDA1hYKSNw2N0Y+dv283ilmIH+QQwYHlgOQ
 NlMqmjnW+L/93PucAx5MNK4SPPIPK8e0bmLag0uxfcvIt4BgtIq2emlt/sZMoMs7TUBE
 qQE66NHQ8DeMrDXGa7smsqR/+Br7+Kg7LyWiqYGWHvaP66IaDl4+fmf4vvjFpiZ03t9k
 a1GA==
X-Gm-Message-State: APjAAAXdBTPubdd64V+zAqyYX1cqsxDLlUN/CAFHftrWec+aANneQZYZ
 09VylLhvw1oOvNDSqnrBeJ0W0vPSAcs=
X-Google-Smtp-Source: APXvYqw/JL+1ppsXFvX9fHNLzxvXnLvh8m4MA7/N7AdIMi5iZimq8wjml6PCwYd3fQKIC0vxWXQllQ==
X-Received: by 2002:a63:e4b:: with SMTP id 11mr50197308pgo.5.1577383906442;
 Thu, 26 Dec 2019 10:11:46 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id q199sm37643516pfq.163.2019.12.26.10.11.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 10:11:45 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Dec 2019 15:11:31 -0300
Message-Id: <20191226181131.15652-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_101149_484473_92CD7CA3 
X-CRM114-Status: UNSURE (   5.14  )
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
 provider (cotequeiroz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] wolfssl: bump to 4.3.0-stable
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

This update fixes many bugs, and six security vulnerabilities, including
CVE-2019-18840.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
--
Compile-tested all dependents, and run-tested with wpad, uhttpd, and
curl on WRT3200ACM.

There has been an issue with WPA3 and wolfssl.  I am not able to test
it, but I am hoping this may fix the problem.

diff --git a/package/libs/wolfssl/Makefile b/package/libs/wolfssl/Makefile
index 3d2a56a97f..cb1ab1b64c 100644
--- a/package/libs/wolfssl/Makefile
+++ b/package/libs/wolfssl/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=wolfssl
-PKG_VERSION:=4.2.0-stable
+PKG_VERSION:=4.3.0-stable
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/wolfSSL/wolfssl/archive/v$(PKG_VERSION)
-PKG_HASH:=3562af485c26cd7abe94d9404fbfc0c5c9bceb4aab29b81ebf5e6c2467507e12
+PKG_HASH:=6896f8ad6c44aff3e583006eeee839600848a0e37118ebbb7514eca9409ae08b
 
 PKG_FIXUP:=libtool
 PKG_INSTALL:=1
@@ -44,7 +44,7 @@ define Package/libwolfssl
   MENU:=1
   PROVIDES:=libcyassl
   DEPENDS:=+WOLFSSL_HAS_DEVCRYPTO:kmod-cryptodev +WOLFSSL_HAS_AFALG:kmod-crypto-user
-  ABI_VERSION:=23
+  ABI_VERSION:=24
 endef
 
 define Package/libwolfssl/description

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
