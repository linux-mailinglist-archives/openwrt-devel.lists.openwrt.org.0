Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C847413CC19
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 19:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7mHt9nTNC2rIbWaMwq1iVAFAG1Iag/+uC4YvlcO49co=; b=bRBX3B7BKagh2j
	HAGZTMCR1a0U3ZKlRv28aBepbvUarcSODjW2M4hKVUgdLUn4EWWtBTUFlpHKFc1lSkxim2gfD2Lfj
	nmWFoknZ8bseO9/0YyTsmbMIZuVK6hTUw9UdwEXGgpFggNRj5WDKhgoSwyNNqGm3yo3XuoN2HWDRo
	/w9A/1OmZeExYJh7S1rj0jQyKm1uh/tcii7a9rU1rsTyk6PRVDWte1LNBbmFl8EfezuXlbwCYn+on
	b5bbYHPYhWoJpfhvxYRtWS3iLeRRA5wiArETPzy6J7uwpHCxFkmJ91txud1bZwjJ+qi/XPEYRKXAT
	7uhPvvTfxdLmA9sK4mNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnP9-0005qd-E3; Wed, 15 Jan 2020 18:28:35 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnP1-0005pa-Ph
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 18:28:29 +0000
Received: by mail-qk1-x744.google.com with SMTP id a203so16614180qkc.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 Jan 2020 10:28:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GbWIHL4f6Hz0ptrP9aZCBM2GQsnWpE8TOG18TjNxUO8=;
 b=VojdaIW5k9IdEQKXo5j4tcXL+2eSMKXX6tHXpEdolHEv7SMj5n1wV1eUVHPHoaSuOq
 1k7rjEDLGsp5y41hM2luUPWX2IjfAq6ZP7bt6zWLfchdZ/8R/1ZK6lOaWVoBec5YYwlR
 pOyW87NWztqrrkXiYrhEaf6DzrgN8GsXo49wQDo8hfHRdzKFg/6PHEy3xAVBeUCGDuYw
 fBnbrDc5/MX5tT+gWS2T2U6p4cXBMcSVHw09ooadlI+FqFEgHTQtkzz/fdxH9coyVmR/
 QCeFoMOdVQcx1LWzQa4W3vfpxuYqrdE6E6y71oXfIsCJo+UNNeO0XirWuaGIfRDSZcrj
 /iOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GbWIHL4f6Hz0ptrP9aZCBM2GQsnWpE8TOG18TjNxUO8=;
 b=A9Im3eFLQZtAM1xHbSTU6IKq6GjVCLi5/YXY/S1lQObSWqj6wl8BnHtIDWE9IA/Qk4
 IjFZ2PkyndE/8GI9V5w8SWFsdOlTEwXtC+Wu6/RVFK61DsKjwKipsaxTPGhKuAm24P8l
 5eg93J4jKzC539gfWlm5LO1UY/O1uAo1hQnM7A+F43xFPY1cTC20+Sfssnf+0yYQzJq6
 lxV7ewoiMfvpplQNv4R+As0pAAR3djM7MKfyYpmRnGcb0d+0tRxbZl73rvdAsBPi44DW
 jF52DTaDTseSiHuOTmF8O3d9x5sk9Gqn7+OA3bhuf7kF0nuUhP4q3jBaZFC8hdDnU8wi
 1ssw==
X-Gm-Message-State: APjAAAUghNhVjM1txymZanXRm9jnOBDguOtAYOpHyVal3mntml/JMsvy
 sBwpavV/+fV6hUhBDhJKvXXhzeKV
X-Google-Smtp-Source: APXvYqxsdASzKZbHRk0vAJOb6eAIyREh0AQOD8P5A9yxWxwt63QouhfDnPQGUgAkB4en7cvyg0+ehg==
X-Received: by 2002:a37:a256:: with SMTP id l83mr29071394qke.252.1579112905966; 
 Wed, 15 Jan 2020 10:28:25 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id n19sm8684031qkn.52.2020.01.15.10.28.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 10:28:25 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 Jan 2020 15:28:05 -0300
Message-Id: <20200115182805.14907-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_102827_833466_BA8F34A2 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] cryptodev-linux: remove DEFAULT redefinition
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>, Jo-Philip Wich <jow@mein.io>,
 Ansuel Smith <ansuelsmth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The 'DEFAULT:=m if ALL' line prevents the phase1 buildbots from building
the package, and users from downloading it, since they use 'ALL_KMODS=y'
but 'ALL' is not set.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
--
This was reported here: https://github.com/openwrt/packages/issues/10987

This should be cherry-picked to openwrt-19.07 as well. 

Note that in 18.06, to actually be able to use cryptodev, you'd have to
custom-build openssl (or gnutls), since the engine was always built into
the main library.  Therefore there's little benefit in applying this
patch.  From 19.07, the openssl devcrypto engine is built into a
separate package, which has kmod-cryptodev as a dependency.

It was compile/behavior-tested on mvebu and using the ramips-mt7620 SDK.

I decided not to bump PKG_RELEASE, since this does not change the
package, just whether it gets built or not.

diff --git a/package/kernel/cryptodev-linux/Makefile b/package/kernel/cryptodev-linux/Makefile
index 2a8890286d..9bea63ebd1 100644
--- a/package/kernel/cryptodev-linux/Makefile
+++ b/package/kernel/cryptodev-linux/Makefile
@@ -27,7 +27,6 @@ include $(INCLUDE_DIR)/package.mk
 
 define KernelPackage/cryptodev
   SUBMENU:=Cryptographic API modules
-  DEFAULT:=m if ALL
   TITLE:=Driver for cryptographic acceleration
   URL:=http://cryptodev-linux.org/
   VERSION:=$(LINUX_VERSION)+$(PKG_VERSION)-$(BOARD)-$(PKG_RELEASE)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
