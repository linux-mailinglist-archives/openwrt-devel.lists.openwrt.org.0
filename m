Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BACB2193520
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 01:53:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/ChAdg1zRpS3r81eLX+H6+lAkkyjtzbyLTYGH95vCs0=; b=QB+QRaPJKDcY/H
	L4NGcLdCQBB2rXpCxOzhvaIEOYnCdS4DT527jJH9efsV45VP++mob6fLmua5hAbSkaG21tSMFad2j
	+g81AZXsLTUmQvKgeeBv4KJtV5xATO+9l1Ou9DK+LJH0coym2gL/Soc9v5PiONxBcO8kgbaQceyE1
	9alg5THUDHwsKcSTEVaWJaKe0njAgqRwPXlZMQzClVJEcma9EyjdNk5F4gkczoAayUbKlVFgsTRS0
	q/lJ9dejjFL8KZdEWRX5dLF7UP06vm4HoNHQ8tKez4q+htX+RIQZRkV4y0Svk4/mRCIk0IKpt/mWZ
	IKj9COfiNDko1F6nxIyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHGm8-0003J3-6A; Thu, 26 Mar 2020 00:53:36 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHGm2-0003Ic-Ii
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 00:53:31 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q16so2797873pje.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 17:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4OHK26d3CO8Lu2RsHNuWa5fnHnEwtYmwf6oAvsBdWzM=;
 b=cb3CnCH250+u4SuWNTgQIakp1Wp0qQYpu65LXte09Bjeqop3HuL3zspqAAE41BjFHG
 +g9I62L7GVL/+meFn5x5be/AX+OdoPwSsNgwT1SM5vIAoaycwIuqLP998JpLx/ZaB0B2
 3gKgPT7DXOwk2xA9V8TZ0VJB/XWXs9nBIIIHymJ4VDKonsfPAwiDKQT8fKYhLIb2bqfp
 S9OAUDt1J1Fcs6YenxzJUIEZAM3c3cct8S7DXELSN17ZK3lE7MI8y2WxeBgY1WVpn3hd
 pOBoGreSA6i6aTwGhOXM4/wVlEU38OskDH7lTrp60TzqeNyQ8sKYd2ZTzn80B+DlxG6w
 DfiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4OHK26d3CO8Lu2RsHNuWa5fnHnEwtYmwf6oAvsBdWzM=;
 b=YZcPzKfynl/X8TpopgoT4bChxN1Q+lYysh7lCN3tPWcKIef6NPSrE0nC1dX019ErCp
 Qo0D9ffz/ZNEnEhvb5sNNYH7WNdTDLC2wlQqcLw9jL0TTSDLymD9g0Md5QTTXge+otSU
 mHkm/GHMvnqM4sQLwwKE58tZGE1F7JaXPJTutOqBjXDnLMp/O2ygXMssJiykX2MniuAL
 VxFfnDqNIwvDqvAqFQu/VwD/uVOeXO2ZQMhzdj9DaVGfiYKDjaiTw65PX7UydXo6d/qf
 BlY4CXjbMEhv4Kzam6b4LVf7+AzANR1vXNmoIMfc0Ubu8X3zxRcp7TNZICohAdRfjVjK
 qNGA==
X-Gm-Message-State: ANhLgQ0yMnypMd+NQ12RzjDHVAuU82oW3DSezk7RiO+FzNwpIOfsxhS6
 WfERJQhqOWUfIis7f6V7tvBeJ/tOOnU=
X-Google-Smtp-Source: ADFU+vs+kEaUstMeLYZezjgs97TXJleChymFubkCaJX7kqqRQ80gbd6zouMVhfbILvFSHyZSVrL51w==
X-Received: by 2002:a17:902:9a86:: with SMTP id
 w6mr5723057plp.37.1585184009434; 
 Wed, 25 Mar 2020 17:53:29 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id v123sm280173pfv.146.2020.03.25.17.53.27
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 17:53:28 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Mar 2020 17:53:27 -0700
Message-Id: <20200326005327.1383130-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_175330_617972_23F91008 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
index 97b6f91..f9d3b48 100644
--- a/service.c
+++ b/service.c
@@ -122,7 +122,7 @@ service_timeout(struct service *s)
 	time_t t = monotonic_time();
 
 	if (t - s->t <= TOUT_LOOKUP) {
-		DBG(2, "t=%lu, s->t=%lu, t - s->t = %lu\n", t, s->t, t - s->t);
+		DBG(2, "t=%lld, s->t=%lld, t - s->t = %lld\n", (int64_t)t, (int64_t)s->t, (int64_t)(t - s->t));
 		return 0;
 	}
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
