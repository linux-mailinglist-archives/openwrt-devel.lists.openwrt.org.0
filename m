Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F1B194BE7
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 00:00:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YwfKAj2NFDbs33QjLznockZPpLP2ykgEe4Po3bJRSAY=; b=IKgNIZaHbUbilM
	DhkIYjzrwBqczvhytW4lH9No01SDrGRLwnEVhmCz1R5iTxQN7TqhT+V3yM9BFkrETggRD7CfQe7Nw
	czQ7QFDAIHR6M3tfOVFqXgC0evwd99VJJ7nmhEMqO7d1usRkD9XdZV8xL2T5dTBA98BlZNYgrbsm8
	KfwlK3hHLFl7BpY+72RKqLuzEP8VG08n6AQOk1MaZezYgIB2nQ9DrO/JCwK4L0W7KtSP4P9nOYpCy
	9P+bVHx5N9RhWkItGZV8rsO0PE+e18l0C3nLkW+Ub/6diKU2e7kepBDso68+ocH6kZrvNuiirxfXz
	QV68kVkIoxM3yN8owEoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHbUJ-0001Y8-9y; Thu, 26 Mar 2020 23:00:35 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbUE-0001Xr-6e
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 23:00:31 +0000
Received: by mail-pj1-x1041.google.com with SMTP id np9so3081020pjb.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 16:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HWybWGQSdc32yiBvJUTWxLC+45/IHxy0ZPRrxL7xg9I=;
 b=cG8qItNBMF0O/hXlzK3mGOTsV6r05O2rwApipjRA+F8if9AcHAee3EgNE9Oit1dWEI
 pSn+FlrNr/D9A4yXU25cZ+8jMm5ppuwnJ0dQyIArHqXIKrqmua9B8Kih2GLr+w34fX3p
 jG7zTiCEk+rNQW7V+OCVSBtzz4vyZzc4KL82zaoFAPNuDwgKDfGP+ynuwY0RhGcLBzTi
 v2hPhlWHGDigD+Ku6kXwUNwrD9KkCqEdHy0BSBO8z0+amunXicGciuf/XETC2Ril4UJI
 3DHXqQrk42KNUglAoFu5SPiXibzooqHPmRWkEHLbgqJ0GMRDOE/7aPD4UKQAT/XHRe6/
 inwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HWybWGQSdc32yiBvJUTWxLC+45/IHxy0ZPRrxL7xg9I=;
 b=uE461EJ0apDSeJiNCItgcAJ3i34863tLbhVA4LTrNGtiiDxd9TuXmsXGNPhTaf4jb7
 oH+xuA9nlotRL/vfVmIktt06KfVSnoV8LqPDlGiI/4iEEq377BieXHa2OkQXvvwMzvpn
 V03rOuHqdccqBntaxtLCYe3o2O4yfTpQKEg0B7fPx3cspyq0+7iYZSAlJBy9zH+uNS+u
 DFSACJHKipanrJr/Z+bp8qZfvN6zirN0FPggiMfGd8HEd++cu3+9jlYaxCpq5bwLVJbi
 pL5FsD/eLkPBEEBOctk8GmSjXjJQ5Fce+DEInbpEbxDN2OdVQpoWBfA9NqUtkzOWjnPj
 Hgkg==
X-Gm-Message-State: ANhLgQ0xUKk2qT6LCw3bo0G7Taco+Fp/uiYvF6RZUtxs9TLLXQ42hKtw
 KQAG3erT7a+MaLLdP2aWs7sldO4G8Hg=
X-Google-Smtp-Source: ADFU+vuV9dO2TKk/wg6bejfGgGScnbEBZUHyeNzru+dVacVF+6FOgH94je3q6WKL8fL0slWu0Ot1hw==
X-Received: by 2002:a17:90b:4910:: with SMTP id
 kr16mr2576900pjb.142.1585263629288; 
 Thu, 26 Mar 2020 16:00:29 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id i124sm2551844pfg.14.2020.03.26.16.00.28
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 16:00:28 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Mar 2020 16:00:27 -0700
Message-Id: <20200326230027.3771-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_160030_243653_684173FC 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] umdns: fix 64-bit time format string
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

Fixes compilation under musl 1.2.0

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 service.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/service.c b/service.c
index 97b6f91..2a7c28f 100644
--- a/service.c
+++ b/service.c
@@ -122,7 +122,7 @@ service_timeout(struct service *s)
 	time_t t = monotonic_time();
 
 	if (t - s->t <= TOUT_LOOKUP) {
-		DBG(2, "t=%lu, s->t=%lu, t - s->t = %lu\n", t, s->t, t - s->t);
+		DBG(2, "t=" PRId64 ", s->t=" PRId64 ", t - s->t = " PRId64  "\n", (int64_t)t, (int64_t)s->t, (int64_t)(t - s->t));
 		return 0;
 	}
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
