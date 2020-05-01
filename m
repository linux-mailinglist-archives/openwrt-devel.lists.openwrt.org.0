Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22411C1DCB
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 21:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U1QBa7kMBdOlrluDuJPUC5pLHlfAuoovyzwemzPjSXo=; b=sxuy7vEZ3WfaXJ
	7dcTZWykiC5Z+g3B9hfP93vCfPuAEbI12QLz45/chXt3tO5iX4ERDETy4ZvDt2wOgLxD5ZQX/LUPl
	7tmU1q0NL/1KctrYH7/9xRgsE/cQBhZ4zg6UiD8dWcVGD2hZuq4KW0q33/IYw/CTtHFSpN50ceed1
	gkAUMCrFfkCM8hwIZtO9HYgxs/oVtZzK/xzIXTmd5pfKK6qS7jWttW4Y+TKhdjt4yYuSEL9wlSPHH
	4GiODcrbOyanEEJ0yVqjdZKz0Avvjx8VVFf8Is084bQ4k0FE3alyqgIjS0boct2ekl8w1pbKJNyFF
	Jh6e7fIxzUkplwitqNNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUbEM-0006s1-RV; Fri, 01 May 2020 19:21:50 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUbEG-0006qp-2c
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 19:21:45 +0000
Received: from son-of-builder.redfish-solutions.com
 (son-of-builder.redfish-solutions.com [192.168.1.56])
 (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 041JLc2W021698
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 1 May 2020 13:21:38 -0600
From: "Philip Prindeville" <philipp@redfish-solutions.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 May 2020 13:21:35 -0600
Message-Id: <20200501192135.15043-1-philipp@redfish-solutions.com>
X-Mailer: git-send-email 2.17.2
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_122144_204271_59ACF0A4 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/1] firewall3: add --contiguous to
 time-based rules where needed
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
Cc: Philip Prindeville <philipp@redfish-solutions.com>,
 Jo-Philipp Wich <jo@mein.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Philip Prindeville <philipp@redfish-solutions.com>

If the start_time > stop_time on a rule, then the --contiguous arg
should be included in the rule.

Signed-off-by: Philip Prindeville <philipp@redfish-solutions.com>
---
 iptables.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/iptables.c b/iptables.c
index 559fe7defef3be85c4eb2934884caf549f932bc5..5c02e6e26c93468f4ef6a7f917069bb49985aad8 100644
--- a/iptables.c
+++ b/iptables.c
@@ -1099,6 +1099,9 @@ fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
 		fw3_ipt_rule_addarg(r, false, "--timestop", buf);
 	}
 
+	if (time->timestart && time->timestop && time->timestart > time->timestop)
+		fw3_ipt_rule_addarg(r, false, "--contiguous", NULL);
+
 	if (time->monthdays & 0xFFFFFFFE)
 	{
 		for (i = 1, p = buf; i < 32; i++)
-- 
2.17.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
