Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14401955C8
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 11:56:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xnH1iSQpfmEUoEZHCIO0/LbsiUjx0MuogIebAxsSKCk=; b=WOFRp1JEtCeYWs
	I/EcSTzUFr5MyHoSoYZJAbvL5UcZU1Afo5icfXAUWbxDb4TV8CZFU1ZWiG+LblthSz4Ni3xNyuc6B
	f9On+/Fv42/tbz1dc3eXlVIqwcj+YB4m/2mVCDwj8YfyRV9myx24m8NmPbkacmzI6lspmQSybFfGM
	MWw3sCukixqfnzH0P5Te08HkiUqQ4tZz/ARDGuAruWKKEOS5BCtTPeq7/rN88SgOpddHax1+wj0Xp
	h/Z5TE7iuauF/xG5mtyuWYiwhBXTu6kfqAJlBV3ww/hD4jeG2uYL9ihEWz7gCMoPcoZJaNtuyaTiT
	yOAz3ezsknGmjAh+TcFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmf5-00065e-K0; Fri, 27 Mar 2020 10:56:27 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmey-00063k-VJ
 for openwrt-devel@lists.openwrt.org; Fri, 27 Mar 2020 10:56:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id f6so5227039wmj.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Mar 2020 03:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=haaNMixDZqymBTKxCaaUVa82Spyd0tc1RHwrnuIY1n0=;
 b=NENvELD6OnILxZq7idsJTz3+tMdDzftiPeKyLxkb+FOOEkTtfk77Jz3vn+HLTC9Kjj
 41/wsMlnHUx+fMk4KxyV1hv4H5CPYBIHFvo00TLERWImMR10lZpn4n8qaAGu0SwYjNc2
 FwznvTOw2R1KcWVA7+c2WPrEQZAUglSW121nzV6xBDXBnbzg2sq23GhHJCUS/0Pi0LVD
 qvVgPay2cDipqZsXvk8J0rEzHNxvDphiju3GdGECmr4VuVo9O0kIchxecEvvEB0jPZ2r
 KmELtFz7PV7bfXBAS24karurseQ6hvEVPT8vV0MzT7hsQ3fJqeoJ+JVbNKJUmKe8a73m
 z+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=haaNMixDZqymBTKxCaaUVa82Spyd0tc1RHwrnuIY1n0=;
 b=U77m53V52CkZ1KxawW7VR0FEBWp97bJmqKqDEgyYaQFYHX4nA7EThDe2zJ/rq0gfJJ
 2O/O2c/DQPh3VLJ1qbwFleLM7QP2dlOC5G3r9Qjds9jnwFGAgkmigtS705wdHKqY1mgv
 g7wPF2LX50HD+U/S1Q06zaONbB12r3QZY3V0lJlqDKEvIEuIB1sZA9a2IGybe3iV67Fb
 Jng2Baicfl9ifLMXmHOPrLy8nkAF9kKDlSbXtig7eGPBcLDn/4pjmknYhj/wK3LJpnx+
 cxv/uWYz5QX97v2LhuOo7rNrCAjZ8wEX+/9MbipjNTTDY62ub2XLIaby1AN1VVlEtIjB
 oJfQ==
X-Gm-Message-State: ANhLgQ2sqyQEJa0MEwkzBQRmDPSUVxl/dFmDao8rONe+O3D0m9FehYqj
 fWjY2arDzqyvRUOwPNXMh+8=
X-Google-Smtp-Source: ADFU+vv+1rVaWa6/eSwJg0SPTwlyfAks9WLg7uWbNRhaD7o9JwBbQg/O/7XEM3UVuvEObX4eZg7Xtg==
X-Received: by 2002:a05:600c:2747:: with SMTP id
 7mr4606102wmw.187.1585306576568; 
 Fri, 27 Mar 2020 03:56:16 -0700 (PDT)
Received: from cplx1037.edegem.eu.thmulti.com (14.125.146.82.ipv4.evonet.be.
 [82.146.125.14])
 by smtp.gmail.com with ESMTPSA id z129sm7673266wmb.7.2020.03.27.03.56.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 27 Mar 2020 03:56:15 -0700 (PDT)
From: Alin Nastac <alin.nastac@gmail.com>
X-Google-Original-From: Alin Nastac <alin.nastac@technicolor.com>
To: Felix Fietkau <nbd@nbd.name>, Hans Dedecker <dedeckeh@gmail.com>,
 openwrt-devel@lists.openwrt.org
Date: Fri, 27 Mar 2020 11:56:09 +0100
Message-Id: <1585306569-16612-1-git-send-email-alin.nastac@technicolor.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_035621_007310_8BD92BD3 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] system-linux: fix PATH_MAX undeclared
 compilation error
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

Issue was introduced in commit 1321c1bd8fe921986c4eb39c3783ddd827b79543.

Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
---
 system-linux.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/system-linux.c b/system-linux.c
index d36d287..775b448 100644
--- a/system-linux.c
+++ b/system-linux.c
@@ -26,6 +26,7 @@
 #include <net/if.h>
 #include <net/if_arp.h>
 
+#include <limits.h>
 #include <arpa/inet.h>
 #include <netinet/ether.h>
 #include <netinet/in.h>
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
