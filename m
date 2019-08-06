Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B210282A1B
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 05:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pnHAI2R6Ay+7PWwiRiqQmytDZjjiWzKGuvPSVeJsj7Y=; b=dVLQkO+hAP9Hfo
	NBC4U/QuqVtfTuiutk+6QRgIWd35InM0WOn7zizon0yjHGTE+XXnFgckI8b5WsY6p3pyw4S1C82H6
	kZYL/gSLn1707xHrb6gZ6XOAbvARnTxrxcMcfvJxhVgVU5JOQzKc65Zpf3ufSf5s3nnIpXv2HdXOm
	n8PChpRK/Q/o+LfhOUVp42p5E5Ob+flR/3bAAJaDjtfY+HiVn73DSI0VFqbCNyCN4WpDfg54soJW2
	d+8XvIcCcM1n+3UvdZeZ/LSW4sAqydIAlTOZ7GrNOCUXDkrTS/CXkIGmMYC+3H3PGymCZn4mcG0kJ
	At662bCOOdR+J9qvWtdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huqSH-0007OK-I2; Tue, 06 Aug 2019 03:48:09 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huqSB-0007Nz-9C
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 03:48:04 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 207so76663817wma.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 20:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version;
 bh=PeGk28kUI6wxeBBv610zPd/FB+X4tPvC3jAwxTR/TzA=;
 b=XhmeegnSgESBMlKNOmRno8pWT4NoEBwWf5niZtnDDGlmtvN0VQBMLuZ09MrZ3u041D
 fXvfGofXMFSeZ7t+KKykJxEIZWPOqepWFM1yYGoDi8Yok5rXkbQe7E1MhXezdXok3OZb
 R2UBk9Ok6dmUmZZJJGTC4BM7RD0LpJNdPq9ouiHRVsOo7aooIX8hVpncJbkdHuLbZEVw
 yOTe4JL4RV49sQ0kVwN/RHoBKgrNCMPOANmsFT25VKO3Q5nPBq5V8TSIeoi0/sMTFqPM
 6NJPCesIUdZLzT/Ax+utSOClUAoq1TJpEYesnaRisQY5JEa+33ro5aDhbO3Vi3EuhPXF
 +AAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
 bh=PeGk28kUI6wxeBBv610zPd/FB+X4tPvC3jAwxTR/TzA=;
 b=tzzoFIuD7UJX6gLThg5fWqXbc1rQm9EWHG5Bdq2RgQ67i9u2OV2hBWmAaYT/lK0lkT
 RhU5alGpA89vq+KfmTo5X4AuV/IZ/LEiQTqn9ND0Z5rQISOlZiw8VNWzFaDh1o8vkons
 Gg0bOV1MvJnSkg2fjYQGLEQj2Qy489zAkMqgNBy7hdUT0X+TOWIfP3G994YznGgc9hBl
 pyK/QZSkkgI6shPAawCdfKwbIIvbvhlEwO34eSxv/jG08EL6US/GPrfR+R+/z6qNVTkf
 Igbf1B2f9qnKWo7Lb+MlXMBJHtVObCJRHHKh31xFd41wPDv6xxy1UFMPU5E4P+NAs/nK
 N3tg==
X-Gm-Message-State: APjAAAVpJVxGkaLY0ySq3HlREvzLyFkWEicfZ9v2XddnQ4cTldK5dEPn
 9JEfcq4Pk5iMIcG4irKsJCkdfjNC
X-Google-Smtp-Source: APXvYqyZM5cHOHJ8SietHk2/y9mc0IF57sVY3r47Bri0T/TRKUy2d84lZ5x4c3lHSOxpDkqNxGj7Pw==
X-Received: by 2002:a7b:cf32:: with SMTP id m18mr1612791wmg.27.1565063281409; 
 Mon, 05 Aug 2019 20:48:01 -0700 (PDT)
Received: from localhost.localdomain
 (host176-88-dynamic.45-79-r.retail.telecomitalia.it. [79.45.88.176])
 by smtp.gmail.com with ESMTPSA id q1sm66529705wmq.25.2019.08.05.20.48.00
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 20:48:00 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 9134c01a
 for <openwrt-devel@lists.openwrt.org>;
 Tue, 6 Aug 2019 03:47:58 +0000 (UTC)
Date: Tue, 6 Aug 2019 05:47:58 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: openwrt-devel@lists.openwrt.org
Message-ID: <alpine.LNX.2.21.99999.352.1908060546550.1955@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_204803_584958_F20A712A 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [Openwrt 19.07] brcm47xx build failure
 (xtables-addons)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

openwrt 19.07 repo @ a941d39460b67d2d21e86d9c73d3e9b099b2d7fb
"packages" feeds @ 52634db76f0ecaee4a298c19fc4934dd1dc838bc

Build fails due tu unknown linker flag.

Failure:
    LD [M]  /mnt/hdd/sdata/myfiles/openwrt/build_dir/target-mipsel_74kc_musl/linux-brcm47xx_mips74k/xtables-addons-2.14/extensions/LUA/xt_LUA.o
mipsel-openwrt-linux-musl-ld: unrecognized option '-specs=/mnt/hdd/sdata/myfiles/openwrt/include/hardened-ld-pie.specs'
mipsel-openwrt-linux-musl-ld: use the --help option for usage information
make[9]: *** [scripts/Makefile.build:572: /mnt/hdd/sdata/myfiles/openwrt/build_dir/target-mipsel_74kc_musl/linux-brcm47xx_mips74k/xtables-addons-2.14/extensions/LUA/xt_LUA.o] Error 1
make[8]: *** [scripts/Makefile.build:585: /mnt/hdd/sdata/myfiles/openwrt/build_dir/target-mipsel_74kc_musl/linux-brcm47xx_mips74k/xtables-addons-2.14/extensions/LUA] Error 2
make[7]: *** [Makefile:1532: _module_/mnt/hdd/sdata/myfiles/openwrt/build_dir/target-mipsel_74kc_musl/linux-brcm47xx_mips74k/xtables-addons-2.14/extensions] Error 2
make[7]: Leaving directory '/mnt/hdd/sdata/myfiles/openwrt/build_dir/target-mipsel_74kc_musl/linux-brcm47xx_mips74k/linux-4.14.134'
make[6]: *** [Makefile:461: modules] Error 2
make[6]: Leaving directory '/mnt/hdd/sdata/myfiles/openwrt/build_dir/target-mipsel_74kc_musl/linux-brcm47xx_mips74k/xtables-addons-2.14/extensions'
make[5]: *** [Makefile:495: all-recursive] Error 1
make[5]: Leaving directory '/mnt/hdd/sdata/myfiles/openwrt/build_dir/target-mipsel_74kc_musl/linux-brcm47xx_mips74k/xtables-addons-2.14'
make[4]: *** [Makefile:380: all] Error 2
make[4]: Leaving directory '/mnt/hdd/sdata/myfiles/openwrt/build_dir/target-mipsel_74kc_musl/linux-brcm47xx_mips74k/xtables-addons-2.14'
make[3]: *** [Makefile:158: /mnt/hdd/sdata/myfiles/openwrt/build_dir/target-mipsel_74kc_musl/linux-brcm47xx_mips74k/xtables-addons-2.14/.built] Error 2
make[3]: Leaving directory '/mnt/hdd/sdata/myfiles/openwrt/feeds/packages/net/xtables-addons'
time: package/feeds/packages/xtables-addons/compile#1.30#0.68#1.73
make[2]: *** [package/Makefile:109: package/feeds/packages/xtables-addons/compile] Error 2
make[2]: Leaving directory '/mnt/hdd/sdata/myfiles/openwrt'
make[1]: *** [package/Makefile:103: /mnt/hdd/sdata/myfiles/openwrt/staging_dir/target-mipsel_74kc_musl/stamp/.package_compile] Error 2
make[1]: Leaving directory '/mnt/hdd/sdata/myfiles/openwrt'
make: *** [/mnt/hdd/sdata/myfiles/openwrt/include/toplevel.mk:218: world] Error 2

Workaround: (yes, it's a hack)
/mnt/hdd/sdata/myfiles/openwrt/build_dir/target-mipsel_74kc_musl/linux-brcm47xx_mips74k/xtables-addons-2.14/extensions/Makefile
and remove things like
-specs=/mnt/hdd/sdata/myfiles/openwrt/include/hardened-ld-pie.specs

.config snippet:
# Hardening build options
#
CONFIG_PKG_CHECK_FORMAT_SECURITY=y
CONFIG_PKG_ASLR_PIE=y
CONFIG_PKG_CC_STACKPROTECTOR_NONE=y
# CONFIG_PKG_CC_STACKPROTECTOR_STRONG is not set
# CONFIG_KERNEL_CC_STACKPROTECTOR_NONE is not set
# CONFIG_KERNEL_CC_STACKPROTECTOR_REGULAR is not set
CONFIG_KERNEL_CC_STACKPROTECTOR_STRONG=y
CONFIG_KERNEL_STACKPROTECTOR=y
CONFIG_KERNEL_STACKPROTECTOR_STRONG=y
# CONFIG_PKG_FORTIFY_SOURCE_NONE is not set
CONFIG_PKG_FORTIFY_SOURCE_1=y
# CONFIG_PKG_FORTIFY_SOURCE_2 is not set
# CONFIG_PKG_RELRO_NONE is not set
# CONFIG_PKG_RELRO_PARTIAL is not set
CONFIG_PKG_RELRO_FULL=y
# CONFIG_DEVEL is not set
# CONFIG_BROKEN is not set
CONFIG_BINARY_FOLDER=""
CONFIG_DOWNLOAD_FOLDER=""
CONFIG_LOCALMIRROR=""
CONFIG_AUTOREBUILD=y
# CONFIG_AUTOREMOVE is not set
CONFIG_BUILD_SUFFIX=""
CONFIG_TARGET_ROOTFS_DIR=""
# CONFIG_CCACHE is not set
CONFIG_EXTERNAL_KERNEL_TREE=""
CONFIG_KERNEL_GIT_CLONE_URI=""
CONFIG_EXTRA_OPTIMIZATION="-fno-caller-saves -fno-plt"
CONFIG_TARGET_OPTIMIZATION="-Os -pipe -mno-branch-likely -mips32r2 -mtune=74kc"
CONFIG_SOFT_FLOAT=y
CONFIG_USE_MIPS16=y
# CONFIG_EXTRA_TARGET_ARCH is not set
CONFIG_EXTRA_BINUTILS_CONFIG_OPTIONS=""
CONFIG_EXTRA_GCC_CONFIG_OPTIONS=""
# CONFIG_GCC_DEFAULT_PIE is not set
# CONFIG_GCC_DEFAULT_SSP is not set
# CONFIG_SJLJ_EXCEPTIONS is not set
# CONFIG_INSTALL_GFORTRAN is not set
CONFIG_GDB=y
CONFIG_USE_MUSL=y
CONFIG_SSP_SUPPORT=y
CONFIG_BINUTILS_VERSION_2_31_1=y
CONFIG_BINUTILS_VERSION="2.31.1"
# CONFIG_GCC_USE_EMBEDDED_PATH_REMAP is not set

Any ideas?
Thanks!!

Enrico


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
