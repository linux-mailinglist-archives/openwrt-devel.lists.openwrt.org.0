Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA2D193461
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 00:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R9+UMf0l1yj928HrH6x9mVFCkhpOm5Vmt6knTGw59Kg=; b=MbmL8BMgVawtw9
	1otvZPJQtImCjkBEFdvlV4WdmlYyTF2FpFnh+OdveZSsrrmtrKarLC5+StBAWyTYrLv+Uv7nRFOP5
	QjX7jFrG0Wl2pVMa2AgMZeu4uuBgaTDchVttlql4zhkq5xQxurEolXRimBrJXH0cf2oEEGkO1j6e0
	vW4LerImhlnWQtTDgo8sXsgBSH4LpZJpTc48KMEaJQ41TijfANjGDd/FPLCmkdD4XW4XKFal+GZIy
	fFc4ydIPPS4uklE7pRb3wOIib2UsDJSxRvTrz9xKHAF26zMeUgR/XwmczFKLxo0P8W4isaB8G+06t
	lP+WNj1lq6r+32BQVDaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHFFI-00065D-Br; Wed, 25 Mar 2020 23:15:36 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHFF9-00064t-V9
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 23:15:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id w3so1412382plz.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 16:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2AGCtYFRcaar4KJonnKjvti1kr9TUxKVIrXnEc2b1uc=;
 b=MYR0TsijERzHV5Ne4oifOxSELQ1Lwk2XYRB6yyKWuZZjTvGgO7uiQaOw0UxohU5m9Q
 Blr7SGSFPVoHYWtBhcblRPwz2CgtvChY2yq7cD3MxkJbb5SPddjnSZrcc6T6b93wOMin
 isV4bLk+249dE8l0BJw1oNGlhK8XIPdOskXNcJGeA2Jmrp/1KfN0lhG3SPClZ0RUGe12
 UgtbVyzY6Do8YTI3XD8s2K4tSC5SwA5cvsJ1W1g4XOKdw6gmQ3KXfGzWSnvn6N+9f4sJ
 TrOSDKAVALGkitP3QT3fgh6mAUHqZHiB3yiIKry6WsVsZbqBdfwqSKUi2yOhAL73Xb9x
 yTLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2AGCtYFRcaar4KJonnKjvti1kr9TUxKVIrXnEc2b1uc=;
 b=jj+ttorUdxhEJfwmRT42h1FEitfVMJDC4fOHTwJoCtAW+2Y7SJoiDz8LtSn6g1Yu5i
 LMiotM7pBfsIQecfmJzufm9AGts0Byywf8S4uAVDwUyrcCDuGjmK3cQcWKHcVaBFdjiu
 3GwlcByIWQrqPXGxj55CESZHQlPGV8RMSmqS0UDOdvu9WAdnup6SVnHpJEzk+OuRLCrB
 5p1W1Evwio+2u5UBwqTRtmJ1IcwMVuyVBh/3zyzyhdKx3ThMhwL9aVZOUZhI41YuuOap
 WO8vZPvH84z8VNGrBE/0JIy7rkqAcJg951EQ8IunZTIpDvoiM0NYBu9J/bz94244W7HV
 WqAg==
X-Gm-Message-State: ANhLgQ2KcmdxzPTg+8JvDCvolkrNbY11DbvWtPcwLwh4Rnc5b+15uQlI
 ADpOx4jp6Vaq5UN+PMLKcdfzUWTDIO8=
X-Google-Smtp-Source: ADFU+vuhiYNBWtBT1cZGlODdw6qix/saepF3iHEGLul0kbKZVoK1cgLaPzFF4uv4U9gt4EUVrJwMkg==
X-Received: by 2002:a17:90a:1b22:: with SMTP id
 q31mr6427794pjq.109.1585178126835; 
 Wed, 25 Mar 2020 16:15:26 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id c19sm170894pfo.205.2020.03.25.16.15.26
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 16:15:26 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Mar 2020 16:15:25 -0700
Message-Id: <20200325231525.7177-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_161528_026616_19F10B50 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv3] odhcp6c: fix compilation with musl 1.2.0
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

SYS_clock_gettime is gone with musl 1.2.0. Switch to using the normal
function.

This was done back in the day when uClibc was used when librt was
separate.

Removed struct initialization since it gets written to right after.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v3: remove librt linking
 v2: switch to function
 src/odhcp6c.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/odhcp6c.c b/src/odhcp6c.c
index 19a86f2..5191759 100644
--- a/src/odhcp6c.c
+++ b/src/odhcp6c.c
@@ -639,8 +639,8 @@ static int usage(void)
 // Don't want to pull-in librt and libpthread just for a monotonic clock...
 uint64_t odhcp6c_get_milli_time(void)
 {
-	struct timespec t = {0, 0};
-	syscall(SYS_clock_gettime, CLOCK_MONOTONIC, &t);
+	struct timespec t;
+	clock_gettime(CLOCK_MONOTONIC, &t);
 
 	return ((uint64_t)t.tv_sec) * 1000 + ((uint64_t)t.tv_nsec) / 1000000;
 }
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
