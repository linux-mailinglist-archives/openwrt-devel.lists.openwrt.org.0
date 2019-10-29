Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522F6E886D
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 13:41:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7lTaaNPK4CEg/9FsC0SwQjp4v6Ps66vaRsUO+SHJZ8=; b=o4/sTmWy2zOsnS
	OC9YOLdJGic37FK5jG9YGUgAUsF9GFSFIxFUbp1+Du1krSV29bwm4k5sWdVWL8zg66bDdebK55h8a
	96FnIzr/YAqtm+eesvQI5h64Cb15qkcv3hrGH0u+0fv8x+5797YI/2wFoUD92luPOJDueU3pqeIFa
	ynPHsSDy1jdgefzaD5dFjWYywjqjYMYpwtjmnoqwqiW2iEMdZZR6x7o1fM31yCQnG39LG4skwOsFR
	MgcMBn9yEJ2zSdn0zMmHGlW3TLMRKv4Nj7mIjJwVw8fBmJ0ZKT0tW2pEvUFmtQIGiHx9zFuhFo7XM
	NhliaNAMIuD+OFJQ4JKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQoL-0003JE-H1; Tue, 29 Oct 2019 12:41:21 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQnQ-0002Og-Bj
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 12:40:25 +0000
Received: by mail-pl1-x642.google.com with SMTP id v5so7542410ply.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 05:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7WeNwfqgMsQCrvj7+pUxr4Stsw09iaXK00TRJPTT+Vg=;
 b=Gil2daRjVeLmK6s8R4X1xGkcxO6bE6nzltWw49vSWChDOU3b7e3rkUNDFfhr22YSyZ
 SgRQLPUX2Ih4AeroVBZKHj0yeAW1yOgGvJNnPM5U1JAWcIvY1bd3MR63MLXherbNuMVX
 z9U4GFCtZwj5bNeYaxD7bdSRYOd5RuslEpcOUZpJRBdLPh6zYpzR4ENbpwIGLE60XBQl
 71+w6hx9E9npPVXRDIwkrD3LFEO33h72jtC0da3Ev5g0tDa34RSeByQYGt7nJNQBJ2XR
 PrUGTdQ/ERfmtcPa92LQl4jxsqIH50TMWJaVIWaW9O8+mCrFD+sxScpJfVxSm0Va6mbz
 77Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7WeNwfqgMsQCrvj7+pUxr4Stsw09iaXK00TRJPTT+Vg=;
 b=iPKZbCWFKYh9zFOtFysATUHQhG6S4k7w5Rl/ddDqEC+WVudMA13cMMqb5XlRd1vBvx
 l2rclSz9M0D1Ls5hC9LvRngjYVVSx1K3ZdjVxKBtwcJq4GTfjiSBWvPKc1gOvM4QPuyO
 eCh7gcTrujnz081mOsG2whezzeolK1ftCEiaUGBvAzcbfWrSUnMe/9ymMCBGzPjofEDs
 3MdKKlzaYn63mdU1KWFaVk191FAMQUkwhZ7uTA6zlVP0wZYwdY4Vud1EDSaFNflzGSqA
 ToE6Dd744Ioaznt+4Q5a5XTOxuqQgK/KAkN9vNLonioHyt7KV1K5AvUX/1iGP2fXnc9k
 /dXA==
X-Gm-Message-State: APjAAAVsuGEciy8iPNdAsZ5LfYvabYxVL4HQIJXtrNCvd+Do9lQdC/nv
 lWB0QaNLZa3eLcR1f66JIO2h1kqr
X-Google-Smtp-Source: APXvYqxk5hwrlOUesnR3crGGBgLiZCLcyv3isJEdf7Sm86+Eshv+qcuUQ3XI9iLyzURvZywY7caj6Q==
X-Received: by 2002:a17:902:7289:: with SMTP id
 d9mr3997335pll.121.1572352822837; 
 Tue, 29 Oct 2019 05:40:22 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id b26sm1090782pgs.93.2019.10.29.05.40.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 05:40:22 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: john@phrozen.org
Date: Tue, 29 Oct 2019 12:39:50 +0000
Message-Id: <20191029123950.40794-5-yszhou4tech@gmail.com>
In-Reply-To: <20191029123950.40794-1-yszhou4tech@gmail.com>
References: <20191029123950.40794-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054024_474705_1AD00DC6 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH fstools 5/5] block: mount_device: err log
 only when mp deviates from spec
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Fixes possible memleak of mp as well

Resolves FS#1523

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 block.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/block.c b/block.c
index 084e7fc..1972c50 100644
--- a/block.c
+++ b/block.c
@@ -1092,10 +1092,14 @@ static int mount_device(struct device *dev, int type)
 		return -1;
 
 	mp = find_mount_point(pr->dev);
-	if (mp && (type != TYPE_HOTPLUG)) {
-		ULOG_ERR("%s is already mounted on %s\n", pr->dev, mp);
+	if (mp) {
+		if (m && m->type == TYPE_MOUNT && strcmp(m->target, mp)) {
+			ULOG_ERR("%s is already mounted on %s\n", pr->dev, mp);
+			err = -1;
+		} else
+			err = 0;
 		free(mp);
-		return -1;
+		return err;
 	}
 
 	if (type == TYPE_HOTPLUG)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
