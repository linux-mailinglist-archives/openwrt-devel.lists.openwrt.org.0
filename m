Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A104EC065
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 10:18:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/a+Tx0ygvmLMnhrfJE0zCL6a8JZYn4lbzi5BL8PYGoo=; b=qqfbqbLVT/p2KI
	Tf9GkJ2EqY4uEBklEL6eVyPi+vtfMGaOQkumX3T0vUWt3T7qJzgO9y2aq72lnonQjN3x048TYAwDX
	Q1hetHgOxNspJUoh2MDU6XTB3OR7PNZMNv0EpPEVoKfMS7l4uMHleU1Q1LZQIPB9jwDmL4kF3SrZx
	Cd9NF7+Hrl1DTHvTEW3PSA4jIGoxpA0dpZ8Xu1WMj/t5ZKkJdBsTOJbdVMNMNQWfouPyHogPgQ7ea
	Qwnsmi2KCGI3Ix/PIKXUAdEkkh1XW6ZdtmGt8S3TGlq3J2CF4zP3LYVc5Gg7r8k6HKY0vpZajtJLk
	caLM9b93a8DwOT36kXKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQT4u-0005hS-Gh; Fri, 01 Nov 2019 09:18:44 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQT4n-0005gr-Fm
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 09:18:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572599912;
 bh=0D10Pl0Box/WFy/fTNLLrZU+6JlVImPwO0CFZ+nnrks=;
 h=X-UI-Sender-Class:Date:From:To:Subject;
 b=DzKd5D+B1PtINS5XFM1EFcMjFK1FRCCE3Fp1o3/KUZxRDM/Jo0vHh1k/Xum1PXv2y
 SWDhsEWEDD8Fg1HhuC0wbSpVuOuLqi/q8BN1ZJ3h5t70KfqQUQwPLj5MS2SsXTnoDt
 YUNbdBkDzjYbIyq8Ap1slwk8WKPxxfiy1GbeKQmo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.66.9]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MQMyZ-1idJ6H1fub-00MGyh for
 <openwrt-devel@lists.openwrt.org>; Fri, 01 Nov 2019 10:18:32 +0100
Date: Fri, 1 Nov 2019 10:18:30 +0100
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191101091829.GA16215@darth.lan>
MIME-Version: 1.0
Content-Disposition: inline
X-Provags-ID: V03:K1:8jp3m5jLpz5BnSGHsyUozwf3PRFMvVdx651nLeKhf6SfGzy8+VU
 +lL9vJp1GoY9Zp7IWvB9caGUyoB1pdFqAPujWdzKToxRmsvtCSrqHtRnqous+WU16KjoUzl
 tiYfmZ6dxg10EBF06oLxHj+S8Le8lF1hccBi9FpVNtBGb+BaO35IX34UnN8cNSn/RVxESvp
 cryZFkFzJkm1eXDvZt6kg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cF36gImIZOE=:rDsLo0bBShcnIT84KXurOd
 OAU5UPh3mR4B7CD7NwWXACmSLZTxVbPm7wrr9GEi95hBVzzW8waLxoPmttrxT/FGivyLvermM
 YQv7VS1+i2erHMlL6Uu5FgQbSM57JBvyALrbQ/EQIB9swtJJsOF75PGEQ8OfJ9qfjjdHxBllj
 FEKp56tT5TN04ZnP2HiXjW7yzgmF9V96Iuma/TAWMfMr2c3YtAg7haK/zN8uWPe37uQfnTrcP
 CBoO9wB5jYeF+/w5vjHB2EIHSuwKBgHhXGh54bB3mIvUy5AHcCuch/xFORXG/eAezy2kCLF43
 XU9FsWnz3aK0Jh8JlkEOPveoAh+kQYQjubYfbftn1Dy4fcsgUtLT4dMoiA5d1ZjMhgEEAW8Y4
 CMu2+D4FQWggs6BCjZZfW7neO2QZ4MaNoxJAWMUWzS8yhydY2yrD0x4WHI2dEr9vmcW7TuTnA
 KE2iSvqjSvl3VAf3z2FruKKB9YYwGBG/NHeR1j/75ot6Pm7zTvIPJ8zb0PE6F8RD3tOIV84e3
 I5+/FW6t9bJrH9fWwHP6zQgt9tKlcvRR7Hbscz4n+bCD3q6zHCHC9hm76ASso1j43MVIw6krL
 4xJqtRZ9I5Mt16hm0MSMB5V9vzy8Pt5dtzsndXSM2aN0pzXduDUkcD5dpwZudYCfIGiCqJ5yl
 lCwhJZpJrWbptTGb4w6KI/G2Y9kFdN7czugkay7AUgGOYeay+GVUN/x/VTzP5SR/TEVNdc2pW
 X885DG8fusJBzB5K2YInb0xNGnxVp3Hb8Yz8T8cs2i9GW/MJMMdd5EwAChQxw1DCjkw3n+vka
 2OyW042K3pCWeOh91WWaGHKVuJTcipUc87LHXiI+bPVyBXut1SQXmHykamFG4yUrukfB+vb5K
 9Pxf1vry7OSqVoI6n/bmFfHBQf9GOK9WIbZ4iiLP/xUFFV2bg3cN4bl4elFH31X91L9ogSuI7
 bgVx1PQVdts5d5Xl7lS+2Q8uCXd8e1byhmFba1vefLQlHd7fdk1IrHnLP0DvzE1c5+QtOI2v5
 tLhsxLdfTDwmp8RXGodiQDiVfXle0pgPyGig8LFS9dBBy76zMHSQcy5J0tQ17AdcO1PcDvpgw
 KGtsYwK5a4ko+3zwe6irRR+ylD1RVOcf8XOz0OH0N68HVCEqVPQynx+qq1lgTiGpl3IwzVxTj
 i6NyhB3KzteSX7/YY7BA9Y5gZh7HSuSDLH40ELq30oGbHkjDzH0HJW7hs3jH12bB1aN6JvOMX
 fPQZkVpT4nscZQpAqGJY4+zg0JEeDq5867BawCi1zFVeBlFWyf/+RVeQoFBE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_021837_858240_21324BFE 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] rules.mk: remove "$(STAGING_DIR)/include"
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

"$(STAGING_DIR)/include" was carried over from buildroot-ng to OpenWrt
in commit 60c1f0f64d23003a19a07d6b9638542130f6641d. buildroot has
dropped this directory a long time ago.

In OpenWrt the directory is still created by the PrepareStaging macro
and is part of the default TARGET_CPPFLAGS. But nothing at all installs
headers into this directory, nor should anything be installed under this
path.

Removing this directory from TARGET_CPPFLAGS will cut down the log noise
a bit. Not only will CPPFLAGS be shorter, there will be less warnings
set off by "-Wmissing-include-dirs" (or even failures when paired with
"-Werror"). After all the directory does not even _exist_ in the SDKs,
which are used on the build bots when building packages (see [1] and
[2]).

make[8]: Entering directory '/builder/shared-workdir/build/sdk/build_dir/target-aarch64_generic_musl/libmbim-1.20.0/src/common'
  CC       libmbim_common_la-mbim-common.lo
cc1: error: /builder/shared-workdir/build/sdk/staging_dir/target-aarch64_generic_musl/include: No such file or directory [-Werror=missing-include-dirs]
cc1: all warnings being treated as errors

[1] https://github.com/openwrt/packages/issues/10377
[2] https://github.com/openwrt/packages/pull/10378

Signed-off-by: Sebastian Kemper <sebastian_ml@gmx.net>
---
 rules.mk       | 2 +-
 tools/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/rules.mk b/rules.mk
index fbf42f725d..66ddea2883 100644
--- a/rules.mk
+++ b/rules.mk
@@ -174,7 +174,7 @@ TARGET_CFLAGS:=$(TARGET_OPTIMIZATION)$(if $(CONFIG_DEBUG), -g3) $(call qstrip,$(
 TARGET_CXXFLAGS = $(TARGET_CFLAGS)
 TARGET_ASFLAGS_DEFAULT = $(TARGET_CFLAGS)
 TARGET_ASFLAGS = $(TARGET_ASFLAGS_DEFAULT)
-TARGET_CPPFLAGS:=-I$(STAGING_DIR)/usr/include -I$(STAGING_DIR)/include
+TARGET_CPPFLAGS:=-I$(STAGING_DIR)/usr/include
 TARGET_LDFLAGS:=-L$(STAGING_DIR)/usr/lib -L$(STAGING_DIR)/lib
 ifneq ($(CONFIG_EXTERNAL_TOOLCHAIN),)
 LIBGCC_S_PATH=$(realpath $(wildcard $(call qstrip,$(CONFIG_LIBGCC_ROOT_DIR))/$(call qstrip,$(CONFIG_LIBGCC_FILE_SPEC))))
diff --git a/tools/Makefile b/tools/Makefile
index 23671cba91..2f57d25525 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -123,7 +123,7 @@ define PrepareStaging
 		$(if $(QUIET),,set -x;) \
 		mkdir -p "$$dir"; \
 		cd "$$dir"; \
-		mkdir -p bin lib include stamp; \
+		mkdir -p bin lib stamp; \
 	); done
 endef

--
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
