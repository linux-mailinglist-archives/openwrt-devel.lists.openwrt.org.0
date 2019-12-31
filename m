Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F08312D5C3
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:22:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5F7MgdyvrgplgCxeBs98h6qF0CBoAYqokDCJWEUX6E0=; b=HM5UB6Bnes+hhUm71epsmhTItN
	aWDW1xpwUu13DItNgXYaayE+pwHyAbO5AWfRygz/I79jvHNLtAKIF28/nGhoyLhF1dU86pYsElvId
	8uxelYwiRqZqPfSr//b3/x5+WVjv0+DdDXq2VeikM1mlyI4m90FGpwzyqSmy2SD9wN2pNPTaB7k+T
	XjsFJksHAcwaicDTesP9yZJnJpk7T/69Y15izBR/NmfJrLYlp38NguOyOuWtKIKkTAPBM/QFYnqzL
	SVemdm5DnbUiHEJFkUV5HZB5PRJv/54d2TqoltyNokwPtiFWwCYH3KoBxnEe/85rShiulel3x/1FW
	IaPiDvew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im7Ay-0006l1-EQ; Tue, 31 Dec 2019 02:22:28 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im7AJ-00064m-1u
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:21:48 +0000
Received: by mail-pl1-x636.google.com with SMTP id s21so12618156plr.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=c+lBwgrZnoCVlywnYcqoEkMaHK0voBnmxueIkUuCJg8=;
 b=fiBRZ0JeHPTRpDW5GwQt6mP8fhillh4LBigQ4/EpFBYJBb6mz673tReWsPHNWGHF5+
 HOJ/dYbHxj3Js/0JuqLmzmBdhHD/drpLb1otoaboCT1L3YmY2CZJ4d1onyArChrYBGY1
 4ueeY+ONOFiUmnsqDoO/EQZNE5cMbKwqUAg/PJ6S9naKIQWCOieJLPbP1FAegTeUcJfl
 Hdfg4YdovviQyqqQbPxY29bzRHwG75e6PE863lHt3IxzBCertZUrJZkChBmwWD+tWlo/
 6ydGvg66EFcMjZOo6QAb+/SecmAQECsZ0LWo4kaJQhPPT9iPKyuOHCSQV8MFKVFBxfRr
 GvKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c+lBwgrZnoCVlywnYcqoEkMaHK0voBnmxueIkUuCJg8=;
 b=XBFYjyyXC8wNc8tehzdQGcs5Ae8yw1lBbLHVzwdkhcWbVHn/frYU41nHY23D1Af7a4
 nCt9t7fuV8xExfEudNpMIh5vTHLpOedQH2HFu+b1ocFCCOp7AQJO348vYx0an3e4cRqi
 puoA53twG2P7ISQGSVjh0Cf4WUG/dkGmC+aWvmpEF4dBWKVHGf0NGiidzKOu7uEF83oo
 N5HFQHBYhVDhLxpYYXzS4H4aLaGNYSXk8WbOd7hyaWgCG2amlYLJz4s6cg+HcvQKzeG+
 QEAdPOAl8x4/cSAwe6tOt3KUpK44J1kbjPJe0MWC8hX5a2gKfrmVEAzIEhoVLu6RG5yJ
 l5eg==
X-Gm-Message-State: APjAAAVEu8GUQVkjUApw+lWjC8MMXs6dCsoeYqt/SetkOIg/yZjPxqmS
 tjAWf5a6UnfFtpHqLq1Ys6rzN8Weu3s=
X-Google-Smtp-Source: APXvYqykYTVGupnXZWdMYSWjbOR9nh6w5Feg4c8HbUlVct6DlGS/Ul5IQ/S2iokgmeTGkhPZIAEsdg==
X-Received: by 2002:a17:90a:3ae5:: with SMTP id
 b92mr3175090pjc.26.1577758906042; 
 Mon, 30 Dec 2019 18:21:46 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k1sm908587pjl.21.2019.12.30.18.21.45
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:21:45 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 18:21:39 -0800
Message-Id: <20191231022140.48222-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191231022140.48222-1-rosenp@gmail.com>
References: <20191231022140.48222-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_182147_093897_E2BED08B 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 4/5] scripts/mkits.sh: Fix improper string
 and array concatenation
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

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/mkits.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/mkits.sh b/scripts/mkits.sh
index 53b9ec5f20..c09e537dbd 100755
--- a/scripts/mkits.sh
+++ b/scripts/mkits.sh
@@ -43,7 +43,7 @@ do
 		k ) KERNEL=$OPTARG;;
 		o ) OUTPUT=$OPTARG;;
 		v ) VERSION=$OPTARG;;
-		* ) echo "Invalid option passed to '$0' (options:$@)"
+		* ) echo "Invalid option passed to '$0' (options:$*)"
 		usage;;
 	esac
 done
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
