Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8385EAECBE
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Sep 2019 16:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sNC3/WsaybKslJLg54u9Wc6CE4XaIPzgmg+dfBn+TAU=; b=tGgdlfVOWUXhdX
	fDQ1sLvMyEesp32zrvMkonHigPlQI5NGfvLT6SSLLgglanxDeyNj4A0KC9PY5kCJWqRnHH/fZT5Hj
	xwa/03BxpPpk1Ng2LK1llTnomvtqHx2ugZ++I1qkNtEkJ2kjLUz00cPoSNX/LbdgPD35HO/2q4LJF
	eIQ2LcPx+Dqk5dtFg2zrmQ51ilq6BvTS3y1p+qP+jCOe6xIXAZIw/CTIr/52Yqp1pluuI0p9EG2Nu
	6WtshH0NqjQFTyj59PYYeVdxCeeKG3gACWubsMQFlwzzxO4J1OvFmx0V5f33fS5Q7uF1QLPcM9azi
	F9ECQolSKMk6ZCELgKVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gvn-0000gN-Gl; Tue, 10 Sep 2019 14:15:43 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gvY-0000g0-6S
 for openwrt-devel@lists.openwrt.org; Tue, 10 Sep 2019 14:15:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id a11so10850567wrx.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Sep 2019 07:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=iDIk1dNag1yEup5CRKeaPAH/F9gq0wsdYyNmnECvbM0=;
 b=BVFY6G5W3AUDzeXgqyAqRPwwEVoZrQuVtd3a78aJH5guZXvZKojVfm7TQDN1gpyLGy
 tbIKCgyGUpYIIsxtumMC9R8Df0P9g7x9/W7e77ZW3wpldZ+Mr9RnkyWsy+H4Ii/aowwS
 dMOx0dpuIUYSQzlrV/BSRGtlgeF3fw8YjbbwLI2D/paOa0CcgmdP1/RzI0B6BIF41KiJ
 eJhI/QEFz852LIQbqgpgRkQAge18dENtFqaAanC0PU5oG5ZK6eN7FPX6bYZKQdabujat
 gmbe87g5xHLzwOMLroctp0afjEQkiZMPwBc7Ov2xwflO0W4siPYAWLl1LI2cWAWPxgwI
 Xzqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=iDIk1dNag1yEup5CRKeaPAH/F9gq0wsdYyNmnECvbM0=;
 b=ZtfXVYPLzpF3/KFdQGRR64bOk6Tct5s9cyjE9AVX8U1no/XH1Dnw3FgciD1KWqpMyD
 5G7idf3r6fxUQ6epdjtuOW02wypZxyKvZU2JgC1c4pm8Snt9XJpbqva89MpmQIv2lQ46
 hRSkKcjUFFwf4Q849+MpbBZYuYF2c2HKVio/lW5hAAVX+cmQT1Xi/QnLN59OIlaP7b+Y
 TUX4J3VsVp3zVuyM3x83EnSreexL3uvJRQwp/3LkWIHeFG4BVNZXOBmHullTiZXsLQys
 I9rCprOlEShk6mAhbyFHp1jN45xyMrTJ6xbtN3GIkXBCmgw2wvma7vGAyGUCBXXvOloo
 xgGw==
X-Gm-Message-State: APjAAAV+JFGwdrRF1AnEZ0dNcv2K1atED1JysbVRAROSmJ9EGtMdqS95
 suGv5Ks9AoFn2v8Sg+j2mRM=
X-Google-Smtp-Source: APXvYqwCtUZCubVbyeqMTWqDpglW5EeRD2Ly6KW05xq1e7yo98UmpF3usV8H+u25+wM0iVPUJe29dA==
X-Received: by 2002:adf:ed05:: with SMTP id a5mr18090287wro.35.1568124926240; 
 Tue, 10 Sep 2019 07:15:26 -0700 (PDT)
Received: from cplx1037.edegem.eu.thmulti.com
 ([2001:4158:f012:830:2a10:7bff:fec5:6f08])
 by smtp.gmail.com with ESMTPSA id b15sm3755760wmb.28.2019.09.10.07.15.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 10 Sep 2019 07:15:25 -0700 (PDT)
From: Alin Nastac <alin.nastac@gmail.com>
X-Google-Original-From: Alin Nastac <alin.nastac@technicolor.com>
To: Jo-Philipp Wich <jo@mein.io>, Hans Dedecker <dedeckeh@gmail.com>,
 openwrt-devel@lists.openwrt.org
Date: Tue, 10 Sep 2019 16:15:13 +0200
Message-Id: <1568124913-1173-1-git-send-email-alin.nastac@technicolor.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_071528_241239_DF5EC565 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alin.nastac[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] firewall3: fix typo that affects ICMPv6
 rules with numeric icmp_type
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

From: Alin Nastac <alin.nastac@gmail.com>

Problem can be reproduced with a rule like this:
   option src 'wan'
   option family 'ipv6'
   option proto 'icmp'
   option icmp_type '128'
   option target 'DROP'
The resulted rule will set --icmpv6-type to 128/255.

Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
---
 options.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/options.c b/options.c
index c763d9e..7870143 100644
--- a/options.c
+++ b/options.c
@@ -568,7 +568,7 @@ fw3_parse_icmptype(void *ptr, const char *val, bool is_list)
 		}
 
 		icmp.type6     = icmp.type;
-		icmp.code6_min = icmp.code_max;
+		icmp.code6_min = icmp.code_min;
 		icmp.code6_max = icmp.code_max;
 
 		v4 = true;
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
