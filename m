Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE72174B1C
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 06:07:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUpI6JNTL1ZX2GdAX75XtUcovs6MT78UdtNSmJhH/qg=; b=UJkRA0C7i9OwXF
	hlLeCz8vTPBZyKAzUsbYOal6wvTsnX+ppAdc3U4I6VzWpGW3N0nXyLjgt2Wyy2BrHTAHVkt2rNZis
	FmhSk2fVKhM0oW0fI7dq856Fs40EusRvGhzFJcyT0NvLZaHV98QHltqQBE0tBQVdn985b71ITzLZv
	0yG7tOiXoz0xy/M+WdjPT9eDLeFdF2Nq9Cr/Lh0XMOOdhzYBapFQZC7u1uB2qvzl+tPXDZR9jrYkk
	3v+/DrpF1opMQbqivI4HDd6QyEP7b6BjT/u1Q1rCfmbiDvowKjhTvmoMTwwkI1FUijgVDEVv81nft
	WNFOuOYxDvD7qctUd73Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Gob-0000Tx-9h; Sun, 01 Mar 2020 05:06:57 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8GoF-0000LG-Qs
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 05:06:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id m15so3676920pgv.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 29 Feb 2020 21:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DzwDkEsJsmL5/TUC9ekF6Hp6zq3QXIiZO8zWo/WVUSY=;
 b=hbIVJ4jiyy7kXMxyJAETNzhND9iE7L0I9qakFZ0mx/xK2jDGQOROLe3srbX6G55+dL
 vkbeIdbncMiMZhryqM4wfKMa+tTkfCKTmFhD0moUcIt+d9/Jhq6kvEtmvmkjZOIC+qJl
 287clWVfB8Ka5JzOhWNK+FhukPtLG6fxwHRVcqPIcPmhJFGM1HRXf//5TcvJmru5f0RQ
 xcYUSXWeDoFJGVztkIc/sEGTxb0C+/TkBP9y+9J5hkC6naNixIwGzVsUfEc+yU7p+GjF
 plHBQV56qOWS7tXR+vm76HJITT/LbaQybs3LZBTwaRhPqMQ99QJv+0O3bRFaiRI0NSAP
 3qfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DzwDkEsJsmL5/TUC9ekF6Hp6zq3QXIiZO8zWo/WVUSY=;
 b=kENBWuELPoD1BLNAJxUBrHWJM1AyPr70xMfhTamLFXC3BSzokqSV/lMu81ZR3bJ+3L
 os5vs9Wd0E2J8mufeA3J2GVirg+ty49rwFtQLIBu2u9vP11ySY5WtkA6fHUsuFmFAPS7
 pl4AH3CJv5d+YyrsSQKGI3jVAqLvWUbmbdqAhCCvF5rrpQqfCsVvKeApSBnNeUJcu8jN
 861kE5PHovUcsAEpND8B7ACTGZGcjDvkoJB28OXQ1leYcGEOBqJ62ynnP5TCvqlxO1cX
 vqN91Lo08unSRQHSi2eTRGM/UHhw5D4fhTAsVo+S2SSIW9VLQRD2jziQPUJ7I3kyZVOi
 4Wog==
X-Gm-Message-State: APjAAAV2jF6a5iLGDM02A1GWV4NFL0mHrFGEhpWKlKtSnSJsm/E8Afvx
 W+3lwHxlAZ74GI0ROivWEa5S929xrAk=
X-Google-Smtp-Source: APXvYqxbofbbookX4JqpB8yzHzT4+NeWjkf1EVEFL/U+tByRwiUbtJt80pdeBe0/8Qk0rUlS1Uf9gQ==
X-Received: by 2002:aa7:9354:: with SMTP id 20mr11837321pfn.1.1583039194644;
 Sat, 29 Feb 2020 21:06:34 -0800 (PST)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id x6sm15932781pfi.83.2020.02.29.21.06.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Feb 2020 21:06:33 -0800 (PST)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  1 Mar 2020 13:06:24 +0800
Message-Id: <20200301050624.78598-2-yszhou4tech@gmail.com>
In-Reply-To: <20200301050624.78598-1-yszhou4tech@gmail.com>
References: <20200301050624.78598-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_210635_865486_420D09B2 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/2] ramips: mt7530: more detailed output
 for unexpected etag_ctrl
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
Cc: dengqf6@mail2.sysu.edu.cn, Yousong Zhou <yszhou4tech@gmail.com>,
 xfguo@credosemi.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 .../ramips/files-4.14/drivers/net/ethernet/mediatek/mt7530.c   | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mt7530.c b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mt7530.c
index 8ffd614d9f..d1e56a76e9 100644
--- a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mt7530.c
+++ b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mt7530.c
@@ -435,7 +435,8 @@ mt7530_get_vlan_ports(struct switch_dev *dev, struct switch_val *val)
 		if (etag == ETAG_CTRL_TAG)
 			p->flags |= BIT(SWITCH_PORT_FLAG_TAGGED);
 		else if (etag != ETAG_CTRL_UNTAG)
-			printk("vlan egress tag control neither untag nor tag.\n");
+			printk("vlan %d port %d egress tag control neither untag nor tag: %d.\n",
+					val->port_vlan, i, etag);
 	}
 
 	return 0;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
