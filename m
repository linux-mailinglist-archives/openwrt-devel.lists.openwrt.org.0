Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DD01C18F0
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 17:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QsQa/h7zvjZ9Mlbm5D/yNht4qPIrjsMNNq1E/pMiozQ=; b=shyQ8WDtQ9RTU6
	nyG1ozvMdA2b2aEGiJj1mcft3pBAY1Cz5OIWPgSovTi82AofxKOt7f6ckEV9S7MnJGQt+MdWV6FdM
	oX7Jf96nyrX3wFTRSc0mm7o7a9hxRDnk6Gxf7yKUe9IvujCVGSreg0ecEObCLH7LUj4kxPgVPjuaG
	oEOwb5CsLPVKayitwSKqmU4YE2Llaklhu6VGYr/TDb0YgX4yJDhhrHnJXcsAJAM3AX5Fvw+Z0BaSN
	G8fqSoj0dgkkYo/SYU38tkn0iiu8uLHOgVekVnlWyqmtPBEIKUFuEeCAYejUnHhxQQvG3rkA2iyT9
	qSIHqcZ8rXShLHY9R/7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXFt-0006bK-Aj; Fri, 01 May 2020 15:07:09 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXFn-0006ZE-8d
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 15:07:04 +0000
Received: by mail-qk1-x733.google.com with SMTP id k81so6768979qke.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 May 2020 08:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GEUr5a6I0oor8qSrcYJ8S9YKs3nGFoWBzx0g0p5eIyc=;
 b=OwRV6xnrOHpf1B8xmWNMa/UR5XK9TL+4fekIugS4DZrvI+JESVwtTlWBhyxplkqhVX
 /7uDcnco7jfiP+xhvONQkg94lMKSFWNHDa3Wp+nP5rWqhG8cphDv1KMdyBepZuRUNyQw
 uvOwsDB3MkOAg7caTV5UI/LYQQ2gaiip0Xe+wK3d/P0Pj0OXdu6e2DnIvPSdLJzs3gdx
 Uj3z/nnxDAo+Xh6ZBi4HN7SqPO4NWIK94ZVuksX9lJyBzacAoRcfvksDDBYsxoycM/tJ
 5Rw1WaUBUzv+UYML4yBue4MRi+GTMztKybDEPcbgQCSZzQP1FsJix9JyBr14hj1ZPtbl
 8vtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GEUr5a6I0oor8qSrcYJ8S9YKs3nGFoWBzx0g0p5eIyc=;
 b=fUTbY5490e5zRjNcdOIVLTJvDShQT8PQLujJPBP46eFr0WKl9oIy2zmmAmEmmG5SuH
 ErBgWa4w4LTltNaIvxkocBJA1Hj2Im5n//kQ+sHc7kZ8Xk9UQzQBgE9ljfAY7td9+T22
 ktblPCFjxmwJ0KW4P64cK7Okh4rxSDZUy9Bse6m2h3VECxTqXoBmaSKa6zpxEy3O2Qv8
 ZiyHxIbgtpG8kzHbSW8ghfVSjqp2w82L6xOEu0sUEh/5t6BtZxPj2A1hRQ/nR0h/SDV8
 Wzj6Sn7n/fttIH2J+sscQAhrR1F5adQBsCYNoHGuOchi/qbhWehQLFbeViCbOnAitj0n
 XF2g==
X-Gm-Message-State: AGi0PuYP9arM/MdCWedUmR5ev2qMwcNPq2H4ucepH7CNuRWbhEz+4j8F
 Qrzd2aHv4/+Uz8BKaOnPiBLPLKlq
X-Google-Smtp-Source: APiQypJqASJfaiakhfN0fgqR3hWQ8VVLtKhAbm1wVQhG6jmPBuDoz/XNyWcFZYzI1IPWy8GSERNC9A==
X-Received: by 2002:a05:620a:4f0:: with SMTP id
 b16mr3958026qkh.165.1588345618787; 
 Fri, 01 May 2020 08:06:58 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id o67sm2893477qkc.2.2020.05.01.08.06.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 08:06:58 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 May 2020 12:06:48 -0300
Message-Id: <20200501150648.18600-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_080703_304736_B47BC137 
X-CRM114-Status: UNSURE (   5.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:733 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] wolfssl: update to 4.4.0-stable
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

This version adds many bugfixes, including a couple of security
vulnerabilities:
 - For fast math (enabled by wpa_supplicant option), use a constant time
   modular inverse when mapping to affine when operation involves a
   private key - keygen, calc shared secret, sign.
 - Change constant time and cache resistant ECC mulmod. Ensure points
   being operated on change to make constant time.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---

This is a straight update, no change in ABI.  Tested with wpad (WPA2),
uhttpd, and curl.

diff --git a/package/libs/wolfssl/Makefile b/package/libs/wolfssl/Makefile
index cb1ab1b64c..b186a087e7 100644
--- a/package/libs/wolfssl/Makefile
+++ b/package/libs/wolfssl/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=wolfssl
-PKG_VERSION:=4.3.0-stable
+PKG_VERSION:=4.4.0-stable
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/wolfSSL/wolfssl/archive/v$(PKG_VERSION)
-PKG_HASH:=6896f8ad6c44aff3e583006eeee839600848a0e37118ebbb7514eca9409ae08b
+PKG_HASH:=7f854804c8ae0ca49cc77809e38e9a3b5a8c91ba7855ea928e6d6651b0d35f18
 
 PKG_FIXUP:=libtool
 PKG_INSTALL:=1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
