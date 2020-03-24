Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C072C191D95
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 00:34:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IZbBRzsZqyk46zqN6/uaQs04joH+jg24LP8hisfb2J8=; b=E0ulj08CrNl21v
	KjzXuV22YZc9THa2kAyxwn2eHdg+Xugegd1gWqWcn8KigJBSlQ8yiphzts5byG7peW5F4OLmKoptR
	AgaGAuQD51zhc9oXw6TXB6swj5I+1ZcVe840vKe3TJlTJO2vWZEtXtUnOpELnj3G1Dm5AqjQRBj4Y
	1vTExePBfEQtKSzb8sKqLQBYrxWaAltbCJrdS4tI+1EMgkMfodvbe38uSyIZPcsXY3HbvODezdndB
	YpnxAX0vEuxKVG8dDEtITVPKicsugYe5VO81M0CQ5raG/eipyhPUP5uNnTXzhKWgVSgJxwxMfNB59
	JcO6FwnS/iCClZtpFKlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGt3a-0007OF-Qs; Tue, 24 Mar 2020 23:34:02 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGt3V-0007Nt-1c
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 23:33:58 +0000
Received: by mail-lj1-x232.google.com with SMTP id t17so507064ljc.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 16:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uK7r6WyoQf9xImaYjMWmud5PHsooggyeeKWWvFAod60=;
 b=meMeHyn+pu1yFdOarc+SO1lZVdUwu/AgZ47b50kRyFmlPEZKGDeTIw3DBw4S584HSq
 CRfh7fz6dBKeFp5yyoFMyAYdpJAUx0z1/7u/R1nK2FvcjasSY8Cf2zeQyjJiRskTXZi0
 xK2+koVCuSKhBdH0HxwYG/WlyrhXdjDBFolXd5RfT110w061tGY+J6O9wuEGd6rc1+IF
 Ou3XGHR7vRE+YSAC1cu1dfXj6zPL/mdPXQV8rHyscpWiMtxdGlCSvwZCaV79Mt6sClK+
 cD+R88SbwwLSM6dJWCh8V+8nInnG1jIVtA8b6ZxM3FIQ4J/wRBIe2evMvtL6sbQry5zM
 FqJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uK7r6WyoQf9xImaYjMWmud5PHsooggyeeKWWvFAod60=;
 b=M7b2Op8OFGYt7ZAsA9NuI+inv6oqvkx5lmjDpVCpEyrANKsrlADRtPSydkwGMil6BE
 VQo5SHz+r73xLtf6SoSCQ+Q8QK1VVldxrHGNPJx4RZ2nBZGRjac/JRKnAJ8qROS1tlP4
 yy/0JDieiF42o03YM84lWvb9LU8kmvppdg2Bfeza+yp8HnKWAk7jrmWKjA5TmvKJG8Eb
 AAi7F2oVYp8MCjqvV1WlsM97Mwa6MibHu+64HfONp9ObJon9siyF27wnMsNCEcT1MEuC
 k9u09lyUSajLfvFYyOG+YW1ahLpTF9jzvzhXJODYOt3dcmvPtGdzTnnBvCtGqthLG4aI
 U4Wg==
X-Gm-Message-State: AGi0PubVvokIM286X5xe+XDDzsKDxdcCqGxOgiBAMb+okQ91qL2165aA
 40WIjwpHCwe6g15Vdmc4ZmaiF7UY
X-Google-Smtp-Source: APiQypJ+tbwRpjWkBzi3vQO2FDizNq1I9r84PRu+R8zUErlkrjdQtRFibdBINQlRoCP4pfNDVoue6w==
X-Received: by 2002:a05:651c:106:: with SMTP id
 a6mr104827ljb.143.1585092834345; 
 Tue, 24 Mar 2020 16:33:54 -0700 (PDT)
Received: from localhost.localdomain (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id j21sm10497851lji.93.2020.03.24.16.33.53
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 16:33:53 -0700 (PDT)
From: Piotr Dymacz <pepe2k@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Mar 2020 00:33:43 +0100
Message-Id: <20200324233343.27749-1-pepe2k@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_163357_086290_C4DFE601 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] target.mk: enable iwinfo by default with
 any wpad variant
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

There are currently 7 variants of 'wpad' package but 'iwinfo' is
included by default only if 'wpad', 'wpad-{basic,mini}' or 'nas'
packages are included in {DEVICE,DEFAULT}_PACKAGES. Use 'wpad-*'
pattern to include 'iwinfo' with any 'wpad' variant.

Signed-off-by: Piotr Dymacz <pepe2k@gmail.com>
---
 include/target.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/target.mk b/include/target.mk
index 9bd4c14936..004db1f45b 100644
--- a/include/target.mk
+++ b/include/target.mk
@@ -55,7 +55,7 @@ endif
 DEFAULT_PACKAGES += $(DEFAULT_PACKAGES.$(DEVICE_TYPE))
 
 filter_packages = $(filter-out -% $(patsubst -%,%,$(filter -%,$(1))),$(1))
-extra_packages = $(if $(filter wpad-mini wpad-basic wpad nas,$(1)),iwinfo)
+extra_packages = $(if $(filter wpad wpad-% nas,$(1)),iwinfo)
 
 define ProfileDefault
   NAME:=
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
