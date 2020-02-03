Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515211509C3
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 16:27:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CDqIt1dCeKGIEEFndes6Olp/AZa40nEZp8x9uOkWX4Q=; b=NMSEkcxgj3EX4H
	vLAwjGbbfjd7RurNCf2eN4EEe3zatuciMldeeL/Vm5qyJKM1sePk8sMaQZjo3SglqZCjNth/poyoJ
	JOk1d6NclV15VBfIkqb9XnpliWsxO5hKKXMxsYGIAwbNtfzc1L1PyrYK5N+XIVDm2oQANaeUcPjB/
	H+W6cgu9gBukcECxzax63kygWOr8mevjg0oS/dyeIa9beTR31DR/j/guJ/oTJ7GJoC9zvW+qly5IR
	s43lMbWyC9LLrzkLO9gfikMz9EoKGrfCkinBhi2d6SpXCNoyrPJMsyznXDJbHEHA2cJmx4o3g1nzQ
	drI7hQD47LBXqTslWN0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydcx-0002Xy-Op; Mon, 03 Feb 2020 15:27:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iydcr-0002Xh-9I
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 15:27:02 +0000
Received: by mail-wr1-x444.google.com with SMTP id m16so18707616wrx.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 03 Feb 2020 07:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=u1O92zKePIudzjhTS8IPZKMYhUNAC49iFmH5t+BCoK0=;
 b=ku3tWPcCLCCAp2C9dwmV4yqISgarZseZTSWC0xdeYBypbeKLg7Fb5AagEOonyxrVp8
 NhCtgfcIWg8kXuC7vFO9skqXvOiVce/ORgPkRdYwtWEP4f4HO3uSVWQ/j5Xuin7htrxV
 uvtq1LUkqnAOp3Fk4e7Roe9fw0Tlny0o3GzwCFNUHDm5H15kFO9pWmP+yQe2oX6AxYmH
 9bTnDUVNecU9zVzIq5+vgMwTKeRZDsBkwjYZKPZJRBsuNie2+wqMkLlblZNRPYG68mLI
 fKxP60knNZnxFXvp8AfhBuDSLvhQCcS39sOEvnR3VITlkfyFPYqRByYrWyNw9h97mIyz
 KIjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=u1O92zKePIudzjhTS8IPZKMYhUNAC49iFmH5t+BCoK0=;
 b=nxzVXdY5sOhR3tkozaWI0wSPoKQWoGarF3Kk+TQ/vGtINTCdgeHtwsuZ5gMlVUINez
 ZgTnz00mUQQiM4oWsVOVnyEZLSFHBqpMWUbjt1guf9HV4SabJFAcQN4hSvalnS2hPMGj
 pGmFAVBVnOYsOEYflyNmjPCoVnKpnY24BxnWulOUMw4r7xJDQFtZmZ7cpuDe0O386Mi0
 H7c3it9378yGKQI/2lM1aeprCywYWa8IwSxDGPEkvMymkTc0unLCXHgsC7FHUmKTpbRh
 M1QNpqMUFLkYq4pmupXL1rPElO5HgwjkJwO4W0TEOfEJnfej0/OWTb0v1HfU2MYjcPFd
 XgXA==
X-Gm-Message-State: APjAAAWh9FQTLx0sKGTp1N3c0EXW2qg43eDXwZU6mF6FifXxzxLxrBom
 fjl/1E24hMG0qVKmeT9gtK5wS8vMvt8=
X-Google-Smtp-Source: APXvYqzYU4TNbEyIXTv0pBqwSxh35CQFIHNCxZPvZX0NUSQNmt8DiRpiJnt3q79pKCDGIyC20M3mMg==
X-Received: by 2002:a5d:5283:: with SMTP id c3mr16668327wrv.148.1580743619911; 
 Mon, 03 Feb 2020 07:26:59 -0800 (PST)
Received: from cplx1037.edegem.eu.thmulti.com
 ([2001:4158:f012:200:2a10:7bff:fec5:6f08])
 by smtp.gmail.com with ESMTPSA id z21sm23269584wml.5.2020.02.03.07.26.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Feb 2020 07:26:59 -0800 (PST)
From: Alin Nastac <alin.nastac@gmail.com>
X-Google-Original-From: Alin Nastac <alin.nastac@technicolor.com>
To: Felix Fietkau <nbd@nbd.name>, Hans Dedecker <dedeckeh@gmail.com>,
 openwrt-devel@lists.openwrt.org
Date: Mon,  3 Feb 2020 16:26:53 +0100
Message-Id: <1580743613-29482-1-git-send-email-alin.nastac@technicolor.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_072701_348619_534290B5 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [netifd][PATCH] interface-ip: transfer prefix route
 ownership to kernel when IPv6 address becomes deprecated
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
