Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1251C87C8
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 May 2020 13:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9ivACJpIGmVxpqTQDxOHdt6uI+BfDM3TYJJVpzqnWeo=; b=oXlE67lHqNfEjh
	8n3Vj/hO1Wll7rtuugwuoTTg3JKJ/VmMom5Xvwepiu4BVMysPl1MUMV1rdkMta3FUksu0RJeSbumU
	qsxs73qwM+M1x+HAvBbxaSSgkz4pKTpA0/F0yYvMSylCAaRCqmMz+ZHD2j9BmpLsLeaApXbDdJAQD
	Em4bmbS5KM9LmO63kRqWXKp4NfrPieRHMuK+7RIJO/I/v21omD7DuaBTqoto9lAL3K3S0+dsHAfdd
	abAzHC9BsG46jME+0/ago1b0ucOZCCzQTfwTvUURbEsg8vzFpC4guBtJT3qX4ari94AJJFu5iAbC7
	cedH0Nu7dJNg9kHAqnAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeTt-0006do-Gd; Thu, 07 May 2020 11:14:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeTn-0006d3-Ky
 for openwrt-devel@lists.openwrt.org; Thu, 07 May 2020 11:14:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id s8so5884172wrt.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 07 May 2020 04:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=+kr6LAXVIR1l5WHyTMrnIjPk+ci0G5a0IGPq/9HC630=;
 b=WNZkLg8NfUH4mF2cHMktvR1ejXe/X2drn8kI76i1hsv4O47sh9Rx7PU43NmptRIIt5
 qaj1fNn+fkEvbsQ9HGAK1YezRz+wwpDcWhvHg3mU1LNNNYWxs5oyTNkgkfDJFZWq2U4S
 SEk1k1CAuDc9oZAaiFuq8lzDB+zJtD0NQ0j+RVjrN/d2ZFxds5ZMiEcn8MlQtIY3ft3I
 5AxtZznAZEdsbdvaeaJH+a4VixAPjUEtI+kjrxIlHmVxFxpFoP6waCTPwvlYX9oKvVUP
 BjnODR/AyKoMr9DSJd1AYGq83/3ATnroshdyRD4VF/xU50N89gZIgSnKLe9TtQ/yzMj5
 d8YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=+kr6LAXVIR1l5WHyTMrnIjPk+ci0G5a0IGPq/9HC630=;
 b=AdQejzylAa4f4klK9PAeHHUjzls1OK/K+sOFChUtsIqHUmifx86JVvmdX55Ny9wHnZ
 H4vwy1+H1Ziv+PCtg5d9S8+Z0Ojls2Ge9ot7cKKjh5WbfplyuRkc4Bywffz7DkzO0f4Z
 U5e26ECJ8MKuj5fIeyQLA7FcpF/VBzOc5+AmHdF4xIon3vfDAn8QdSe0Iu8rpDWFNYz1
 FCsQwPhjgRoB5ylITo2lOoPwSgpZJJrcXjAsjD4bfhGUDMcqOCS60bML2Hl/cg1bGEDo
 Gx0i9ooGeDMX336HY7GYmRGjpJzewKldD9py8xzXYVin1qIH0c9YwuWBkEw10KE9nPPM
 PhUg==
X-Gm-Message-State: AGi0PuZNT8xkF4vaVrzpTEXwM+QHe6UwWObrY6LVnyVNBzfa5ITctH91
 6UKtIfetYZKRMllQITuuav0=
X-Google-Smtp-Source: APiQypIgVPf7okfDDo5nm/99uVEEGUuChXj/jyhbSjMlqwdAaFQykv1yNmzTBDG/m1vlVTlO1p36NQ==
X-Received: by 2002:adf:e58d:: with SMTP id l13mr15883934wrm.187.1588850053042; 
 Thu, 07 May 2020 04:14:13 -0700 (PDT)
Received: from cplx1037.edegem.eu.thmulti.com (14.125.146.82.ipv4.evonet.be.
 [82.146.125.14])
 by smtp.gmail.com with ESMTPSA id h2sm7767999wmf.34.2020.05.07.04.14.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 04:14:12 -0700 (PDT)
From: Alin Nastac <alin.nastac@gmail.com>
To: Jo-Philipp Wich <jo@mein.io>, Hans Dedecker <dedeckeh@gmail.com>,
 openwrt-devel@lists.openwrt.org
Date: Thu,  7 May 2020 13:14:06 +0200
Message-Id: <1588850046-9810-1-git-send-email-alin.nastac@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_041415_713776_7B6C3EEE 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [firewall3][PATCH] redirects: fix segmentation fault
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

Fixes 9d7f49df47ad ("redurects: add support to define multiple zones for dnat reflection rules")

Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
---
 redirects.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/redirects.c b/redirects.c
index b928287..45a6cb1 100644
--- a/redirects.c
+++ b/redirects.c
@@ -708,9 +708,8 @@ expand_redirect(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		return;
 
 	ext_addrs = fw3_resolve_zone_addresses(redir->_src, &redir->ip_dest);
-
 	if (!ext_addrs)
-		goto out;
+		return;
 
 	list_for_each_entry(ext_addr, ext_addrs, list)
 	{
@@ -733,6 +732,9 @@ expand_redirect(struct fw3_ipt_handle *handle, struct fw3_state *state,
 				continue;
 
 			int_addrs = fw3_resolve_zone_addresses(zone, NULL);
+			if (!int_addrs)
+				continue;
+
 			list_for_each_entry(int_addr, int_addrs, list)
 			{
 				if (!fw3_is_family(int_addr, handle->family))
@@ -755,12 +757,12 @@ expand_redirect(struct fw3_ipt_handle *handle, struct fw3_state *state,
 					                 &ref_addr, int_addr, ext_addr, reflection_zone);
 				}
 			}
+
+			fw3_free_list(int_addrs);
 		}
 	}
 
-out:
 	fw3_free_list(ext_addrs);
-	fw3_free_list(int_addrs);
 }
 
 void
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
