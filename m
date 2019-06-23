Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7334FE32
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Jun 2019 23:53:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Taj/7suc90UYK+Yq230CSuDqXBcEaxwf52iO6vewGE=; b=jkA3m1xVgVbPCt
	tTj2+GfwTfkwYkC4/9flOOlVENWAJKdpV6Ee0RYgxi7vy1RNalQni6NqWq+/dU7UMsGCdeUkXFP/r
	Rfn23grVoLdF7X5awtFZ2Bp/y7XRhu1ZDdzc6kKni9JxNzuSQt1cXfW0L0DsBRCmjJwpPFu2MkQvr
	RrtKqUPR6fc7fv99Q7c2Zo04Zhgym0uN8VJjQVoVDXAK+p8uj5IYRKk2F8W8J1nMJv1UklWpfDUmp
	8hrMFKaPF8IbOc89WxMezuxzqF0dmDjSwf4R4VL0g9ZqQyr0/Sg9E99jcx5UqLQQMJvmfwafm+ZqT
	0Qxa6Zl3YUUBFY86z5Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfAPa-0002ur-4L; Sun, 23 Jun 2019 21:52:34 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfAPH-0002uW-Ur
 for openwrt-devel@lists.openwrt.org; Sun, 23 Jun 2019 21:52:17 +0000
Received: by mail-pl1-x634.google.com with SMTP id g4so5714425plb.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 23 Jun 2019 14:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=6YxULxJTJXoN9/TiIXj0eutN762yUd8sYCcCBE3aD+8=;
 b=ZW2e4rD/5fzOWghIJu5ZJJTUTqAJV8PK1gB3m5cPpP5BpFoHcS3hohSoCRPtmvZ7IO
 WEQ1n8isGNo4N2pG4nnSY1gzxTmi95NwegwkTVBxI8enJbkHTy330+jvhFK3RuX40/2t
 JjtZseXV70JUwhhHjW+TqxtiqZs/qox/vhF/Ebqd6OTKNdUGGVL2DEnRcMOH2GmBCtan
 sBDfcW52Ti3d5lctXp2H7yGZXdikdrUdwcynDqhv6KYkBksmiRmgkCrtyrdFTecNyiwq
 xxuu9O/Sh12YHoYmSb7matOiGyKsDM4KkC0g9dsDQ0i02gdRsw14T/d9joeCGohVvvHa
 7eIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=6YxULxJTJXoN9/TiIXj0eutN762yUd8sYCcCBE3aD+8=;
 b=AzmQnx+KHBA4s6dGlHGufItztUbXO19jMJyIk1C2/97Om8bixv3GCpRRHXndPag8ZF
 uBz5Byc28/mZBnUrNEDrMafJ5Mf+7o0Y7z45Ke2knynYECVYu3gTl7O7ojUCdnK/Hc9Z
 H80uZf4VQdnW5iAzKEAnFVUAXUOe0owASfuObCiOA4aYwt1nx7uloU1+QE8IJ/GvS01F
 WWyo4x0hRCOi70DXKn5PdLxv0r3FEePdfiSO1SaRlD2sdxYeVWmM5kr99m3tgYMv49g/
 39jILzFM6jS727wtqha2NZfCTDsKd+cr9O2nyvMrgTRepeCeXiwhZThnsFqgj46CG/4S
 fYnw==
X-Gm-Message-State: APjAAAVAY19xA+mWZYQpIgsvDg7gfQNyRUggQcf3XmCK3kBYf/mVv7sI
 WOqGjjp/fH3A70AXt4lCjeQAqZOI
X-Google-Smtp-Source: APXvYqwlSLRmI0AUplr6ua9lLHn7rblfH3AaLN9IXc1SmVnibTzAXlGuHKbjz3bmlYp6dWuif+7VRA==
X-Received: by 2002:a17:902:9689:: with SMTP id
 n9mr48428248plp.241.1561326732100; 
 Sun, 23 Jun 2019 14:52:12 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id y12sm10641776pfn.187.2019.06.23.14.52.11
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 14:52:11 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 23 Jun 2019 14:52:10 -0700
Message-Id: <20190623215210.287-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_145216_021507_9F3A1359 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:634 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ugps: Fix compilation under 64-bit
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

strlen returns size_t, not int.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 nmea.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/nmea.c b/nmea.c
index 42be71e..7d75ab8 100644
--- a/nmea.c
+++ b/nmea.c
@@ -118,7 +118,7 @@ nmea_rmc_cb(void)
 	}
 
 	if (strlen(nmea_params[3].str) < 9 || strlen(nmea_params[5].str) < 10) {
-		ERROR("lat/lng have invalid string length %d<9, %d<10\n",
+		ERROR("lat/lng have invalid string length %zu<9, %zu<10\n",
 		       strlen(nmea_params[3].str), strlen(nmea_params[5].str));
 	} else {
 		float minutes;
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
