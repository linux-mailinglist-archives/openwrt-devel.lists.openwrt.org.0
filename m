Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8773219EEC0
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 01:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rHBXdEG9xxR0AcmlmWnDVua4IuCo+0bCrsn52ph+kZA=; b=b9aA4wdV2zsDW9
	+7x8bqCQxhQzJayLrLs9tXbTP/KBFzP3CpDTixGP5rnJ3sxzcSrUDkOP+rr+rqlkXD5JU2WX9Xq3p
	0mQ0PKoH0GNJSl69U2p5uqn+h+JW4yOIbdTq6Zano2c8V/FKvqUIqvfoPwCIS9Jnd/usPu6xu5o7J
	tp64ilYpk3GWx+RWzzBM4ZWmXhA/RTq+VFwVrkY2W63SAEDH4fyJC/h/1v17pvOGNmT4bs+S7Aqkb
	hk7hU4E8mSD9TBwiJXCFwndClVqyXqV+bH3ourjQ7S0c6EGLxNP2QFB2ipAKKnOcwUbtW7IVVxmat
	KURsiyQ0t+dyt6GWzq3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLF9U-0002He-MF; Sun, 05 Apr 2020 23:58:08 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLF9O-0002Gq-1w
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 23:58:03 +0000
Received: by mail-pg1-x542.google.com with SMTP id m17so673521pgj.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 16:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8f95TVJ+c6XIWCwNBjsUYQswsZ/QsofEesNmXH+lC3c=;
 b=RdRv1ttyual0JViMg9oSipksl2aGbOjfROu2woTBtYr3ZOjmK6XXkAgSbOFDz//576
 8QmETmIHNwrnSI6eJg4gD2n9LPqEjpt5cUApLTmSwdst8120u5f6oBUg6Cr2bVbAqvLl
 ABKlNESmsHzGdENNu55QMpyOFmQB+dR1U/bS3TQwy2DXttPlFFGe2e2DngsFs9AwTykY
 jloQGyFhEv7PUWQdhwpytP1g1rey+XWjM9elbyB7UwD34PJ5k9/mYb1LHVSAcA8TAgfk
 B1t7/IcSomO8W3buEzIXZC3qtxn1GcdL2nZh56SWOZVB29VnQP/apVx0RKYhaspq+vSM
 ZuZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8f95TVJ+c6XIWCwNBjsUYQswsZ/QsofEesNmXH+lC3c=;
 b=IyOU7upPjxG1hrLBKNLpzTo9wQ7afMf/laKCzpSrNZmzX5WkI+r/SCR1ZIF7Ln+ENm
 WTwSKJRKHi2uJxk7YtfQWeOEq9bPLPRFQLvTnavPn6JdLDkf5W5rTc6wQT3iSwYfU+U0
 UR8ktP12CBXIp5unoColh69+y1LLxgjQ6R/6Nag1CIfTbhD3bgi7YhfsuIaxDoxBEHfM
 S9Kao2QLTgZ4Yn1EPbwvFlUHQ/BUSUXRG71Dib+tznlBSYQvsHAKsc99dybucMzXCpmq
 ohePaBVMmungBcxF2ZVDl2OY7eq6zUGFtRDjBvXFkWBxATHYBa2D8lw9D/f3FDABrSJX
 JKvg==
X-Gm-Message-State: AGi0PuYBUDNb3fpUGPrBn8ufCBVEXmlVfZxyyhpCoN3dwz0tpHKrgiUd
 iCKZnN7bMPkJQvcAgavnO5aLsm1tQ9M=
X-Google-Smtp-Source: APiQypLFwnVTOK5zHJHieNfA1ckP9g+IGLkiJ0wJYs3Yp2WHhMNqqQxHQ1E/ZWYoPltfUVaHs1A/hg==
X-Received: by 2002:a63:2360:: with SMTP id u32mr19332455pgm.190.1586131080186; 
 Sun, 05 Apr 2020 16:58:00 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id o5sm9318977pgm.70.2020.04.05.16.57.59
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 16:57:59 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Apr 2020 16:57:58 -0700
Message-Id: <20200405235758.652368-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_165802_096982_31B247CA 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
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
index 97b6f91..2ffc63f 100644
--- a/service.c
+++ b/service.c
@@ -122,7 +122,7 @@ service_timeout(struct service *s)
 	time_t t = monotonic_time();
 
 	if (t - s->t <= TOUT_LOOKUP) {
-		DBG(2, "t=%lu, s->t=%lu, t - s->t = %lu\n", t, s->t, t - s->t);
+		DBG(2, "t=%" PRId64 ", s->t=%" PRId64 ", t - s->t = %" PRId64  "\n", (int64_t)t, (int64_t)s->t, (int64_t)(t - s->t));
 		return 0;
 	}
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
