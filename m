Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAF51244EE
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Dec 2019 11:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FmGs/OlsX0nJcW5NTVeDcKl7sS5S1oG9pUNpelvX4bM=; b=m3zhJ4MNYP7r6m
	zNkrm++RIkmVgTj6yg0SlNz41Tovw/59RAg53dzbMc9UBB7JIKHioCdn1PdCI2PjZRkqLMJbDDwcc
	kpRcCx50iwwOaXgEIfB+MhNgFFBeBp8rQMA9YD/v6D1OA9CIy21oIWSOaa/5TbyQpe7VOzILSx0Zt
	nMS6XYMglhvUq20whl5vIDLC/yXSqgBxS8LqhIn/ethJ+OqeqOgeaSDNOcqK8Ir0NjhnaSNrp2DmZ
	vfQy9FiscgL4UpxCs2MCYX+rsSkTPELSzSCqy+1snxJDO8+3TTV7A+FWpgp1m0gcu5XliFH0FPXNq
	xMCzDdgTML/kdjYEC86Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWpP-0005G3-T1; Wed, 18 Dec 2019 10:45:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWp9-0005Em-Bc
 for openwrt-devel@lists.openwrt.org; Wed, 18 Dec 2019 10:45:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id z7so1687154wrl.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Dec 2019 02:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=f+dZyHQ9rzsR4xKGhCGxrsVzx3dLmmbC6r2b5DI1WYY=;
 b=roocC9bBIedtg9nLHCHhn7+4nVJ7/0Uyq65ZWgM+MOiF21xdv1iBnvZOO7RUN66UDT
 iBtQmR5t65s2Xkiw9ymzd7MOK5awzkjzNC13j0jIJNXDI6n/pmZF/bpFP25jeuOGypQ6
 mHU7C9fQbN1NA7XIBt6VWJIX/TBcqZMSLTuXuFqUhcOf9Tfzsr0zKy4nSIuOsyPhkEmM
 XYPOIWtyDyPqZA51LDpzZxghCmmt+i6EtKTGVqf9SYKN34Hzd86BMhFUUwtlY05upwc8
 mNnrEBlqvIWBONCoHNwiYgxjhRvgQ61ojuC/kSb+YyvBuvrUclqDZjRT83jHydtM5XpP
 eNUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=f+dZyHQ9rzsR4xKGhCGxrsVzx3dLmmbC6r2b5DI1WYY=;
 b=LOwfBA9le38tSrI6pegL4MaHAzwDrpb83DnJ385JpFy2MCcREIiKltkjD6WvyAY1ph
 R3ZtlX738jeV2bOj7vU3KVQSmp4ZVmSYIPuWhektIuz2CxLzu/ToEXiCmmAXhM+VTXrA
 tZIXwv0KuqoyerLGAGoill3zVJmLXywZw5vJRSSMcJhxU7WqazvqXvo/Ow+Zg2Klk+Wv
 jznMe+TUxaVcIHZI4R4hHK0G6TACNXsn+yk8fdAGBmNRnyBvPfYNptA6WtAjzAN8GCQH
 XkxLnLmw4wvY0iVx1ZrmGY1Dqs2VX9jig1xLBOLzZa64ZoOPlFZ1kTOVOv9m/LgyMxyK
 FwPg==
X-Gm-Message-State: APjAAAWwD7/NdHLXPNByZQqvqNvxyFL1/WHn0b3J55kbT5E/5ed9QztH
 HoXzA1n4breGBV0bDui+EG4=
X-Google-Smtp-Source: APXvYqyIKRWrqHpxUuF4P+votovuikybZS/+zy4iyPmT5Vuf92uC+fx4kti6bleBgNkUxcrgrIMKLA==
X-Received: by 2002:adf:f3d0:: with SMTP id g16mr2170127wrp.2.1576665897186;
 Wed, 18 Dec 2019 02:44:57 -0800 (PST)
Received: from cplx1037.edegem.eu.thmulti.com
 ([2001:4158:f012:f40:2a10:7bff:fec5:6f08])
 by smtp.gmail.com with ESMTPSA id n8sm2114979wrx.42.2019.12.18.02.44.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 18 Dec 2019 02:44:56 -0800 (PST)
From: Alin Nastac <alin.nastac@gmail.com>
To: Felix Fietkau <nbd@nbd.name>,
	Hans Dedecker <dedeckeh@gmail.com>
Date: Wed, 18 Dec 2019 11:44:50 +0100
Message-Id: <1576665890-5819-1-git-send-email-alin.nastac@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_024459_399329_F98190D7 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alin.nastac[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] interface: add IPv6 addresses without
 IFA_F_NOPREFIXROUTE
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
Cc: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When netifd manages the prefix route directly, it will remove it
the moment prefix gets deprecated. This will make it impossible
for the target to send ICMPv6 errors back to LAN devices still
using the deprecated prefix, thus breaking the L-14 requirement
of RFC 7084.

Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
---
 interface-ip.c | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/interface-ip.c b/interface-ip.c
index c159e09..0958fcb 100644
--- a/interface-ip.c
+++ b/interface-ip.c
@@ -905,20 +905,14 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
 	struct device *l3_downlink = iface->l3_dev.dev;
 
 	struct device_addr addr;
-	struct device_route route;
 	memset(&addr, 0, sizeof(addr));
-	memset(&route, 0, sizeof(route));
 
 	addr.addr.in6 = assignment->addr;
 	addr.mask = assignment->length;
-	addr.flags = DEVADDR_INET6 | DEVADDR_OFFLINK;
+	addr.flags = DEVADDR_INET6;
 	addr.preferred_until = prefix->preferred_until;
 	addr.valid_until = prefix->valid_until;
 
-	route.flags = DEVADDR_INET6;
-	route.mask = addr.mask < 64 ? 64 : addr.mask;
-	route.addr = addr.addr;
-
 	if (!add && assignment->enabled) {
 		time_t now = system_get_rtime();
 
@@ -939,10 +933,6 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
 							addr.mask, 0, iface, "unreachable", true);
 		}
 
-		clear_if_addr(&route.addr, route.mask);
-		interface_set_route_info(iface, &route);
-
-		system_del_route(l3_downlink, &route);
 		system_add_address(l3_downlink, &addr);
 
 		assignment->addr = in6addr_any;
@@ -955,7 +945,6 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
 				return;
 
 			assignment->addr = addr.addr.in6;
-			route.addr = addr.addr;
 		}
 
 		if (system_add_address(l3_downlink, &addr))
@@ -976,11 +965,6 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
 			}
 		}
 
-		clear_if_addr(&route.addr, route.mask);
-		interface_set_route_info(iface, &route);
-
-		system_add_route(l3_downlink, &route);
-
 		if (uplink && uplink->l3_dev.dev && !(l3_downlink->settings.flags & DEV_OPT_MTU6)) {
 			int mtu = system_update_ipv6_mtu(uplink->l3_dev.dev, 0);
 			int mtu_old = system_update_ipv6_mtu(l3_downlink, 0);
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
