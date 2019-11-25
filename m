Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A00910959C
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ULNx+QjY8p4REUNkKeWSIPZS4ChvS/BldZJhf9M4C5A=; b=IcxMDumWz1LjsR
	ipIsj0WSrycsop5yzsPf129UW9T8mu5KNQBWCH9aXUMc82pdlDnoPNqYq+BWlFSTlPkdUGhJPCur3
	hhvB0JekVPDVILx2xCSSwL71PAZ0OU8Q0zLyCFajFFddTEVdMP/mxCiq11ECM75cRPUF+lihMAQzz
	LV7PtLzIxLLG9aqglywKP70WddSN4TPr+y1nqRkaDd7ccO/qrfrLx4o+DLIa9RHviDXWA0eLlkRhe
	RzBu3PM8O4GGBttmDuxHCz2TBcyiZOQfO6QvTrGBSz/rljwR7yehHrFm3Kw/QStumClebYj21jw2U
	hTLu0INALBHrtOmmnBMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN6g-0005oH-Fc; Mon, 25 Nov 2019 22:45:22 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6Q-0005R6-42
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:07 +0000
Received: by mail-pj1-x1036.google.com with SMTP id s8so7293958pji.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i6zaHgUT7EOcQmTbtMOuxf4CZzo+RmMYt7bObICfNrY=;
 b=knVANyPQ/XcR1KYJdbcPyx9up9uSVzYXfsF0vs9qmRpFHuEvQwchYh7vYBVx2m1ap3
 dhpoEWyDU7A6j3nCvbahbGoWeBmc+GeGuUdO88gGS74hX3JpEyRzE00pGpmxzPrUWOvG
 MVeDJ+Ynd/gmV/JPqp8ImdEcOLAPsbACsUESX5+nckzrR3WxwIpZB1cV1JmVbNH7ks1P
 aUGlfh4R97deMH2a8Ztw+BGOR5MxASZqZd/8lHELm26pkvZJm4FPvNQLgvDOHd76JqEV
 6W8yfyg/UfiJHGAt/7AWbnLVsE4Iico6E3UXSqUvdBvBBoKWDV0zKXNpO+82URE8wLsD
 J3Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i6zaHgUT7EOcQmTbtMOuxf4CZzo+RmMYt7bObICfNrY=;
 b=UBMqNoDHDZDFOw8y/bQ1abnL5F7tdgmxQJ4lbG+Jhx9sYO9i7RPz824Wm1gNeNONTq
 d/1wzEiwvN6PzQ9/IH2btUMhRd9492VKbD3RW6Pm9cikB8DCkoT0C+6jCChJqiCqvNl+
 qNp2xTZhrekvPUob6BDd18igHahi3C61VDd+ZOFxtFP2J38en/msLiqEcUMvlnNlrPV1
 kM5rrM6fn8V+1M0PLAVc36ZuDXP7yrxbi6DvDgmW7GZBRs48smIGp+q/EJojD/OMQZCc
 MTpaZaK4meIaSlAa97pg/WUKYaZ3vGgG+J3/cUIy1Jc1pSY2OBmFfJ0XOEWjplpc5bpR
 GN7w==
X-Gm-Message-State: APjAAAW0CNLfhEPJL4x+ruMHpiaarEbbFvvLwuctSwEJE/5ZdRyaZZkR
 eJJXs2ov4k27Z6csOXpUaRVIyuhx7VA=
X-Google-Smtp-Source: APXvYqwafcsSASCu9eSNnP/jqDC2800f2iyo7N7XHp/tvf+Rvl48ETZwhUX4zeY4t2PrP5zfkOf2SA==
X-Received: by 2002:a17:90a:ff04:: with SMTP id
 ce4mr1906706pjb.133.1574721904707; 
 Mon, 25 Nov 2019 14:45:04 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.03
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:04 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:46 -0800
Message-Id: <20191125224502.266177-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144506_171987_0828C46B 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 01/17] gen_mvebu_sdcard_img.sh: Replace let
 with $(())
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

let is a bashism.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/mvebu/image/gen_mvebu_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
index 100a9a96e5..c93a2bd6e2 100755
--- a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
+++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
@@ -79,6 +79,6 @@ while [ "$#" -ge 2 ]; do
 	) | dd of="$OUTFILE" bs=512 seek=$(($1 / 512)) conv=notrunc 2>/dev/null
 	printf "Done\n"
 
-	let i=i+1
+	i=$((i+1))
 	shift; shift
 done
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
