Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6654D1F5901
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 18:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l+YXj1Lpn+sh7/oAOG0VmdjffWqPX9lJAMT+TgJYo9Q=; b=fCKtulhGqvga/J
	kWJ2nDksbIgwu3zsedZMOaTcVPaamNEzORwR2n38BsD5rNgZ3HiW+EYQyEuvVSdrserIFBDRmFWww
	wuGhz4NFm95Co3AIIMnOlqZmGZ0xOqJNrLOdPuvBvz8InYIMD4G1+QMk3rGdMUPykqhfnvnT8MT1O
	woFVrjGyU5lmzNrA0FhSEeA47uSUuLeDycXtKNaI5/VlWBSKon/hwzc22lO+3nJIyL6Q5d2m7Oo3N
	vhGeq5NcDZ2fb43KHvKvDy0ZQ1/Vw163MRdnFBWtm8IfJA5JWZ4j30B5+nJRmk4ubLJDYs+kZCv9H
	fnBTeF/NAwmbR52ue6sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3Zp-0005Nn-VO; Wed, 10 Jun 2020 16:27:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3Zi-0005N9-L3
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 16:27:40 +0000
Received: by mail-wr1-x441.google.com with SMTP id t18so2981762wru.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 10 Jun 2020 09:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MbxYu4NrEhDmnY28x3JHUF31oVtY2p2Z9K605qqiplA=;
 b=Tc5PE+OxXQS59/ls4Xu+ZahyH7CH7yTziUBRnKXoSNEthwHAsOMRpYJ/xGeOju+CdN
 hELqjEa9SDEUqpg09gNO4giVnkLWEIBCuUPcwNScwnMky9D5gVjh/U75pv0Ihf5dhXU9
 OXMBaT//FWc2TaheryqPHJh2ab7trMNM3v3vk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MbxYu4NrEhDmnY28x3JHUF31oVtY2p2Z9K605qqiplA=;
 b=lEtGoKxNZbPbWrVrIoPbzvVZjGqSuaR4zbogPkPpRcroQPBSsGeL7bNN+sWrrxm7Fd
 HqdicbGwbNatSadb2SHf5Hl3468sia/StykJu766bnQmlvO1tHzPuZ7D53jdQzq56eKT
 8IjkXgumV8oH7xu7rIaN1c3bCbuQxJp60h4cpfQnl1V+hF8YyIIBFxcDmgewz36m4GwG
 nzaFCp8CZkpV9H6/S5+AX4n6gjKX5RFztu65YfwWGL2dk/gYAzPvjHh/4S+Ixfv2fEmC
 ZSdT/JmqAINbm1juoP3m7XC6JCy7NNteEn0VaMz+O57YKIJX+ugPSrML2dB4icMvbFKZ
 OtvA==
X-Gm-Message-State: AOAM532b8aOMRC33yT5HnX5igxi7nLeXoc16DPTQgzpRII5V3lq8mrOG
 OZkhsRypBFGX0DuAOBJEzpJ8oMgMFaQqcQ==
X-Google-Smtp-Source: ABdhPJwPa1Uo7T70uXE4RBgi5agYT+we27Ypoxx3GMtRG/cfyqYtEA0S3DeHviFj9+TET/lKlgdp1g==
X-Received: by 2002:a05:6000:1c8:: with SMTP id
 t8mr4584576wrx.200.1591806451837; 
 Wed, 10 Jun 2020 09:27:31 -0700 (PDT)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1227:c00::dc83])
 by smtp.gmail.com with ESMTPSA id j11sm404494wru.69.2020.06.10.09.27.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jun 2020 09:27:31 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 10 Jun 2020 17:27:27 +0100
Message-Id: <20200610162727.19344-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_092738_694179_6CFAECE2 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] odhcpd: remove bogus IPKG_INSTROOT reference
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
Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

IPKG_INSTROOT is only set under image builder and we won't be running
this script at build time either, so remove the reference before it gets
cargo-culted into other scripts.

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
 package/network/services/odhcpd/Makefile            | 2 +-
 package/network/services/odhcpd/files/odhcpd-update | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/odhcpd/Makefile b/package/network/services/odhcpd/Makefile
index 6510ce6c80..07d7d7d673 100644
--- a/package/network/services/odhcpd/Makefile
+++ b/package/network/services/odhcpd/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=odhcpd
-PKG_RELEASE:=3
+PKG_RELEASE:=4
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/odhcpd.git
diff --git a/package/network/services/odhcpd/files/odhcpd-update b/package/network/services/odhcpd/files/odhcpd-update
index 9bc7abcc1c..c1814e00b0 100755
--- a/package/network/services/odhcpd/files/odhcpd-update
+++ b/package/network/services/odhcpd/files/odhcpd-update
@@ -1,6 +1,6 @@
 #!/bin/sh
 # Make dnsmasq reread hostfile by sending SIGHUP signal
 
-. $IPKG_INSTROOT/lib/functions/procd.sh
+. /lib/functions/procd.sh
 
 procd_send_signal dnsmasq
-- 
2.24.3 (Apple Git-128)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
