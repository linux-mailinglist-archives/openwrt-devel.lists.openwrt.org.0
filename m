Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767011531F4
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 14:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CDqIt1dCeKGIEEFndes6Olp/AZa40nEZp8x9uOkWX4Q=; b=NX/tE7MlOB+Pai
	qGrUhwFAVU1TcNf1ZnhEl45TBR5vcCFufX0W3N21D2p2mgjHjCIarpfhEzlK0xo7FkI3EemSXVWyb
	ecrW9y32450PCh6EbT8EtgLGbK0nL97Havlau0nTqWD08BbsIfPoXYnrjpucYojVGP3G6NeTyPbO9
	B5C0XYG5VKoGqBFiUJb0xkEPfomnOMtiPIESQBcqeS5CxBw2eL7eD/bQaL7qvt5zrcZVFao6I/4iJ
	c+WK7Tfyzf6hEg1kINfYjLe4dd1qXVvOylozAGiFMESXMLGAQ9LPGd1vvxvlx0/oLfd8F8S3lVDJs
	u4our3i3wYSi6tjkslqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izKrI-0003HU-07; Wed, 05 Feb 2020 13:36:48 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKrA-0003Gr-Ck
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 13:36:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id k11so2751807wrd.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Feb 2020 05:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=u1O92zKePIudzjhTS8IPZKMYhUNAC49iFmH5t+BCoK0=;
 b=nVLMD2VkPFz/a481iYCesCAxQVl19V5DPHjcnS53P756xBw4vflQ+dkzM+xy2BbAjl
 khlIip+L+2BanGtYCuNYs1jzgT/yFvRsBI8WyszXswj2RKF9a3pXEigBOiN2jBjURgeH
 Q1EQgPsY2KbkoNkEMdVdEwo7S1jyzddU9p6P5wgZIZ3LdeC9XvX80MxIi8fznUKmQ+5S
 MIw1KOdBrG4WFyt/QLuAu7dq/8Qrd0uYWJHOSLbxAeqSIXdSaYbo4XCK84uXJLJFSc4C
 IbMhv7K8wJpB6eShhkohyyZLhmdYR54jmSe0f7yP3xtZvFD5v9SA+2T0206SH8CGuCHd
 4ziA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=u1O92zKePIudzjhTS8IPZKMYhUNAC49iFmH5t+BCoK0=;
 b=hLXiPB7i9Fawv+iGOghAi0wVY4KA5HSr/4Q/SmZbgg6wxF6b2/70xRp/++6/KCMXoT
 x2YgU7wruiyjXv1xDw1Do3e8RmkBX1iZeGN4bLfxugPEc1kWBrx0P/I+MxTk/jIpPZIs
 zv9KaQy54av+i0HLOXWElTrTvuPyfKP2mPyVeuWUwlSL8J0kExcKjntwCuJd28A8uXxa
 Qp3MBciXciV4GW1hIt6OvsXwszsM6RnhzyRTTAC1Q7KL3DThLAFjPw+oOmKRkIxvAukP
 fiwHkfV0HGjpvPzNYeawQaLDuQhKiIclOOsUz5cxQMDkOUB6Bx6wNNaAFxcnRx3URsT8
 R/dQ==
X-Gm-Message-State: APjAAAWpqMcx4IUEfO+VdI2iTxnYTyrpz3ZGhUHA4GvmNzQ5qBO0HK/k
 ta+qZ/WKHGIAR/hh8iEsJQU=
X-Google-Smtp-Source: APXvYqxgRVEXxFFCpkYeliRJe/quKTF891yXwWxpp753OG38/MCLgcBPHPzzfLUgwzRRRmXt5KfEfw==
X-Received: by 2002:adf:e9d2:: with SMTP id l18mr28291764wrn.344.1580909798827; 
 Wed, 05 Feb 2020 05:36:38 -0800 (PST)
Received: from cplx1037.edegem.eu.thmulti.com
 ([2001:4158:f012:620:2a10:7bff:fec5:6f08])
 by smtp.gmail.com with ESMTPSA id q130sm9045043wme.19.2020.02.05.05.36.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Feb 2020 05:36:38 -0800 (PST)
From: Alin Nastac <alin.nastac@gmail.com>
X-Google-Original-From: Alin Nastac <alin.nastac@technicolor.com>
To: Hans Dedecker <dedeckeh@gmail.com>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Date: Wed,  5 Feb 2020 14:36:33 +0100
Message-Id: <1580909793-24142-1-git-send-email-alin.nastac@technicolor.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_053640_894457_DE615BE0 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [netifd][PATCH] interface-ip: transfer prefix route
 ownership for deprecated ipv6addr to kernel
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

When netifd manages the prefix route directly, it will remove it
the moment prefix gets deprecated. This will make it impossible
for the target to send ICMPv6 errors back to LAN devices still
using the deprecated prefix, thus breaking the L-14 requirement
of RFC 7084.

Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
---
 interface-ip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/interface-ip.c b/interface-ip.c
index 91c305b..ff8f219 100644
--- a/interface-ip.c
+++ b/interface-ip.c
@@ -913,7 +913,7 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
 
 	addr.addr.in6 = assignment->addr;
 	addr.mask = assignment->length;
-	addr.flags = DEVADDR_INET6 | DEVADDR_OFFLINK;
+	addr.flags = DEVADDR_INET6;
 	addr.preferred_until = prefix->preferred_until;
 	addr.valid_until = prefix->valid_until;
 
@@ -960,6 +960,7 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
 			route.addr = addr.addr;
 		}
 
+		addr.flags |= DEVADDR_OFFLINK;
 		if (system_add_address(l3_downlink, &addr))
 			return;
 
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
