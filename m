Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841CD1691FD
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 23:04:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TZeu7IvwOiKCFmYvaVSEYt30Uf6eIDeuqj2fvYp6gt0=; b=dxmVCtEclGD77FYqS/bldZBPV7
	4uqESvLpCGSuAqVbVdqwx/4WCuvliU0Zuc9cT4XBuzjzJeS01X0XTMEQsi1H+UMt8ktfC9IGWPBFx
	+Q05Rzh16440fAGSdTI3isQdmsI6OJ3SckALhnXBZdUxLJuxQuNPyk7eImhXzHyGR9jsbIBXw9sHb
	bYfippiCtCyMpaJEFRURbF13LpCg+gA5W/Ui/DLBgBbFdtg2HodKZV+Vx4jj/f1yyeuu5lRwwS5oi
	VQFc4zrfmuKQXPKUjHXucm9f9l5hg3AKTc22hOc+0esIwJhGlYTAMBr1kGfGY+GoKsyC2VcGQKLns
	2edfwuyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ct9-00065k-Gt; Sat, 22 Feb 2020 22:04:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5cso-0005ti-TK
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 22:04:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id z3so5992917wru.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Feb 2020 14:04:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ATbkrEympUJEPHPka01P8vYUk59rA5p3qn95Hppm5z0=;
 b=nCitYFygBxkHH345GMon+M/W0PyQk/K0+qdHyCsSb73Ai2Ps3/F4LDScllrzYLP/eK
 yAb0Rt0wvWnBwb8QaMv2vH/WuONXn2TreFJ/9ev3gLJzE8ktYR10FvWfNN6Xu53vMscZ
 5AxhWICsUbThh+bb6FOGfeb648c5M0XnFzklRWrEmHa+aecCu1T1XuLEGTqN+T1tlpCc
 1uvzxIMXrfPkLeEKGdbxs0hrlEftlOHuxg560P8sv6x/Yt9UoFec7ALcQHuryDz2u2e5
 4V7HdAEFpiSPFOIPFbgELZzOgR/1xKU2ICk06BjQTG1INEjFVpYvC8RyVtxNjAafPV0N
 5gkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ATbkrEympUJEPHPka01P8vYUk59rA5p3qn95Hppm5z0=;
 b=b7NpNOlptEGqxWcE+Jjq3Esz3aUDDOnziAzREvD26kqqvhxmbX6lPPrML65MwulB/y
 eXoM27+x6zYn+pkpGBtIGW7ZNxI83ln22vlkgy34RdKhZpKzOAoHXtCmsxeN3Bw5HqEH
 URM55KUpuOf2EPsePMIv9xElfQ68JjPoKycMVOoXcgxgTv5ye9j6GmfquCJemcABseHK
 +h5TflOL4cDDvzVzAS1XzYXVq3wNrXZ9neZOviPVVEBGYVnFu6KCWPdN/1rRLnCsovBg
 Zjy2iK6uvOKyKniBULAhof4pRFHeSzCmFaZ3Lfd/1CXWWjoXw4tc1L1enXU0WBuTMJE1
 OewQ==
X-Gm-Message-State: APjAAAUv2AYnNJprXS2d2SS16X/z6KGLK+tsxqhwZzFImgrxlSGMM1HA
 jj2jKNb7CPrU6OwBdAPAjbFMzWHW
X-Google-Smtp-Source: APXvYqykMFsi9FjLKIvmRXLapIaxvKxfKKF/jkKTiZp7FLh0efBhSf1eUOdbfzbA1ljpHMmg+BGsxw==
X-Received: by 2002:adf:dcc2:: with SMTP id x2mr55754741wrm.24.1582409058275; 
 Sat, 22 Feb 2020 14:04:18 -0800 (PST)
Received: from pepe-notebook.office.nic.cz
 ([2001:1488:fffe:6:9023:eca:cef0:505c])
 by smtp.gmail.com with ESMTPSA id q6sm3413335wrf.67.2020.02.22.14.04.17
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 14:04:17 -0800 (PST)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Feb 2020 23:03:37 +0100
Message-Id: <20200222220337.23347-2-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200222220337.23347-1-pepe.schlehofer@gmail.com>
References: <20200222220337.23347-1-pepe.schlehofer@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_140422_941629_6F5136E0 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe.schlehofer[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] mbedtls: use correct SPDX License
 Identifier and add License file
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

License "GPL-2.0+" is deprecated License Identifier according to
SPDX License list [1]. The correct one is GPL-2.0-or-later.
While at it, also add the License file.

[1] https://spdx.org/licenses/

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 package/libs/mbedtls/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/libs/mbedtls/Makefile b/package/libs/mbedtls/Makefile
index ad1da70268..7ceb0dc4af 100644
--- a/package/libs/mbedtls/Makefile
+++ b/package/libs/mbedtls/Makefile
@@ -17,7 +17,8 @@ PKG_SOURCE_URL:=https://tls.mbed.org/download/
 PKG_HASH:=6ebdea6565c714f1315b9af6a802afb4b4e89976f7d5d2b15aa8028eb52e7d09
 
 PKG_BUILD_PARALLEL:=1
-PKG_LICENSE:=GPL-2.0+
+PKG_LICENSE:=GPL-2.0-or-later
+PKG_LICENSE_FILES:=gpl-2.0.txt
 PKG_CPE_ID:=cpe:/a:arm:mbed_tls
 
 PKG_CONFIG_DEPENDS:=CONFIG_LIBMBEDTLS_DEBUG_C
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
