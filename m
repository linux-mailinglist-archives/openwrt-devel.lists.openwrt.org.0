Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689A49176D
	for <lists+openwrt-devel@lfdr.de>; Sun, 18 Aug 2019 17:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/1Xp5tqMKbjDalTUpLKtk5Qu5CuiHhNmiD3mCt5ung4=; b=FMcJ1zXtC/OQNA
	Mi6SVESkABZAr19t1G1+3MDu2h8PRU3/7lR8V7o2SX0+jRr5VTgFlT7sdz9BoWlmbzZFzdRfnUCCP
	QVwGKmyH9CqYCaZUtWWgd7IntJfuCce/e+RcpQWJHWQIP1BYMnK3Sf8HN4U1k8Xry9SPfVZx1z9qc
	DIIJ6eX/Yd+nSVhb9TeITpd/zMUT8UmhbRBmi490C/0F4bOLVA0fOlpxU0SOsLs3ZcS6z1jEvtf9p
	1Cs2xnFFkxtafSQqLT1J3eA9Mgyxr3Bc5dKYXhaIa+WWElOJiFSz1Vi+sY8hhlfShVXCTthJ9L7n8
	ueZqnaz14NJnNeMBiMww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzMga-00042O-4A; Sun, 18 Aug 2019 15:01:36 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzMfT-00040V-Pr
 for openwrt-devel@lists.openwrt.org; Sun, 18 Aug 2019 15:00:29 +0000
Received: by mail-qt1-x842.google.com with SMTP id 44so11383144qtg.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 18 Aug 2019 08:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5eTVtFT1JF/tBiYTutbdicFw3+PSmWbvAJW9pH+ons8=;
 b=FaG4vx2whRjlvsJwYJpgZyPx3VT36H3zJYfR515b1ocstpMw7fGgEfJ90wSgQLQBR2
 psQ8Pa3+dZm9BvXlOxOv54gsgALRDNDuXUg2pezJeovAnL0CdsGbu05C1b/Tyv4gORgs
 /fG21hFc1/kXFXA5daM+bP5C3ncMNUDztIhWLpCDOhrJlQD+7s132E/IGokACt7+QOW9
 E/+r2YjYHr0vxCPw9P1Ogc7Pj0zJZCQqj9TOJPS6cI4zFMklTuyHubEEefDb8liawbba
 XpunLvaC4G8bPw14dihHBDICih5887U3GihHA/fGpsix24nJwu4bV7nlgcOqld48Uc5S
 NRRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5eTVtFT1JF/tBiYTutbdicFw3+PSmWbvAJW9pH+ons8=;
 b=unt3GSOYPvz6faUiivBgIDuTU7KS3vdbGaA0oBDwG2JcSRQHddQmOPpu5t4Yji5wTF
 1xHqu0n5K9/2S7Im2yHH/MxxwM5w8rYUC6705N9YQt3Hz71xRNBJGyMlx+CRkZLt1UtM
 bk+FivDLM4/hgeH/l7doJAg3ptBn/htIHs/g/NHod3ZiKLpsaQ+eEG35q0kWBrhCKzrU
 r8YtywYIFtPRzFdGkjakFHE+3IeVs9B+tS9hkDebOxM3XK8wl9FQfcQIHQ5SBVtKgQaO
 CjnLvfjMKRb67/7U5FcAJPtvYSaeJH1oBX5IwXxTeyDkI1qVYHeyLm+H057+xi2QTW1H
 Nzuw==
X-Gm-Message-State: APjAAAXH6V/l17Q9fQ5oRbUXQ9sqngQzwplcMXtjcaioK5yRU43jluCU
 C6Yvqrj43FX1FEmcWUeIvwObWTrY
X-Google-Smtp-Source: APXvYqywc6AYopjzBq3Exb7Cw6GAYOlOpgrCA+4ZaFgajQ1uNkeEeETQ87PrDPKAaCBXWZ+WTdUzbg==
X-Received: by 2002:ac8:549:: with SMTP id c9mr17249173qth.223.1566140426007; 
 Sun, 18 Aug 2019 08:00:26 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.43.184])
 by smtp.gmail.com with ESMTPSA id g24sm7187319qtc.38.2019.08.18.08.00.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2019 08:00:25 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 18 Aug 2019 10:59:11 -0400
Message-Id: <20190818145911.28891-1-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_080027_864126_438C9210 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] u-boot.mk: use openwrt url instead of lede
 project
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
Cc: Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The LEDE URL is automatically redirected to the OpenWRT one,
returning an HTTP 301 code (Moved Permanently).

Also, use https, as indicated by the redirect.

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---
 include/u-boot.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/u-boot.mk b/include/u-boot.mk
index 26e1685b8e..02e37d0f4c 100644
--- a/include/u-boot.mk
+++ b/include/u-boot.mk
@@ -3,7 +3,7 @@ PKG_NAME ?= u-boot
 ifndef PKG_SOURCE_PROTO
 PKG_SOURCE = $(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL = \
-	http://sources.lede-project.org \
+	https://sources.openwrt.org \
 	ftp://ftp.denx.de/pub/u-boot
 endif
 
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
