Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E56719572B
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 13:36:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qSgPS0adrlu7IidkGV9T9uCX5KlaGnVQPMqki0ltnqU=; b=espoVLDX/G+sVq
	APbvs2lQPyuk+wqv0NzH8YLs1HaDCq7VqJ2/2p+nws3yox8BodfczwtItCkpqdze8sYzgGAXYHUMD
	FQv/gwEqZcbUUk7R2xq3NAjL3v04nhxpgpq0XvYwW72kid9Ms/bvBzHWp59dh0mELdAY3zB3DSaJC
	HJjoqiLbLjDZDGihbUq5DBxpZIi7ME7dlnuPAzOvWMpBLA7NaFJ/ONKEvwwvNS5yh3zRnVggj+RIB
	IEyg+WLmb3iQInb9O5BFUkO5fC5jii7qCZZzb0ubGi1NR7UNW9UXl0v1+Bo02brd/RZ756OpKwwe5
	+eG0pJh3WWJhdLh7Zhyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoDx-0004O0-2i; Fri, 27 Mar 2020 12:36:33 +0000
Received: from lmr1.uibk.ac.at ([138.232.1.142] helo=smtp.uibk.ac.at)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoDr-0004NU-4m
 for openwrt-devel@lists.openwrt.org; Fri, 27 Mar 2020 12:36:29 +0000
Received: from localhost.localdomain (ip5f5ac5c6.dynamic.kabel-deutschland.de
 [95.90.197.198]) (authenticated bits=0)
 by smtp.uibk.ac.at (8.14.4/8.14.4/F1) with ESMTP id 02RCa98G031935
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Fri, 27 Mar 2020 13:36:18 +0100
From: Peter Stadler <peter.stadler@student.uibk.ac.at>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 27 Mar 2020 13:36:08 +0100
Message-Id: <20200327123608.198650-1-peter.stadler@student.uibk.ac.at>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Spam-Score: () -15.0 ALL_TRUSTED,RCV_SMTP_AUTH,RCV_SMTP_UIBK
X-Scanned-By: MIMEDefang 2.84 at uibk.ac.at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_053627_505172_BF2890D9 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.232.1.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [138.232.1.142 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] netifd: fix 14_migrate-dhcp-release script
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
Cc: Peter Stadler <peter.stadler@student.uibk.ac.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

prepend 'uci' to 'commit network'

Signed-off-by: Peter Stadler <peter.stadler@student.uibk.ac.at>
---
 .../netifd/files/etc/uci-defaults/14_migrate-dhcp-release       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release b/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
index 651c437cb2..f1b384eecc 100644
--- a/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
+++ b/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
@@ -18,6 +18,6 @@ migrate_release() {
 
 config_load network
 config_foreach migrate_release interface
-commit network
+uci commit network
 
 exit 0
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
