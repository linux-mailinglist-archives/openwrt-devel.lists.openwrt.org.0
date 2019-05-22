Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC972690B
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 May 2019 19:25:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+GvAUNdLI2ehgLyAazP/yJLL1SCRkrf/geIdlBfFpc=; b=DiO7bcrPc0Tzk/
	5h5WZdscFsUDXnOQFpsdB3clT920FL9cUs5hUmh3aUmRwIsIrAqESZMI5y5pybYL9XQxXO+29fQV4
	SleQfTZoCGk8W7vDy53as5qSkHB0JW6oCkKnujOKeEzdvQKyPe3IwTlLLQvbRYSajDcHi5huKpU7X
	zBgPZS3VTvPDD4PyuO+n/mQcyI3RJtfFkbEmvLfPWJF5KAVBSqbMDWJvcNpPa5ILgPuEkzBNKUokI
	MPau9GQ01/2jDZFIRvK0wXUYYxBg2fk/0CMnSr30/r3a9gx3x/DZnYGjrdsOsJgMjWPQfYChvX6pQ
	75lygh6rtRZiBZqIyibQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUz5-0000XG-DA; Wed, 22 May 2019 17:24:59 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUyu-0000LU-H0
 for openwrt-devel@lists.openwrt.org; Wed, 22 May 2019 17:24:51 +0000
X-Originating-IP: 95.90.180.177
Received: from dawn.lan (ip5f5ab4b1.dynamic.kabel-deutschland.de
 [95.90.180.177]) (Authenticated sender: mail@aparcar.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id E076E60008;
 Wed, 22 May 2019 17:24:27 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 22 May 2019 19:24:19 +0200
Message-Id: <20190522172419.20630-2-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522172419.20630-1-mail@aparcar.org>
References: <20190522172419.20630-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_102449_312295_1BF4836F 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.1 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] procd: add notification if running in
 container
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Paul Spooren <mail@aparcar.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 state.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/state.c b/state.c
index ff1734f..9f196ee 100644
--- a/state.c
+++ b/state.c
@@ -101,6 +101,9 @@ static void state_enter(void)
 	switch (state) {
 	case STATE_EARLY:
 		LOG("- early -\n");
+		if (is_container())
+			LOG("This isn't real life. I'm running in a container.\n");
+
 		watchdog_init(0);
 		hotplug("/etc/hotplug.json");
 		procd_coldplug();
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
