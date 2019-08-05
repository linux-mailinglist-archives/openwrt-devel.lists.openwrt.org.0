Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA02F823DF
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 19:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zN+joj6Z/HHzOGOcreYV4VF8Nbmi1fLRw4UBgXh43wU=; b=hzR832k4RMNDLu
	sDFAbRd7CGgFMoY/EO/EJfymTbS4ZxD6K3ZxPBIDTe6RPrfykEIeFcpY3pXw+WFQ4p+vmF+Svyyuw
	VmCsmSMPiGAXFt/oFCK5Cxq8Mm+xXDHQn6iWf3MT51bAHv0XOzY4hVN1ACqsSG86r9zDXZnFH1A2N
	282Xk6Y6RGM8iA+movp+YAgW1rQjWtQlxtHfDr2qFcqmgiGQTYTXAejj7eEB3NHXQiMh23bUpvZiP
	lrlVHiQrKh0KcuE3vtUnQgx/jrt8MDwII8xuQdRoPia0szIMD2cznCgbTBAEqqMK05I+Hcb2vbhJP
	KKdVAWTqtM31WR4VkoQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huge6-0004x1-CW; Mon, 05 Aug 2019 17:19:42 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugdz-0004wW-7m
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 17:19:36 +0000
Received: by mail-qt1-x842.google.com with SMTP id x22so8301623qtp.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 10:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VA4mEFsoSFLkmx+MMCZmQx1P2hbjEqxypnaQv/GNoxI=;
 b=g1Sw5uAkecSp02D/HFiXrf7W7fwO6LmTOY4RvI6uUCe/IQqpd9dzJndOBsE4XdfshN
 E4AXWsoyuxff4XswP65K0t1CW51IPYGE/O4TFDrN/x0IkSOi/9YUUuiCcgEg3sf9OO6W
 4hrwXv1k2YnNvvWFg9p0aDjnFX6LP5Mqu9vzyIjlLjNWo4jaRN2uom7rCkdTvp8Vk29c
 3czoV0wK3cWrNVRUpk3wt1FImhvs73GLxFVYUKvydcyb30qO3JS8PoR963VB+CTD9GUM
 4Sni/W3KmmP5n1v0JwkJLg/stZV26OD5T5xUz7lB1pGHiMITAi+9mlrDtsvXM3fZHTQj
 olEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VA4mEFsoSFLkmx+MMCZmQx1P2hbjEqxypnaQv/GNoxI=;
 b=bUAT2okxH7j4IN892q3IYdRbHpZm3EsEr6ytWzmZsEfg2VQa0rkCce7kCT/W88guAD
 e05MDMGu5n6+PGDRecrXILRkkIPRl7fvdBIXB2v/WN80FK07oGRKcNs9U5xu4DEUDG+R
 65OW233kSlIdUMcbw21b6FCCBO3NGnphB4M8Viu81aO71PfzciTgaRTup2D2dx1KTTRS
 5Vsk4mfcPE/bXLNLwxfz9t8jNxcPwCUWqa1pFWk5+vOYz12zvdexGp6KC1G4pm2KnkA1
 tD2OogBG4lO8cHI4zZVugf4GbZr+O7KWj7jV5k5mS0D9AI2OV1U9BQWj7ixnEdKP1PPZ
 Z2Tg==
X-Gm-Message-State: APjAAAV9GGqXvooJnhBgbuA97I6pmAaW9Zqc7yuzj4fvZlzk0vOfUkMe
 /H3jigk+X+L8rp5MRYrDrXyad0Lsi2A=
X-Google-Smtp-Source: APXvYqwxXpC4I18I8RvwSQ2Due5+H15hlGm1julTaJZOXZ+LxEY82798b3KUdR5xBdRYOYZKA+CY8Q==
X-Received: by 2002:aed:254c:: with SMTP id
 w12mr111773613qtc.127.1565025573845; 
 Mon, 05 Aug 2019 10:19:33 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id j2sm38491728qtb.89.2019.08.05.10.19.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 10:19:33 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 14:19:20 -0300
Message-Id: <20190805171921.3995-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805171921.3995-1-cotequeiroz@gmail.com>
References: <20190805144758.3129-1-cotequeiroz@gmail.com>
 <20190805171921.3995-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_101935_274786_FE089D4F 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [RFC 18.06 PATCH 2/3] ustream-ssl: bump wolfssl
 variant
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

wolfssl changed ABI version.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/ustream-ssl/Makefile b/package/libs/ustream-ssl/Makefile
index 2ea5bf0bd5..c0fd281866 100644
--- a/package/libs/ustream-ssl/Makefile
+++ b/package/libs/ustream-ssl/Makefile
@@ -3,6 +3,15 @@ include $(TOPDIR)/rules.mk
 PKG_NAME:=ustream-ssl
 PKG_RELEASE:=1
 
+### NOTICE FOR THE NEXT VERSION/RELEASE BUMP.
+###
+# libustream-wolfssl currently has a different RELEASE than the rest of the libs.
+# This is temporary, and was done to avoid to needlessly upgrade the rest of the
+# variants.  So when the next update happen, things should get back to normal.
+# If this package gets a PKG_RELEASE bump, please use PKG_RELEASE:=3, and remove the
+# RELEASE:=2 line under libustream-wolfssl, as well as this notice.
+# If the VERSION/SOURCE_DATE gets updated, remove the notice and the RELEASE:=2 line.
+
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/ustream-ssl.git
 PKG_SOURCE_DATE:=2018-07-30
@@ -39,6 +48,9 @@ define Package/libustream-wolfssl
   $(Package/libustream/default)
   TITLE += (wolfssl)
   DEPENDS += +PACKAGE_libustream-wolfssl:libwolfssl
+####
+  RELEASE:=2
+####
   VARIANT:=wolfssl
 endef
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
