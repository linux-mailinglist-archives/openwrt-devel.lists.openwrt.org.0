Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D49505C152
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 18:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WZ3ufzvdCn4troP3BLZz9NCkGjjKDAGqmfkV7gUzB5A=; b=DcEE9jyKU6LPWZ
	TgC2KVBDaM10eKcz7Zye2GVJGfwZNrew5rDs/fPFpEyt4a2dsGD6Oqott3GdHH8XoGtQ17Os9tXXM
	UTaLhOeOAzQ3yvwS0E6+9jiPlYAfGXp7G9N+YEjBlMKeHLoe6JVyqlIbNa3S9Dg+HJu6/JJ5HhPBR
	KG31tIC6cnaystIYdXIB0o7D1NDSOkAP6fMTD4ZxOGGoqDozmKRsqN4V1Ojak+gtCFGxXL3FQ2hCZ
	svJfZ+/dZpe6YFkYBkK7uXdCJre0HSHKLY1HyYnCAR4DGFFSJ4JftaqrxYS8X9rZYZ7R9vJ1/9VcO
	EvFiMwnITsyFhbJwtLxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhzMA-0006eh-4w; Mon, 01 Jul 2019 16:40:42 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhzLy-0006c0-90
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 16:40:31 +0000
Received: by mail-qk1-x744.google.com with SMTP id t8so11530940qkt.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 01 Jul 2019 09:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=37CyPBh/Ln3WVKOhFNfa84jM2YD/l5LXc6DsdKBmpvI=;
 b=vhbLiyBKSXIiEkwNiViS2uYwoOporT/uj8jmRzwCLb/a1ymhJ1/yeDRdq4q0bIWNPg
 eVEr7yfCD8d8wkOBXAF/OEwtEUuhrIK3w8NXL3undcMt9/sowVSysV/c1lQ0GSwJZVKX
 ORP32vmcfKZBRTs8/jgxhPs+SzSTCgexHxQM8EbQTx4hTqPcVVtupDMN4zfduBRfe1Op
 MlQmwehqkgputXk8ULCZZNBpw7f+iol6sV1T2QNzxPnOVzUBkTkd0GaXFjoqfeil3dtf
 b1xpyv4pMR/rE2gmf8BmBuAsEJRJ9UJO2C93DMy1aFSihFBOzY3mjEKC/BdYE9K3oHMz
 2Dag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=37CyPBh/Ln3WVKOhFNfa84jM2YD/l5LXc6DsdKBmpvI=;
 b=gLRZglx1iYNED5CBsemjyZA+DgqHBsqkccq+B9+vRkbh7Ly8/uJBSUgN/+Svmp0sYx
 rIRfmtn1pVYXR7h21nYZ1bvIl4hJkaEJ7YhtzACzaYtkfYAeCVCVzhr+HDiOaxVS0ZP1
 81RAs47IrPHxiJpD14+Rpn7p1hnQfTLTJTYRtn1Jik7LOpRPqttknkutI5zv9B6hZcPf
 Lo8tkbz29UhiQVI4mqXygr4AgLoQhjF/87q+LBv55sdEqMmaqE2jDx70AIf9LZl5r2AF
 7I8fNEOQg4ZUXDnVkSNGaHGAZefPKHnyQDFDDjk1i7mbux/OwwmwKS1Eb94CwWVmyfMc
 rQSg==
X-Gm-Message-State: APjAAAWpwEXUuGB6c5p+PIOmxPPfPPfC2j5P5VoLR9PewFAdF74wA467
 uCMyb6R2FbjqC0QVrVAIAG3XJNdA
X-Google-Smtp-Source: APXvYqzI3gUfA78aTMqR94QQkzDLK+FjlJ2281LTSEhi+kp6lClDiHgGl9iBoAHRGj2Nz9mS8H/hJQ==
X-Received: by 2002:ae9:c108:: with SMTP id z8mr20301619qki.57.1561999227662; 
 Mon, 01 Jul 2019 09:40:27 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id 70sm4780910qkj.118.2019.07.01.09.40.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 09:40:26 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  1 Jul 2019 13:39:58 -0300
Message-Id: <20190701164002.13915-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_094030_356348_9409CF09 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 0/3] wolfssl update
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

This series starts with an update to version 3.15.7, which includes a
security fix, and should be cherry-picked to 19.07.  I'm not
cherry-picking it to 18.06 because it changes ABI, and it would cause
package breakage because 18.06 is not ABI version-aware.

I've increased the FP_MAX_BITS parameter to 8192, to allow usage of
4096-bit RSA keys.  Otherwise it would fail to verify many CA
certificates that use 4096-bit keys, including Microsoft's.

Update master to 4.0.0.  This version adds support to TLS 1.3, hardware
acceleration using /dev/crypto and AF_ALG.  The features were added in
3.15.7, but only enabled here in 4.0.0.

Many of the current build options were not effective, they were always
built into the library because of an unconditional --enable-stunnel
parameter to configure, so they can be removed.  Since hostapd selected
some of these options, they are being removed there as well.  The
hostapd change includes the removal of the selection of the library
itself, allowing libwolfssl to be built as a module when hostapd depends
on it, and is built as a module.

I've ensured dependent packages are successfully built with this
version, opening a couple of PRs in the packages feed.  They had been
broken for a while now, which makes me wonder how many people are
actually using wolfssl today.  Nonetheless, a TLS library supporting hw
crypto acceleration and TLS 1.3 under 300KB seems interesting.

The library was run-tested on WRT-3200ACM using uhttpd, uclient-fetch,
and curl with different build options, turning them on one by one
cumulatively.  The size varied from 227K with all options off, to 312K
with all options on, and defaults to 297K.

Enabling hardware acelleration and AES-CCM at the same time results in a
build failure, which dents my confidence.  Nonetheless, uhttpd connects
without a problem, and I can confirm /dev/crypto or AF_ALG sockets open.

The package currently lacks a maintainer, so I've added myself.

--
Changelog:
v1->v2:

* Increased FP_MAX_BITS to allow 4096-bit RSA keys.
* Update master to 4.0.0

Eneas U de Queiroz (3):
  wolfssl: update to 3.15.7, fix Makefile
  wolfssl: update to 4.0.0-stable
  hostapd: adjust removed wolfssl options

 package/libs/wolfssl/Config.in                |  51 ++++---
 package/libs/wolfssl/Makefile                 | 124 +++++-------------
 .../patches/100-disable-hardening-check.patch |   4 +-
 .../101-AR-flags-configure-update.patch       |  23 ----
 .../900-remove-broken-autoconf-macros.patch   |   2 +-
 package/network/services/hostapd/Config.in    |   4 -
 6 files changed, 70 insertions(+), 138 deletions(-)
 delete mode 100644 package/libs/wolfssl/patches/101-AR-flags-configure-update.patch


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
