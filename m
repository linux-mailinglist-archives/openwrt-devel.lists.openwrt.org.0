Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA9B2B9B9
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 20:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HEyNq4TaMRm+UUZcDRVR9bW7yYpyCpR+uFm0ADuodWM=; b=c+0KG+cwJooMOB
	zbV5SdoKga7hbYYIB/duKw2ts2jmzr7gPzOwIM1h2p+RMto9NwusQtrOvdb06vj6MHuz2NCwcOW9v
	Ib65BVDm5nB7jGCu3jHoUOTx1+8ns6g+ACKS7OKi8+wLSKKcJkM0fInmAoyDDnrOxoaJry6LbrnD3
	iUgqeFR/CAYB9xzoWbwIKj6eS0jd+NOzDkb3V6lWLmfDTLpFSeyMPkfibdwoog6eyhCt6475QzacT
	op8fyFaX5N1og5fWG/KEICdRNwbyRiOfYJARJdQ8437KREcggK9/wy0ml0zOHbOQ0Z5iyFLhD+gxr
	TYVAQCUFmivGiIeTIdYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJxf-0000gH-NM; Mon, 27 May 2019 18:03:03 +0000
Received: from mail-ve1eur02on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::619]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJxV-0000g4-2g
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 18:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6i7OU247LGyZXW9R35/Bz24pSVFN9J2YXq67gnPHSPQ=;
 b=k0YeT41G62lJ0PE9g+bt2QmHExJPU8Bj8JlaifXhNxjZgXvlJIsVkBRYKUHlIb97zpz2gUH4WP5aQ6M/9EGnJxvIUShJZ2RcCZp4k/ykOMvsTt2d0fIinmbqWjMcSeoSzlRj8Ur0AM+Eubyf3vc40Hn7fSulI3MomFXZxW9rUoE=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB3263.eurprd03.prod.outlook.com (52.134.12.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Mon, 27 May 2019 18:02:46 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::603a:6eb9:2073:bde4]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::603a:6eb9:2073:bde4%5]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 18:02:46 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH] restoring dscp on ingress
Thread-Index: AQHVFLZjMBxKj/HTWkGXGtcPNM7ifw==
Date: Mon, 27 May 2019 18:02:46 +0000
Message-ID: <20190527180210.34910-1-ldir@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP265CA0083.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:76::23) To VI1PR0302MB2750.eurprd03.prod.outlook.com
 (2603:10a6:800:e3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1 (Apple Git-117)
x-originating-ip: [2a02:c7f:1268:6500::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d2be05e1-914c-4c9b-840a-08d6e2cd85ce
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:VI1PR0302MB3263; 
x-ms-traffictypediagnostic: VI1PR0302MB3263:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR0302MB3263E1A1F36DFA230C52AC20C91D0@VI1PR0302MB3263.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(366004)(376002)(346002)(136003)(396003)(189003)(199004)(2501003)(316002)(486006)(2616005)(6506007)(102836004)(66556008)(74482002)(66574012)(5660300002)(46003)(1076003)(186003)(386003)(476003)(2351001)(53936002)(6116002)(30864003)(86362001)(71200400001)(71190400001)(107886003)(53946003)(50226002)(81166006)(14444005)(5640700003)(8936002)(6916009)(73956011)(2906002)(66946007)(66476007)(64756008)(6512007)(6486002)(99286004)(305945005)(7736002)(6306002)(14454004)(52116002)(68736007)(36756003)(8676002)(4326008)(256004)(508600001)(6436002)(25786009)(81156014)(66446008)(2004002)(579004)(559001)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3263;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ATPoueMqSxQFo6fqae86hD1wTWfxGoNCUWgiv4KS3angBjR+q1Tu0HGxrtFEUPny5f5ui7ni74hZ/0MwjH5DBYBUH0zvg+WstvWKOvKRlue8MABaDOLMcKX2pe4cVavKKiqoTIMK0SswKbd4aJg72sr5uIDdqSQxC7vwI0qC2sHoTE/J9QL+okJYeXCDAsQN3AtfXuvhDwP1khpDek3HGP5tCe60sfEroEFVTOkZxAbHbXyraQZG6/jWMhSAc/X4lLJwAVWCL6A2CWSfnEBPbgEYpVyJKQ3+tPHspqWSCkl5T5F+ptuytxjTQMIORoUuQ1C6IT2FyJo1Fc8dAqv3yM7EVjHUTFEDVIMWCg5Anfha66GPb2naN6M02VFI7QdFvKexVpli0flJXK7J0a0FLbb8/0vo7nbn0e/nCbIoLqM=
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: d2be05e1-914c-4c9b-840a-08d6e2cd85ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 18:02:46.5815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kevin@darbyshire-bryant.me.uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3263
X-Spam-Note: CRM114 run bypassed due to message size (102008 bytes)
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:619 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] restoring dscp on ingress
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
Cc: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

A combination of tc filter action act_ctinfo to do the restoration,
a new savedscp option to iptables xt_connmark to store the DSCP

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
 package/kernel/linux/modules/netsupport.mk    |  10 +-
 ...-experimental-support-for-act_ctinfo.patch | 374 ++++++++++
 .../iptables/patches/0001-savedscp.patch      | 213 ++++++
 ...et-sched-Introduce-act_ctinfo-action.patch | 636 +++++++++++++++++
 ...etfilter-connmark-introduce-savedscp.patch | 107 +++
 ...et-sched-Introduce-act_ctinfo-action.patch | 658 ++++++++++++++++++
 ...etfilter-connmark-introduce-savedscp.patch | 142 ++++
 7 files changed, 2139 insertions(+), 1 deletion(-)
 create mode 100644 package/network/utils/iproute2/patches/0001-initial-experimental-support-for-act_ctinfo.patch
 create mode 100644 package/network/utils/iptables/patches/0001-savedscp.patch
 create mode 100644 target/linux/generic/hack-4.14/0001-net-sched-Introduce-act_ctinfo-action.patch
 create mode 100644 target/linux/generic/hack-4.14/0001-netfilter-connmark-introduce-savedscp.patch
 create mode 100644 target/linux/generic/hack-4.19/0001-net-sched-Introduce-act_ctinfo-action.patch
 create mode 100644 target/linux/generic/hack-4.19/0001-netfilter-connmark-introduce-savedscp.patch

diff --git a/package/kernel/linux/modules/netsupport.mk b/package/kernel/linux/modules/netsupport.mk
index d92992e13f..7ab6d3b1b3 100644
--- a/package/kernel/linux/modules/netsupport.mk
+++ b/package/kernel/linux/modules/netsupport.mk
@@ -803,7 +803,6 @@ endef
 
 $(eval $(call KernelPackage,sched-mqprio))
 
-
 define KernelPackage/sched-connmark
   SUBMENU:=$(NETWORK_SUPPORT_MENU)
   TITLE:=Traffic shaper conntrack mark support
@@ -814,6 +813,15 @@ define KernelPackage/sched-connmark
 endef
 $(eval $(call KernelPackage,sched-connmark))
 
+define KernelPackage/sched-ctinfo
+  SUBMENU:=$(NETWORK_SUPPORT_MENU)
+  TITLE:=Traffic shaper ctinfo support
+  DEPENDS:=+kmod-sched-core +kmod-ipt-core +kmod-ipt-conntrack-extra
+  KCONFIG:=CONFIG_NET_ACT_CTINFO
+  FILES:=$(LINUX_DIR)/net/sched/act_ctinfo.ko
+  AUTOLOAD:=$(call AutoLoad,71, act_ctinfo)
+endef
+$(eval $(call KernelPackage,sched-ctinfo))
 
 define KernelPackage/sched-ipset
   SUBMENU:=$(NETWORK_SUPPORT_MENU)
diff --git a/package/network/utils/iproute2/patches/0001-initial-experimental-support-for-act_ctinfo.patch b/package/network/utils/iproute2/patches/0001-initial-experimental-support-for-act_ctinfo.patch
new file mode 100644
index 0000000000..6983e7faed
--- /dev/null
+++ b/package/network/utils/iproute2/patches/0001-initial-experimental-support-for-act_ctinfo.patch
@@ -0,0 +1,374 @@
+From 5dd8945255b679246041866285faab2e4348362c Mon Sep 17 00:00:00 2001
+From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+Date: Fri, 15 Mar 2019 09:35:37 +0000
+Subject: [PATCH] initial experimental support for act_ctinfo
+
+switchtoctinfo
+
+Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+---
+ include/uapi/linux/pkt_cls.h          |   1 +
+ include/uapi/linux/tc_act/tc_ctinfo.h |  52 +++++
+ tc/Makefile                           |   1 +
+ tc/m_ctinfo.c                         | 266 ++++++++++++++++++++++++++
+ 4 files changed, 320 insertions(+)
+ create mode 100644 include/uapi/linux/tc_act/tc_ctinfo.h
+ create mode 100644 tc/m_ctinfo.c
+
+diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
+index 95d0db2a..7df0e808 100644
+--- a/include/uapi/linux/pkt_cls.h
++++ b/include/uapi/linux/pkt_cls.h
+@@ -68,6 +68,7 @@ enum {
+ 	TCA_ID_UNSPEC=0,
+ 	TCA_ID_POLICE=1,
+ 	/* other actions go here */
++	TCA_ID_CTINFO=27,
+ 	__TCA_ID_MAX=255
+ };
+ 
+diff --git a/include/uapi/linux/tc_act/tc_ctinfo.h b/include/uapi/linux/tc_act/tc_ctinfo.h
+new file mode 100644
+index 00000000..48c40f65
+--- /dev/null
++++ b/include/uapi/linux/tc_act/tc_ctinfo.h
+@@ -0,0 +1,52 @@
++/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
++#ifndef __UAPI_TC_CTINFO_H
++#define __UAPI_TC_CTINFO_H
++
++#include <linux/types.h>
++#include <linux/pkt_cls.h>
++
++struct tc_ctinfo {
++	tc_gen;
++};
++
++struct tc_ctinfo_dscp {
++	__u32 mask;
++	__u32 statemask;
++};
++
++struct tc_ctinfo_cpmark {
++	__u32 mask;
++};
++
++struct tc_ctinfo_stats_dscp {
++	__u64 set;
++	__u64 error;
++};
++
++struct tc_ctinfo_stats_cpmark {
++	__u64 set;
++};
++
++enum {
++	TCA_CTINFO_UNSPEC,
++	TCA_CTINFO_PAD,
++	TCA_CTINFO_TM,
++	TCA_CTINFO_ACT,
++	TCA_CTINFO_ZONE,
++	TCA_CTINFO_PARMS_DSCP,
++	TCA_CTINFO_PARMS_CPMARK,
++	TCA_CTINFO_MODE_DSCP,
++	TCA_CTINFO_MODE_CPMARK,
++	TCA_CTINFO_STATS_DSCP,
++	TCA_CTINFO_STATS_CPMARK,
++	__TCA_CTINFO_MAX
++};
++
++#define TCA_CTINFO_MAX (__TCA_CTINFO_MAX - 1)
++
++enum {
++	CTINFO_MODE_DSCP	= BIT(0),
++	CTINFO_MODE_CPMARK	= BIT(1)
++};
++
++#endif
+diff --git a/tc/Makefile b/tc/Makefile
+index 2edaf2c8..ec93a9a1 100644
+--- a/tc/Makefile
++++ b/tc/Makefile
+@@ -48,6 +48,7 @@ TCMODULES += m_csum.o
+ TCMODULES += m_simple.o
+ TCMODULES += m_vlan.o
+ TCMODULES += m_connmark.o
++TCMODULES += m_ctinfo.o
+ TCMODULES += m_bpf.o
+ TCMODULES += m_tunnel_key.o
+ TCMODULES += m_sample.o
+diff --git a/tc/m_ctinfo.c b/tc/m_ctinfo.c
+new file mode 100644
+index 00000000..1ee04452
+--- /dev/null
++++ b/tc/m_ctinfo.c
+@@ -0,0 +1,266 @@
++/*
++ * m_ctinfo.c		netfilter ctinfo dscp<->ctinfo mark action
++ *
++ * Copyright (c) 2019 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
++ *
++ * This program is free software; you can redistribute it and/or modify it
++ * under the terms and conditions of the GNU General Public License,
++ * version 2, as published by the Free Software Foundation.
++ *
++ * This program is distributed in the hope it will be useful, but WITHOUT
++ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
++ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
++ * more details.
++ *
++ * You should have received a copy of the GNU General Public License along with
++ * this program; if not, see <http://www.gnu.org/licenses>.
++ */
++
++#include <stdio.h>
++#include <stdlib.h>
++#include <unistd.h>
++#include <string.h>
++#include "utils.h"
++#include "tc_util.h"
++#include <linux/tc_act/tc_ctinfo.h>
++
++static void
++explain(void)
++{
++	fprintf(stderr, "Usage: ... ctinfo [dscp mask[/statemask]] [mark [mask]] [zone ZONE] [CONTROL] [index <INDEX>]\n");
++	fprintf(stderr, "where :\n"
++		"\tMASK is the bitmask to store/restore DSCP\n"
++		"\tSTATEMASK is the bitmask to determine conditional storing/restoring\n"
++		"\tZONE is the conntrack zone\n"
++		"\tCONTROL := reclassify | pipe | drop | continue | ok |\n"
++		"\t           goto chain <CHAIN_INDEX>\n");
++}
++
++static void
++usage(void)
++{
++	explain();
++	exit(-1);
++}
++
++static int
++parse_ctinfo(struct action_util *a, int *argc_p, char ***argv_p, int tca_id,
++	      struct nlmsghdr *n)
++{
++	struct tc_ctinfo_cpmark cpmark = {
++		.mask = ~0
++	};
++	struct tc_ctinfo_dscp dscp = {};
++	struct tc_ctinfo sel = {};
++	char **argv = *argv_p;
++	int argc = *argc_p;
++	int ok = 0;
++	struct rtattr *tail;
++	unsigned short zone = 0;
++	int mark = 0;
++
++	while (argc > 0) {
++		if (matches(*argv, "ctinfo") == 0) {
++			ok = 1;
++			argc--;
++			argv++;
++		} else if (matches(*argv, "help") == 0) {
++			usage();
++		} else {
++			break;
++		}
++
++	}
++
++	if (!ok) {
++		explain();
++		return -1;
++	}
++
++	if (argc) {
++		if (matches(*argv, "dscp") == 0) {
++			NEXT_ARG();
++			char *slash;
++			if ((slash = strchr(*argv, '/')))
++				*slash = '\0';
++			if (get_u32(&dscp.mask, *argv, 0)) {
++				fprintf(stderr, "ctinfo: Illegal dscp \"mask\"\n");
++				return -1;
++			}
++			if (slash) {
++				if (get_u32(&dscp.statemask, slash + 1, 0)) {
++					fprintf(stderr, "ctinfo: Illegal dscp \"statemask\"\n");
++					return -1;
++				}
++			}
++			argc--;
++			argv++;
++		}
++	}
++
++	/* mark has optional mask parameter, so the next arg might not exist, */
++	/* or it might be the next option, or it may actually be a 32bit mask */
++	if (argc) {
++		if (matches(*argv, "mark") == 0) {
++			mark++;
++			if (NEXT_ARG_OK()) {
++				NEXT_ARG_FWD();
++				if (!get_u32(&cpmark.mask, *argv, 0)) {
++					NEXT_ARG_FWD(); /* was a mask */
++				}
++			} else {
++				NEXT_ARG_FWD();
++			}
++		}
++	}
++
++	if (argc) {
++		if (matches(*argv, "zone") == 0) {
++			NEXT_ARG();
++			if (get_u16(&zone, *argv, 10)) {
++				fprintf(stderr, "ctinfo: Illegal \"zone\"\n");
++				return -1;
++			}
++			argc--;
++			argv++;
++		}
++	}
++
++	parse_action_control_dflt(&argc, &argv, &sel.action, false, TC_ACT_PIPE);
++
++	if (argc) {
++		if (matches(*argv, "index") == 0) {
++			NEXT_ARG();
++			if (get_u32(&sel.index, *argv, 10)) {
++				fprintf(stderr, "ctinfo: Illegal \"index\"\n");
++				return -1;
++			}
++			argc--;
++			argv++;
++		}
++	}
++
++	tail = addattr_nest(n, MAX_MSG, tca_id);
++	addattr_l(n, MAX_MSG, TCA_CTINFO_ACT, &sel, sizeof(sel));
++	if (zone)
++		addattr16(n, MAX_MSG, TCA_CTINFO_ZONE, zone);
++
++	if (dscp.mask) {
++		addattr(n, MAX_MSG, TCA_CTINFO_MODE_DSCP);
++		addattr_l(n, MAX_MSG, TCA_CTINFO_PARMS_DSCP, &dscp, sizeof(dscp));
++	}
++
++	if (mark) {
++		addattr(n, MAX_MSG, TCA_CTINFO_MODE_CPMARK);
++		addattr_l(n, MAX_MSG, TCA_CTINFO_PARMS_CPMARK, &cpmark, sizeof(cpmark));
++	}
++
++	addattr_nest_end(n, tail);
++
++	*argc_p = argc;
++	*argv_p = argv;
++	return 0;
++}
++
++static int print_ctinfo(struct action_util *au, FILE *f, struct rtattr *arg)
++{
++	struct tc_ctinfo_dscp *ci_cpmark = NULL;
++	struct tc_ctinfo_dscp *ci_dscp = NULL;
++	struct rtattr *tb[TCA_CTINFO_MAX + 1];
++	unsigned short zone = 0;
++	struct tc_ctinfo *ci;
++
++	if (arg == NULL)
++		return -1;
++
++	parse_rtattr_nested(tb, TCA_CTINFO_MAX, arg);
++	if (!tb[TCA_CTINFO_ACT]) {
++		print_string(PRINT_FP, NULL, "%s", "[NULL ctinfo parameters]");
++		return -1;
++	}
++
++	ci = RTA_DATA(tb[TCA_CTINFO_ACT]);
++
++	if (tb[TCA_CTINFO_MODE_DSCP]) {
++		if (!tb[TCA_CTINFO_PARMS_DSCP]) {
++			print_string(PRINT_FP, NULL, "%s", "[NULL dscp parameters]");
++			return -1;
++		} else {
++			if (RTA_PAYLOAD(tb[TCA_CTINFO_PARMS_DSCP]) >= sizeof(ci_dscp)) {
++				ci_dscp = RTA_DATA(tb[TCA_CTINFO_PARMS_DSCP]);
++			} else {
++				print_string(PRINT_FP, NULL, "%s", "[invalid dscp parameters]");
++			}
++		}
++	}
++
++	if (tb[TCA_CTINFO_MODE_CPMARK]) {
++		if (!tb[TCA_CTINFO_PARMS_CPMARK]) {
++			print_string(PRINT_FP, NULL, "%s", "[NULL cpmark parameters]");
++			return -1;
++		} else {
++			if (RTA_PAYLOAD(tb[TCA_CTINFO_PARMS_CPMARK]) >= sizeof(ci_cpmark)) {
++				ci_cpmark = RTA_DATA(tb[TCA_CTINFO_PARMS_CPMARK]);
++			} else {
++				print_string(PRINT_FP, NULL, "%s", "[invalid cpmark parameters]");
++			}
++		}
++	}
++
++	if (tb[TCA_CTINFO_ZONE] &&
++	    RTA_PAYLOAD(tb[TCA_CTINFO_ZONE]) >= sizeof(__u16))
++			zone = rta_getattr_u16(tb[TCA_CTINFO_ZONE]);
++
++	print_string(PRINT_ANY, "kind", "%s ", "ctinfo");
++	print_hu(PRINT_ANY, "zone", "zone %u", zone);
++	print_action_control(f, " ", ci->action, "");
++
++	print_string(PRINT_FP, NULL, "%s", _SL_);
++	print_uint(PRINT_ANY, "index", "\t index %u", ci->index);
++	print_int(PRINT_ANY, "ref", " ref %d", ci->refcnt);
++	print_int(PRINT_ANY, "bind", " bind %d", ci->bindcnt);
++
++	if (tb[TCA_CTINFO_MODE_DSCP]) {
++		if (ci_dscp) {
++			print_0xhex(PRINT_ANY, "dscpmask", " dscp %#llx", ci_dscp->mask);
++			print_0xhex(PRINT_ANY, "dscpstatemask", "/%#llx", ci_dscp->statemask);
++		}
++	}
++
++	if (tb[TCA_CTINFO_MODE_CPMARK]) {
++		if (ci_cpmark) {
++			print_0xhex(PRINT_ANY, "mark", " mark %#llx", ci_cpmark->mask);
++		}
++	}
++
++	if (show_stats) {
++		if (tb[TCA_CTINFO_TM]) {
++			struct tcf_t *tm = RTA_DATA(tb[TCA_CTINFO_TM]);
++
++			print_tm(f, tm);
++		}
++		if (tb[TCA_CTINFO_STATS_DSCP]) {
++			struct tc_ctinfo_stats_dscp *dscpstats = RTA_DATA(tb[TCA_CTINFO_STATS_DSCP]);
++
++			if (dscpstats) {
++				print_lluint(PRINT_ANY, "dscpset", " DSCP set %llu", dscpstats->set);
++				print_lluint(PRINT_ANY, "dscperror", " error %llu", dscpstats->error);
++			}
++		}
++		if (tb[TCA_CTINFO_STATS_CPMARK]) {
++			struct tc_ctinfo_stats_cpmark *cpmarkstats = RTA_DATA(tb[TCA_CTINFO_STATS_CPMARK]);
++
++			if (cpmarkstats)
++				print_lluint(PRINT_ANY, "markset", " MARK set %llu", cpmarkstats->set);
++		}
++	}
++	print_string(PRINT_FP, NULL, "%s", _SL_);
++
++	return 0;
++}
++
++struct action_util ctinfo_action_util = {
++	.id = "ctinfo",
++	.parse_aopt = parse_ctinfo,
++	.print_aopt = print_ctinfo,
++};
+-- 
+2.20.1 (Apple Git-117)
+
diff --git a/package/network/utils/iptables/patches/0001-savedscp.patch b/package/network/utils/iptables/patches/0001-savedscp.patch
new file mode 100644
index 0000000000..396c8012ec
--- /dev/null
+++ b/package/network/utils/iptables/patches/0001-savedscp.patch
@@ -0,0 +1,213 @@
+From 69b427fb5e1211c1110ce63be62b70504d04b0ff Mon Sep 17 00:00:00 2001
+From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+Date: Sat, 23 Mar 2019 10:21:03 +0000
+Subject: [PATCH] savedscp
+
+Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+---
+ extensions/libxt_CONNMARK.c           | 68 ++++++++++++++++++++++++++-
+ include/linux/netfilter/xt_connmark.h |  3 +-
+ 2 files changed, 69 insertions(+), 2 deletions(-)
+
+diff --git a/extensions/libxt_CONNMARK.c b/extensions/libxt_CONNMARK.c
+index 21e10913..2dbd7a4a 100644
+--- a/extensions/libxt_CONNMARK.c
++++ b/extensions/libxt_CONNMARK.c
+@@ -49,6 +49,7 @@ enum {
+ 	O_CTMASK,
+ 	O_NFMASK,
+ 	O_MASK,
++	O_SAVEDSCP_MARK,
+ 	F_SET_MARK         = 1 << O_SET_MARK,
+ 	F_SAVE_MARK        = 1 << O_SAVE_MARK,
+ 	F_RESTORE_MARK     = 1 << O_RESTORE_MARK,
+@@ -61,8 +62,10 @@ enum {
+ 	F_CTMASK           = 1 << O_CTMASK,
+ 	F_NFMASK           = 1 << O_NFMASK,
+ 	F_MASK             = 1 << O_MASK,
++	F_SAVEDSCP_MARK	   = 1 << O_SAVEDSCP_MARK,
+ 	F_OP_ANY           = F_SET_MARK | F_SAVE_MARK | F_RESTORE_MARK |
+-	                     F_AND_MARK | F_OR_MARK | F_XOR_MARK | F_SET_XMARK,
++	                     F_AND_MARK | F_OR_MARK | F_XOR_MARK | F_SET_XMARK |
++			     F_SAVEDSCP_MARK,
+ };
+ 
+ static const char *const xt_connmark_shift_ops[] = {
+@@ -75,6 +78,7 @@ static void CONNMARK_help(void)
+ 	printf(
+ "CONNMARK target options:\n"
+ "  --set-mark value[/mask]       Set conntrack mark value\n"
++"  --savedscp-mark dscpmask/statemask    Save DSCP to conntrack mark value\n"
+ "  --save-mark [--mask mask]     Save the packet nfmark in the connection\n"
+ "  --restore-mark [--mask mask]  Restore saved nfmark value\n");
+ }
+@@ -83,6 +87,8 @@ static void CONNMARK_help(void)
+ static const struct xt_option_entry CONNMARK_opts[] = {
+ 	{.name = "set-mark", .id = O_SET_MARK, .type = XTTYPE_MARKMASK32,
+ 	 .excl = F_OP_ANY},
++	{.name = "savedscp-mark", .id = O_SAVEDSCP_MARK, .type = XTTYPE_MARKMASK32,
++	 .excl = F_OP_ANY},
+ 	{.name = "save-mark", .id = O_SAVE_MARK, .type = XTTYPE_NONE,
+ 	 .excl = F_OP_ANY},
+ 	{.name = "restore-mark", .id = O_RESTORE_MARK, .type = XTTYPE_NONE,
+@@ -98,6 +104,8 @@ static const struct xt_option_entry connmark_tg_opts[] = {
+ 	 .excl = F_OP_ANY},
+ 	{.name = "set-mark", .id = O_SET_MARK, .type = XTTYPE_MARKMASK32,
+ 	 .excl = F_OP_ANY},
++	{.name = "savedscp-mark", .id = O_SAVEDSCP_MARK, .type = XTTYPE_MARKMASK32,
++	 .excl = F_OP_ANY},
+ 	{.name = "and-mark", .id = O_AND_MARK, .type = XTTYPE_UINT32,
+ 	 .excl = F_OP_ANY},
+ 	{.name = "or-mark", .id = O_OR_MARK, .type = XTTYPE_UINT32,
+@@ -124,6 +132,8 @@ static const struct xt_option_entry connmark_tg_opts_v2[] = {
+ 	 .excl = F_OP_ANY},
+ 	{.name = "set-mark", .id = O_SET_MARK, .type = XTTYPE_MARKMASK32,
+ 	 .excl = F_OP_ANY},
++	{.name = "savedscp-mark", .id = O_SAVEDSCP_MARK, .type = XTTYPE_MARKMASK32,
++	 .excl = F_OP_ANY},
+ 	{.name = "and-mark", .id = O_AND_MARK, .type = XTTYPE_UINT32,
+ 	 .excl = F_OP_ANY},
+ 	{.name = "or-mark", .id = O_OR_MARK, .type = XTTYPE_UINT32,
+@@ -158,6 +168,7 @@ static void connmark_tg_help(void)
+ "  --restore-mark [--ctmask mask] [--nfmask mask]\n"
+ "                                Copy nfmark to ctmark using masks\n"
+ "  --set-mark value[/mask]       Set conntrack mark value\n"
++"  --savedscp-mark value/mask    Save DSCP to conntrack mark value\n"
+ "  --save-mark [--mask mask]     Save the packet nfmark in the connection\n"
+ "  --restore-mark [--mask mask]  Restore saved nfmark value\n"
+ "  --and-mark value              Binary AND the ctmark with bits\n"
+@@ -210,6 +221,11 @@ static void CONNMARK_parse(struct xt_option_call *cb)
+ 		markinfo->mark = cb->val.mark;
+ 		markinfo->mask = cb->val.mask;
+ 		break;
++	case O_SAVEDSCP_MARK:
++		markinfo->mode = XT_CONNMARK_SAVEDSCP;
++		markinfo->mark = cb->val.mark;
++		markinfo->mask = cb->val.mask;
++		break;
+ 	case O_SAVE_MARK:
+ 		markinfo->mode = XT_CONNMARK_SAVE;
+ 		break;
+@@ -238,6 +254,19 @@ static void connmark_tg_parse(struct xt_option_call *cb)
+ 		info->ctmark = cb->val.mark;
+ 		info->ctmask = cb->val.mark | cb->val.mask;
+ 		break;
++	case O_SAVEDSCP_MARK:
++		info->mode   = XT_CONNMARK_SAVEDSCP;
++		info->ctmark = cb->val.mark;
++		info->ctmask = cb->val.mask;
++		info->nfmask = info->ctmark ? ffs(info->ctmark) - 1 : 0;
++		/* need 6 contiguous bits */
++		if ((0x3f & (info->ctmark >> info->nfmask)) != 0x3f)
++			xtables_error(PARAMETER_PROBLEM,
++				"CONNMARK savedscp: insufficient contiguous dscpmask bits");
++		if (info->ctmark & info->ctmask)
++			xtables_error(PARAMETER_PROBLEM,
++				"CONNMARK savedscp: dscpmask/statemask bits overlap");
++		break;
+ 	case O_AND_MARK:
+ 		info->mode   = XT_CONNMARK_SET;
+ 		info->ctmark = 0;
+@@ -283,6 +312,19 @@ static void connmark_tg_parse_v2(struct xt_option_call *cb)
+ 		info->ctmark = cb->val.mark;
+ 		info->ctmask = cb->val.mark | cb->val.mask;
+ 		break;
++	case O_SAVEDSCP_MARK:
++		info->mode   = XT_CONNMARK_SAVEDSCP;
++		info->ctmark = cb->val.mark;
++		info->ctmask = cb->val.mask;
++		info->shift_bits = info->ctmark ? ffs(info->ctmark) - 1 : 0;
++		/* need 6 contiguous bits */
++		if ((0x3f & (info->ctmark >> info->shift_bits)) != 0x3f)
++			xtables_error(PARAMETER_PROBLEM,
++				"CONNMARK savedscp: insufficient contiguous dscpmask bits");
++		if (info->ctmark & info->ctmask)
++			xtables_error(PARAMETER_PROBLEM,
++				"CONNMARK savedscp: dscpmask/statemask bits overlap");
++		break;
+ 	case O_AND_MARK:
+ 		info->mode   = XT_CONNMARK_SET;
+ 		info->ctmark = 0;
+@@ -351,6 +393,11 @@ static void CONNMARK_print(const void *ip,
+ 	    print_mark(markinfo->mark);
+ 	    print_mask("/", markinfo->mask);
+ 	    break;
++	case XT_CONNMARK_SAVEDSCP:
++	    printf(" CONNMARK savedscp ");
++	    print_mark(markinfo->mark);
++	    print_mask("/", markinfo->mask);
++	    break;
+ 	case XT_CONNMARK_SAVE:
+ 	    printf(" CONNMARK save ");
+ 	    print_mask("mask ", markinfo->mask);
+@@ -386,6 +433,10 @@ connmark_tg_print(const void *ip, const struct xt_entry_target *target,
+ 			printf(" CONNMARK xset 0x%x/0x%x",
+ 			       info->ctmark, info->ctmask);
+ 		break;
++	case XT_CONNMARK_SAVEDSCP:
++		printf(" CONNMARK DSCP set 0x%x/0x%x",
++		       info->ctmark, info->ctmask);
++		break;
+ 	case XT_CONNMARK_SAVE:
+ 		if (info->nfmask == UINT32_MAX && info->ctmask == UINT32_MAX)
+ 			printf(" CONNMARK save");
+@@ -433,6 +484,10 @@ connmark_tg_print_v2(const void *ip, const struct xt_entry_target *target,
+ 			printf(" CONNMARK xset 0x%x/0x%x",
+ 			       info->ctmark, info->ctmask);
+ 		break;
++	case XT_CONNMARK_SAVEDSCP:
++		printf(" CONNMARK DSCP xset 0x%x/0x%x",
++		       info->ctmark, info->ctmask);
++		break;
+ 	case XT_CONNMARK_SAVE:
+ 		if (info->nfmask == UINT32_MAX && info->ctmask == UINT32_MAX)
+ 			printf(" CONNMARK save");
+@@ -474,6 +529,11 @@ static void CONNMARK_save(const void *ip, const struct xt_entry_target *target)
+ 	    print_mark(markinfo->mark);
+ 	    print_mask("/", markinfo->mask);
+ 	    break;
++	case XT_CONNMARK_SAVEDSCP:
++	    printf(" --savedscp-mark ");
++	    print_mark(markinfo->mark);
++	    print_mask("/", markinfo->mask);
++	    break;
+ 	case XT_CONNMARK_SAVE:
+ 	    printf(" --save-mark ");
+ 	    print_mask("--mask ", markinfo->mask);
+@@ -505,6 +565,9 @@ connmark_tg_save(const void *ip, const struct xt_entry_target *target)
+ 	case XT_CONNMARK_SET:
+ 		printf(" --set-xmark 0x%x/0x%x", info->ctmark, info->ctmask);
+ 		break;
++	case XT_CONNMARK_SAVEDSCP:
++		printf(" --savedscp-mark 0x%x/0x%x", info->ctmark, info->ctmask);
++		break;
+ 	case XT_CONNMARK_SAVE:
+ 		printf(" --save-mark --nfmask 0x%x --ctmask 0x%x",
+ 		       info->nfmask, info->ctmask);
+@@ -529,6 +592,9 @@ connmark_tg_save_v2(const void *ip, const struct xt_entry_target *target)
+ 	case XT_CONNMARK_SET:
+ 		printf(" --set-xmark 0x%x/0x%x", info->ctmark, info->ctmask);
+ 		break;
++	case XT_CONNMARK_SAVEDSCP:
++		printf(" --savedscp-mark 0x%x/0x%x", info->ctmark, info->ctmask);
++		break;
+ 	case XT_CONNMARK_SAVE:
+ 		printf(" --save-mark --nfmask 0x%x --ctmask 0x%x",
+ 		       info->nfmask, info->ctmask);
+diff --git a/include/linux/netfilter/xt_connmark.h b/include/linux/netfilter/xt_connmark.h
+index bbf2acc9..cf526101 100644
+--- a/include/linux/netfilter/xt_connmark.h
++++ b/include/linux/netfilter/xt_connmark.h
+@@ -15,7 +15,8 @@
+ enum {
+ 	XT_CONNMARK_SET = 0,
+ 	XT_CONNMARK_SAVE,
+-	XT_CONNMARK_RESTORE
++	XT_CONNMARK_RESTORE,
++	XT_CONNMARK_SAVEDSCP
+ };
+ 
+ struct xt_connmark_tginfo1 {
+-- 
+2.20.1 (Apple Git-117)
+
diff --git a/target/linux/generic/hack-4.14/0001-net-sched-Introduce-act_ctinfo-action.patch b/target/linux/generic/hack-4.14/0001-net-sched-Introduce-act_ctinfo-action.patch
new file mode 100644
index 0000000000..7ff26df7d1
--- /dev/null
+++ b/target/linux/generic/hack-4.14/0001-net-sched-Introduce-act_ctinfo-action.patch
@@ -0,0 +1,636 @@
+From 82f7c4ec33323a371a97a5d68b4ccfd7bd62e087 Mon Sep 17 00:00:00 2001
+From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+Date: Wed, 13 Mar 2019 20:54:49 +0000
+Subject: [PATCH] net: sched: Introduce act_ctinfo action
+
+ctinfo is a new tc filter action module.  It is designed to restore DSCPs
+stored in conntrack marks
+
+The feature is intended for use and has been found useful for restoring
+ingress classifications based on egress classifications across links
+that bleach or otherwise change DSCP, typically home ISP Internet links.
+Restoring DSCP on ingress on the WAN link allows qdiscs such as CAKE to
+shape inbound packets according to policies that are easier to implement
+on egress.
+
+Ingress classification is traditionally a challenging task since
+iptables rules haven't yet run and tc filter/eBPF programs are pre-NAT
+lookups, hence are unable to see internal IPv4 addresses as used on the
+typical home masquerading gateway.
+
+ctinfo understands the following parameters:
+
+dscp mask[/statemask]
+
+mask - a 32 bit mask of at least 6 contiguous bits where conndscp will
+place the DSCP in conntrack mark.  The DSCP is left-shifted by the
+number of unset lower bits of the mask before storing into the mark
+field.
+
+statemask - a 32 bit mask of (usually) 1 bit length, outside the area
+specified by mask.  This represents a conditional operation flag the
+DSCP is only restored if the flag is set.  This is useful to implement a
+'one shot' iptables based classification where the 'complicated'
+iptables rules are only run once to classify the connection on initial
+(egress) packet and subsequent packets are all marked/restored with the
+same DSCP.  A mask of zero disables the conditional behaviour.
+
+optional parameters:
+
+zone - conntrack zone
+
+control - action related control (reclassify | pipe | drop | continue |
+ok | goto chain <CHAIN_INDEX>
+
+Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+
+net:sched - v3 tweak license
+
+Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+
+drop inline & sort reverse christmas tree
+
+Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+
+v5 stuff
+
+Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+---
+ include/net/tc_act/tc_ctinfo.h        |  28 ++
+ include/uapi/linux/pkt_cls.h          |   3 +-
+ include/uapi/linux/tc_act/tc_ctinfo.h |  52 ++++
+ net/sched/Kconfig                     |  13 +
+ net/sched/Makefile                    |   1 +
+ net/sched/act_ctinfo.c                | 416 ++++++++++++++++++++++++++
+ 6 files changed, 512 insertions(+), 1 deletion(-)
+ create mode 100644 include/net/tc_act/tc_ctinfo.h
+ create mode 100644 include/uapi/linux/tc_act/tc_ctinfo.h
+ create mode 100644 net/sched/act_ctinfo.c
+
+diff --git a/include/net/tc_act/tc_ctinfo.h b/include/net/tc_act/tc_ctinfo.h
+new file mode 100644
+index 000000000000..d6a688571672
+--- /dev/null
++++ b/include/net/tc_act/tc_ctinfo.h
+@@ -0,0 +1,28 @@
++/* SPDX-License-Identifier: GPL-2.0 */
++#ifndef __NET_TC_CTINFO_H
++#define __NET_TC_CTINFO_H
++
++#include <net/act_api.h>
++
++struct tcf_ctinfo_params {
++	struct rcu_head rcu;
++	struct net *net;
++	u32 dscpmask;
++	u32 dscpstatemask;
++	u32 cpmarkmask;
++	u16 zone;
++	u8 mode;
++	u8 dscpmaskshift;
++};
++
++struct tcf_ctinfo {
++	struct tc_action common;
++	struct tcf_ctinfo_params __rcu *params;
++	u64 stats_dscp_set;
++	u64 stats_dscp_error;
++	u64 stats_cpmark_set;
++};
++
++#define to_ctinfo(a) ((struct tcf_ctinfo *)a)
++
++#endif /* __NET_TC_CTINFO_H */
+diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
+index 46c506615f4a..408b02fbb34a 100644
+--- a/include/uapi/linux/pkt_cls.h
++++ b/include/uapi/linux/pkt_cls.h
+@@ -66,7 +66,8 @@ enum {
+ 	TCA_ID_UNSPEC=0,
+ 	TCA_ID_POLICE=1,
+ 	/* other actions go here */
+-	__TCA_ID_MAX=255
++	TCA_ID_CTINFO=27,
++	__TCA_ID_MAX = 255
+ };
+ 
+ #define TCA_ID_MAX __TCA_ID_MAX
+diff --git a/include/uapi/linux/tc_act/tc_ctinfo.h b/include/uapi/linux/tc_act/tc_ctinfo.h
+new file mode 100644
+index 000000000000..48c40f657575
+--- /dev/null
++++ b/include/uapi/linux/tc_act/tc_ctinfo.h
+@@ -0,0 +1,52 @@
++/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
++#ifndef __UAPI_TC_CTINFO_H
++#define __UAPI_TC_CTINFO_H
++
++#include <linux/types.h>
++#include <linux/pkt_cls.h>
++
++struct tc_ctinfo {
++	tc_gen;
++};
++
++struct tc_ctinfo_dscp {
++	__u32 mask;
++	__u32 statemask;
++};
++
++struct tc_ctinfo_cpmark {
++	__u32 mask;
++};
++
++struct tc_ctinfo_stats_dscp {
++	__u64 set;
++	__u64 error;
++};
++
++struct tc_ctinfo_stats_cpmark {
++	__u64 set;
++};
++
++enum {
++	TCA_CTINFO_UNSPEC,
++	TCA_CTINFO_PAD,
++	TCA_CTINFO_TM,
++	TCA_CTINFO_ACT,
++	TCA_CTINFO_ZONE,
++	TCA_CTINFO_PARMS_DSCP,
++	TCA_CTINFO_PARMS_CPMARK,
++	TCA_CTINFO_MODE_DSCP,
++	TCA_CTINFO_MODE_CPMARK,
++	TCA_CTINFO_STATS_DSCP,
++	TCA_CTINFO_STATS_CPMARK,
++	__TCA_CTINFO_MAX
++};
++
++#define TCA_CTINFO_MAX (__TCA_CTINFO_MAX - 1)
++
++enum {
++	CTINFO_MODE_DSCP	= BIT(0),
++	CTINFO_MODE_CPMARK	= BIT(1)
++};
++
++#endif
+diff --git a/net/sched/Kconfig b/net/sched/Kconfig
+index e70ed26485a2..962d90f72f54 100644
+--- a/net/sched/Kconfig
++++ b/net/sched/Kconfig
+@@ -808,6 +808,19 @@ config NET_ACT_CONNMARK
+ 	  To compile this code as a module, choose M here: the
+ 	  module will be called act_connmark.
+ 
++config NET_ACT_CTINFO
++        tristate "Netfilter Connmark to DSCP Retriever"
++        depends on NET_CLS_ACT && NETFILTER && IP_NF_IPTABLES
++        depends on NF_CONNTRACK && NF_CONNTRACK_MARK
++        help
++	  Say Y here to allow transfer of a connmark stored DSCP into
++	  ipv4/v6 diffserv
++
++	  If unsure, say N.
++
++	  To compile this code as a module, choose M here: the
++	  module will be called act_ctinfo.
++
+ config NET_ACT_SKBMOD
+         tristate "skb data modification action"
+         depends on NET_CLS_ACT
+diff --git a/net/sched/Makefile b/net/sched/Makefile
+index 9e43a4721ef8..44ee5b87b895 100644
+--- a/net/sched/Makefile
++++ b/net/sched/Makefile
+@@ -21,6 +21,7 @@ obj-$(CONFIG_NET_ACT_CSUM)	+= act_csum.o
+ obj-$(CONFIG_NET_ACT_VLAN)	+= act_vlan.o
+ obj-$(CONFIG_NET_ACT_BPF)	+= act_bpf.o
+ obj-$(CONFIG_NET_ACT_CONNMARK)	+= act_connmark.o
++obj-$(CONFIG_NET_ACT_CTINFO)	+= act_ctinfo.o
+ obj-$(CONFIG_NET_ACT_SKBMOD)	+= act_skbmod.o
+ obj-$(CONFIG_NET_ACT_IFE)	+= act_ife.o
+ obj-$(CONFIG_NET_IFE_SKBMARK)	+= act_meta_mark.o
+diff --git a/net/sched/act_ctinfo.c b/net/sched/act_ctinfo.c
+new file mode 100644
+index 000000000000..8150ba2e3867
+--- /dev/null
++++ b/net/sched/act_ctinfo.c
+@@ -0,0 +1,416 @@
++// SPDX-License-Identifier: GPL-2.0+
++/* net/sched/act_ctinfo.c  netfilter ctinfo connmark actions
++ *
++ * Copyright (c) 2019 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
++ */
++
++#include <linux/module.h>
++#include <linux/init.h>
++#include <linux/kernel.h>
++#include <linux/skbuff.h>
++#include <linux/rtnetlink.h>
++#include <linux/pkt_cls.h>
++#include <linux/ip.h>
++#include <linux/ipv6.h>
++#include <net/netlink.h>
++#include <net/pkt_sched.h>
++#include <net/act_api.h>
++#include <net/pkt_cls.h>
++#include <uapi/linux/tc_act/tc_ctinfo.h>
++#include <net/tc_act/tc_ctinfo.h>
++
++#include <net/netfilter/nf_conntrack.h>
++#include <net/netfilter/nf_conntrack_core.h>
++#include <net/netfilter/nf_conntrack_ecache.h>
++#include <net/netfilter/nf_conntrack_zones.h>
++
++static struct tc_action_ops act_ctinfo_ops;
++static unsigned int ctinfo_net_id;
++
++static void tcf_ctinfo_dscp_set(struct nf_conn *ct, struct tcf_ctinfo *ca,
++				struct tcf_ctinfo_params *cp,
++				struct sk_buff *skb, int wlen, int proto)
++{
++	u8 dscp,newdscp;
++
++	newdscp = (((ct->mark & cp->dscpmask) >> cp->dscpmaskshift) << 2) &
++		     ~INET_ECN_MASK;
++
++	/* mark contains DSCP so restore DSCP bits from ct->mark into diffserv */
++	/* using overlimits stats to count how many DSCP updates	       */
++	switch (proto) {
++	case NFPROTO_IPV4:
++		dscp = ipv4_get_dsfield(ip_hdr(skb)) & ~INET_ECN_MASK;
++		if (dscp != newdscp) {
++			if (likely(!skb_try_make_writable(skb, wlen))) {
++				ipv4_change_dsfield(ip_hdr(skb),
++						    INET_ECN_MASK,
++						    newdscp);
++				ca->stats_dscp_set++;
++			} else {
++				ca->stats_dscp_error++;
++			}
++		}
++		break;
++	case NFPROTO_IPV6:
++		dscp = ipv6_get_dsfield(ipv6_hdr(skb)) & ~INET_ECN_MASK;
++		if (dscp != newdscp) {
++			if (likely(!skb_try_make_writable(skb, wlen))) {
++				ipv6_change_dsfield(ipv6_hdr(skb),
++						    INET_ECN_MASK,
++						    newdscp);
++				ca->stats_dscp_set++;
++			} else {
++				ca->stats_dscp_error++;
++			}
++		}
++		break;
++	default:
++		break;
++	}
++}
++
++static void tcf_ctinfo_cpmark_set(struct nf_conn *ct, struct tcf_ctinfo *ca,
++				struct tcf_ctinfo_params *cp,
++				struct sk_buff *skb)
++{
++	ca->stats_cpmark_set++;
++	skb->mark = ct->mark & cp->cpmarkmask;
++}
++
++static int tcf_ctinfo_act(struct sk_buff *skb, const struct tc_action *a,
++			  struct tcf_result *res)
++{
++	const struct nf_conntrack_tuple_hash *thash = NULL;
++	struct tcf_ctinfo *ca = to_ctinfo(a);
++	struct nf_conntrack_tuple tuple;
++	struct nf_conntrack_zone zone;
++	enum ip_conntrack_info ctinfo;
++	struct tcf_ctinfo_params *cp;
++	struct nf_conn *ct;
++	int proto, wlen;
++	int action;
++
++	cp = rcu_dereference_bh(ca->params);
++
++	tcf_lastuse_update(&ca->tcf_tm);
++	bstats_update(&ca->tcf_bstats, skb);
++	action = READ_ONCE(ca->tcf_action);
++
++	wlen = skb_network_offset(skb);
++	if (tc_skb_protocol(skb) == htons(ETH_P_IP)) {
++		wlen += sizeof(struct iphdr);
++		if (!pskb_may_pull(skb, wlen))
++			goto out;
++
++		proto = NFPROTO_IPV4;
++	} else if (tc_skb_protocol(skb) == htons(ETH_P_IPV6)) {
++		wlen += sizeof(struct ipv6hdr);
++		if (!pskb_may_pull(skb, wlen))
++			goto out;
++
++		proto = NFPROTO_IPV6;
++	} else {
++		goto out;
++	}
++
++	ct = nf_ct_get(skb, &ctinfo);
++	if (!ct) { /* look harder, usually ingress */
++		if (!nf_ct_get_tuplepr(skb, skb_network_offset(skb),
++				       proto, cp->net, &tuple))
++			goto out;
++		zone.id = cp->zone;
++		zone.dir = NF_CT_DEFAULT_ZONE_DIR;
++
++		thash = nf_conntrack_find_get(cp->net, &zone, &tuple);
++		if (!thash)
++			goto out;
++
++		ct = nf_ct_tuplehash_to_ctrack(thash);
++	}
++
++	if (cp->mode & CTINFO_MODE_DSCP)
++		if (!cp->dscpstatemask || (ct->mark & cp->dscpstatemask))
++			tcf_ctinfo_dscp_set(ct, ca, cp, skb, wlen, proto);
++
++	if (cp->mode & CTINFO_MODE_CPMARK)
++		tcf_ctinfo_cpmark_set(ct, ca, cp, skb);
++
++	if (thash)
++		nf_ct_put(ct);
++out:
++	return action;
++}
++
++static const struct nla_policy ctinfo_policy[TCA_CTINFO_MAX + 1] = {
++	[TCA_CTINFO_ACT]	  = { .len = sizeof(struct tc_ctinfo) },
++	[TCA_CTINFO_ZONE]	  = { .type = NLA_U16 },
++	[TCA_CTINFO_PARMS_DSCP]   = { .len = sizeof(struct tc_ctinfo_dscp) },
++	[TCA_CTINFO_PARMS_CPMARK] = { .len = sizeof(struct tc_ctinfo_cpmark) },
++	[TCA_CTINFO_MODE_DSCP]    = { .type = NLA_FLAG },
++	[TCA_CTINFO_MODE_CPMARK]  = { .type = NLA_FLAG },
++};
++
++static int tcf_ctinfo_init(struct net *net, struct nlattr *nla,
++			     struct nlattr *est, struct tc_action **a,
++			     int ovr, int bind)
++{
++	struct tc_action_net *tn = net_generic(net, ctinfo_net_id);
++	struct tc_ctinfo_cpmark *cpmarkparm = NULL;
++	struct nlattr *tb[TCA_CTINFO_MAX + 1];
++	struct tcf_ctinfo_params *cp_new;
++/*	struct tcf_chain *goto_ch = NULL; */
++	struct tc_ctinfo_dscp *dscpparm;
++	struct tcf_ctinfo *ci;
++	struct tc_ctinfo *actparm;
++	int ret = 0, err, i;
++
++	if (!nla)
++		return -EINVAL;
++
++	err = nla_parse_nested(tb, TCA_CTINFO_MAX, nla, ctinfo_policy, NULL);
++	if (err < 0)
++		return err;
++
++	if (!tb[TCA_CTINFO_ACT])
++		return -EINVAL;
++
++	if (tb[TCA_CTINFO_MODE_DSCP] && !tb[TCA_CTINFO_PARMS_DSCP])
++		return -EINVAL;
++
++	if (tb[TCA_CTINFO_PARMS_CPMARK])
++		cpmarkparm = nla_data(tb[TCA_CTINFO_PARMS_CPMARK]);
++
++	dscpparm = nla_data(tb[TCA_CTINFO_PARMS_DSCP]);
++	actparm = nla_data(tb[TCA_CTINFO_ACT]);
++
++	if (dscpparm) {
++		/* need contiguous 6 bit mask */
++		i = dscpparm->mask ? __ffs(dscpparm->mask) : 0;
++		if ((~0 & (dscpparm->mask >> i)) != 0x3f)
++			return -EINVAL;
++		/* mask & statemask must not overlap */
++		if (dscpparm->mask & dscpparm->statemask)
++			return -EINVAL;
++	}
++	/* done the validation:now to the actual action allocation */
++	err = tcf_idr_check(tn, actparm->index, a, bind);
++	if (!err) {
++		ret = tcf_idr_create(tn, actparm->index, est, a,
++				     &act_ctinfo_ops, bind, false);
++		if (ret) {
++		/*	tcf_idr_cleanup(tn, actparm->index); */
++			return ret;
++		}
++		ret = ACT_P_CREATED;
++	} else if (err > 0) {
++		if (bind) /* don't override defaults */
++			return 0;
++		if (!ovr) {
++			tcf_idr_release(*a, bind);
++			return -EEXIST;
++		}
++	} else {
++		return err;
++	}
++
++/*	err = tcf_action_check_ctrlact(actparm->action, tp, &goto_ch, extack);
++	if (err < 0)
++		goto release_idr;
++		*/
++
++	ci = to_ctinfo(*a);
++
++	cp_new = kzalloc(sizeof(*cp_new), GFP_KERNEL);
++	if (unlikely(!cp_new)) {
++		err = -ENOMEM;
++		goto put_chain;
++	}
++
++	cp_new->net = net;
++	cp_new->zone = tb[TCA_CTINFO_ZONE] ? nla_get_u16(tb[TCA_CTINFO_ZONE]) : 0;
++	if (dscpparm) {
++		cp_new->dscpmask = dscpparm->mask;
++		cp_new->dscpmaskshift = cp_new->dscpmask ? __ffs(cp_new->dscpmask) : 0;
++		cp_new->dscpstatemask = dscpparm->statemask;
++	}
++
++	if (cpmarkparm)
++		cp_new->cpmarkmask = cpmarkparm->mask;
++	else
++		cp_new->cpmarkmask = ~0;
++
++	if (tb[TCA_CTINFO_MODE_DSCP])
++		cp_new->mode |= CTINFO_MODE_DSCP;
++	else
++		cp_new->mode &= ~CTINFO_MODE_DSCP;
++
++	if (tb[TCA_CTINFO_MODE_CPMARK])
++		cp_new->mode |= CTINFO_MODE_CPMARK;
++	else
++		cp_new->mode &= ~CTINFO_MODE_CPMARK;
++
++	spin_lock_bh(&ci->tcf_lock);
++/*	goto_ch = tcf_action_set_ctrlact(*a, actparm->action, goto_ch); */
++	ci->tcf_action = actparm->action;
++	rcu_swap_protected(ci->params, cp_new,
++				lockdep_is_held(&ci->tcf_lock));
++	spin_unlock_bh(&ci->tcf_lock);
++
++/*	if (goto_ch
++		tcf_chain_put_by_act(goto_ch); */
++	if (cp_new)
++		kfree_rcu(cp_new, rcu);
++
++	if (ret == ACT_P_CREATED)
++		tcf_idr_insert(tn, *a);
++
++	return ret;
++
++put_chain:
++/*	if (goto_ch)
++		tcf_chain_put_by_act(goto_ch); */
++/*release_idr:*/
++	tcf_idr_release(*a, bind);
++	return err;
++}
++
++static int tcf_ctinfo_dump(struct sk_buff *skb, struct tc_action *a,
++			   int bind, int ref)
++{
++	struct tcf_ctinfo *ci = to_ctinfo(a);
++	struct tc_ctinfo opt = {
++		.index   = ci->tcf_index,
++		.refcnt  = ci->tcf_refcnt - ref,
++		.bindcnt = ci->tcf_bindcnt - bind,
++	};
++	struct tc_ctinfo_stats_cpmark cpmarkstats;
++	unsigned char *b = skb_tail_pointer(skb);
++	struct tc_ctinfo_stats_dscp dscpstats;
++	struct tc_ctinfo_cpmark cpmarkparm;
++	struct tc_ctinfo_dscp dscpparm;
++	struct tcf_ctinfo_params *cp;
++	struct tcf_t t;
++
++	spin_lock_bh(&ci->tcf_lock);
++	cp = rcu_dereference_protected(ci->params,
++				       lockdep_is_held(&ci->tcf_lock));
++	opt.action = ci->tcf_action;
++
++	if (nla_put(skb, TCA_CTINFO_ACT, sizeof(opt), &opt))
++		goto nla_put_failure;
++
++	if (cp->mode & CTINFO_MODE_DSCP) {
++		dscpparm.mask = cp->dscpmask;
++		dscpparm.statemask = cp->dscpstatemask;
++		if (nla_put(skb, TCA_CTINFO_PARMS_DSCP, sizeof(dscpparm),
++			    &dscpparm))
++			goto nla_put_failure;
++
++		if (nla_put_flag(skb, TCA_CTINFO_MODE_DSCP))
++			goto nla_put_failure;
++
++		dscpstats.error = ci->stats_dscp_error;
++		dscpstats.set = ci->stats_dscp_set;
++		if (nla_put(skb, TCA_CTINFO_STATS_DSCP, sizeof(dscpstats),
++			    &dscpstats))
++			goto nla_put_failure;
++	}
++
++	if (cp->mode & CTINFO_MODE_CPMARK) {
++		cpmarkparm.mask = cp->cpmarkmask;
++		if (nla_put(skb, TCA_CTINFO_PARMS_CPMARK, sizeof(cpmarkparm),
++			    &cpmarkparm))
++			goto nla_put_failure;
++
++		if (nla_put_flag(skb, TCA_CTINFO_MODE_CPMARK))
++			goto nla_put_failure;
++
++		cpmarkstats.set = ci->stats_cpmark_set;
++		if (nla_put_u64_64bit(skb, TCA_CTINFO_STATS_CPMARK,
++				      ci->stats_cpmark_set, TCA_CTINFO_PAD))
++			goto nla_put_failure;
++	}
++
++	if (cp->zone) {
++		if (nla_put_u16(skb, TCA_CTINFO_ZONE, cp->zone))
++			goto nla_put_failure;
++	}
++
++	tcf_tm_dump(&t, &ci->tcf_tm);
++	if (nla_put_64bit(skb, TCA_CTINFO_TM, sizeof(t), &t, TCA_CTINFO_PAD))
++		goto nla_put_failure;
++
++	spin_unlock_bh(&ci->tcf_lock);
++	return skb->len;
++
++nla_put_failure:
++	spin_unlock_bh(&ci->tcf_lock);
++	nlmsg_trim(skb, b);
++	return -1;
++}
++
++static int tcf_ctinfo_walker(struct net *net, struct sk_buff *skb,
++			       struct netlink_callback *cb, int type,
++			       const struct tc_action_ops *ops)
++{
++	struct tc_action_net *tn = net_generic(net, ctinfo_net_id);
++
++	return tcf_generic_walker(tn, skb, cb, type, ops);
++}
++
++static int tcf_ctinfo_search(struct net *net, struct tc_action **a, u32 index)
++{
++	struct tc_action_net *tn = net_generic(net, ctinfo_net_id);
++
++	return tcf_idr_search(tn, a, index);
++}
++
++static struct tc_action_ops act_ctinfo_ops = {
++	.kind	= "ctinfo",
++	.type	= TCA_ID_CTINFO,
++	.owner	= THIS_MODULE,
++	.act	= tcf_ctinfo_act,
++	.dump	= tcf_ctinfo_dump,
++	.init	= tcf_ctinfo_init,
++	.walk	= tcf_ctinfo_walker,
++	.lookup	= tcf_ctinfo_search,
++	.size	= sizeof(struct tcf_ctinfo),
++};
++
++static __net_init int ctinfo_init_net(struct net *net)
++{
++	struct tc_action_net *tn = net_generic(net, ctinfo_net_id);
++
++	return tc_action_net_init(tn, &act_ctinfo_ops);
++}
++
++static void __net_exit ctinfo_exit_net(struct net *net)
++{
++	struct tc_action_net *tn = net_generic(net, ctinfo_net_id);
++
++	tc_action_net_exit(tn);
++}
++
++static struct pernet_operations ctinfo_net_ops = {
++	.init = ctinfo_init_net,
++	.exit = ctinfo_exit_net,
++	.id   = &ctinfo_net_id,
++	.size = sizeof(struct tc_action_net),
++};
++
++static int __init ctinfo_init_module(void)
++{
++	return tcf_register_action(&act_ctinfo_ops, &ctinfo_net_ops);
++}
++
++static void __exit ctinfo_cleanup_module(void)
++{
++	tcf_unregister_action(&act_ctinfo_ops, &ctinfo_net_ops);
++}
++
++module_init(ctinfo_init_module);
++module_exit(ctinfo_cleanup_module);
++MODULE_AUTHOR("Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>");
++MODULE_DESCRIPTION("Conntrack mark to DSCP restoring");
++MODULE_LICENSE("GPL");
+-- 
+2.20.1 (Apple Git-117)
+
diff --git a/target/linux/generic/hack-4.14/0001-netfilter-connmark-introduce-savedscp.patch b/target/linux/generic/hack-4.14/0001-netfilter-connmark-introduce-savedscp.patch
new file mode 100644
index 0000000000..4124793bce
--- /dev/null
+++ b/target/linux/generic/hack-4.14/0001-netfilter-connmark-introduce-savedscp.patch
@@ -0,0 +1,107 @@
+From 5a4d7714faa28c03e85d696fba82716fbda5c432 Mon Sep 17 00:00:00 2001
+From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+Date: Sat, 23 Mar 2019 09:29:49 +0000
+Subject: [PATCH] netfilter: connmark: introduce savedscp
+
+savedscp is a method of storing the DSCP of an ip packet into conntrack
+mark.  In combination with a suitable tc filter action (conndscp but may
+end up being integrated into connmark) DSCP values are able to be stored
+on egress and restored on ingress across links that otherwise alter or
+bleach DSCP.
+
+This is useful for qdiscs such as CAKE which are able to shape according
+to policies based on DSCP.
+
+Ingress classification is traditionally a challenging task since
+iptables rules haven't yet run and tc filter/eBPF programs are pre-NAT
+lookups, hence are unable to see internal IPv4 addresses as used on the
+typical home masquerading gateway.
+
+The ingress problem is solved by the tc filter, but the tc people didn't
+like the idea of tc setting conntrack mark values, though they are ok
+with reading conntrack values and hence restoring DSCP from conntrack
+marks.
+
+x_tables CONNMARK with the new savedscp action solves the problem of
+storing the DSCP to the conntrack mark.
+
+It accepts 2 parameters.  The mark is a 32bit value with usually one 1
+bit set.  This bit is set when savedscp saves the DSCP to the mark.
+This is useful to implement a 'one shot'
+iptables based classification where the 'complicated' iptables rules are
+only run once to classify the connection on initial (egress) packet and
+subsequent packets are all marked/restored with the same DSCP.  A mark
+of zero disables the setting of a status bit/s.
+
+The mask is a 32bit value of at least 6 contiguous bits and represents
+the area where the DSCP will be stored.
+
+e.g.
+
+iptables -A QOS_MARK_eth0 -t mangle -j CONNMARK --savedscp-mark 0xfc000000/0x01000000
+
+Would store the DSCP in the top 6 bits of the 32bit mark field, and use
+the LSB of the top byte as the 'DSCP has been stored' marker.
+
+Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+---
+ include/uapi/linux/netfilter/xt_connmark.h |  3 ++-
+ net/netfilter/xt_connmark.c                | 21 ++++++++++++++++++++-
+ 2 files changed, 22 insertions(+), 2 deletions(-)
+
+diff --git a/include/uapi/linux/netfilter/xt_connmark.h b/include/uapi/linux/netfilter/xt_connmark.h
+index 408a9654f05c..e63ad3c89b92 100644
+--- a/include/uapi/linux/netfilter/xt_connmark.h
++++ b/include/uapi/linux/netfilter/xt_connmark.h
+@@ -16,7 +16,8 @@
+ enum {
+ 	XT_CONNMARK_SET = 0,
+ 	XT_CONNMARK_SAVE,
+-	XT_CONNMARK_RESTORE
++	XT_CONNMARK_RESTORE,
++	XT_CONNMARK_SAVEDSCP
+ };
+ 
+ struct xt_connmark_tginfo1 {
+diff --git a/net/netfilter/xt_connmark.c b/net/netfilter/xt_connmark.c
+index ec377cc6a369..aa5bcea8f9ba 100644
+--- a/net/netfilter/xt_connmark.c
++++ b/net/netfilter/xt_connmark.c
+@@ -42,6 +42,7 @@ connmark_tg(struct sk_buff *skb, const struct xt_action_param *par)
+ 	enum ip_conntrack_info ctinfo;
+ 	struct nf_conn *ct;
+ 	u_int32_t newmark;
++	u8 dscp, maskshift;
+ 
+ 	ct = nf_ct_get(skb, &ctinfo);
+ 	if (ct == NULL)
+@@ -57,7 +58,25 @@ connmark_tg(struct sk_buff *skb, const struct xt_action_param *par)
+ 		break;
+ 	case XT_CONNMARK_SAVE:
+ 		newmark = (ct->mark & ~info->ctmask) ^
+-		          (skb->mark & info->nfmask);
++			  (skb->mark & info->nfmask);
++		if (ct->mark != newmark) {
++			ct->mark = newmark;
++			nf_conntrack_event_cache(IPCT_MARK, ct);
++		}
++		break;
++	case XT_CONNMARK_SAVEDSCP:
++		if (skb->protocol == htons(ETH_P_IP))
++			dscp = ipv4_get_dsfield(ip_hdr(skb)) >> 2;
++		else if (skb->protocol == htons(ETH_P_IPV6))
++			dscp = ipv6_get_dsfield(ipv6_hdr(skb)) >> 2;
++		else	/* protocol doesn't have diffserv */
++			break;
++
++		/* nfmask contains the mask shift value */
++		maskshift = info->nfmask & 0x1f;
++		newmark = (ct->mark & ~info->ctmark) ^
++			  (info->ctmask | (dscp << maskshift));
++
+ 		if (ct->mark != newmark) {
+ 			ct->mark = newmark;
+ 			nf_conntrack_event_cache(IPCT_MARK, ct);
+-- 
+2.20.1 (Apple Git-117)
+
diff --git a/target/linux/generic/hack-4.19/0001-net-sched-Introduce-act_ctinfo-action.patch b/target/linux/generic/hack-4.19/0001-net-sched-Introduce-act_ctinfo-action.patch
new file mode 100644
index 0000000000..4b4c75330d
--- /dev/null
+++ b/target/linux/generic/hack-4.19/0001-net-sched-Introduce-act_ctinfo-action.patch
@@ -0,0 +1,658 @@
+From e2448527ccb52ee173fb7fe3b35dc2f88281f4cc Mon Sep 17 00:00:00 2001
+From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+Date: Wed, 13 Mar 2019 20:54:49 +0000
+Subject: [PATCH] net: sched: Introduce act_ctinfo action
+
+ctinfo is a new tc filter action module.  It is designed to restore DSCPs
+stored in conntrack marks into the ipv4/v6 diffserv field.
+
+The feature is intended for use and has been found useful for restoring
+ingress classifications based on egress classifications across links
+that bleach or otherwise change DSCP, typically home ISP Internet links.
+Restoring DSCP on ingress on the WAN link allows qdiscs such as CAKE to
+shape inbound packets according to policies that are easier to indicate
+on egress.
+
+Ingress classification is traditionally a challenging task since
+iptables rules haven't yet run and tc filter/eBPF programs are pre-NAT
+lookups, hence are unable to see internal IPv4 addresses as used on the
+typical home masquerading gateway.
+
+ctinfo understands the following parameters:
+
+dscp dscpmask[/statemask]
+
+dscpmask - a 32 bit mask of at least 6 contiguous bits and indicates
+where ctinfo will find the DSCP bits stored in the conntrack mark.
+
+statemask - a 32 bit mask of (usually) 1 bit length, outside the area
+specified by dscpmask.  This represents a conditional operation flag
+whereby the DSCP is only restored if the flag is set.  This is useful to
+implement a 'one shot' iptables based classification where the
+'complicated' iptables rules are only run once to classify the
+connection on initial (egress) packet and subsequent packets are all
+marked/restored with the same DSCP.  A mask of zero disables the
+conditional behaviour ie. the conntrack mark DSCP bits are always
+restored to the ip diffserv field (assuming the conntrack entry is found
+& the skb is an ipv4/ipv6 type)
+
+optional parameters:
+
+zone - conntrack zone
+
+control - action related control (reclassify | pipe | drop | continue |
+ok | goto chain <CHAIN_INDEX>)
+
+e.g. dscp 0xfc000000/0x01000000
+
+|----0xFC----conntrack mark----000000---|
+| Bits 31-26 | bit 25 | bit24 |~~~ Bit 0|
+| DSCP       | unused | flag  |unused   |
+|-----------------------0x01---000000---|
+      |                   |
+      |                   |
+      ---|             Conditional flag
+         v             only restore if set
+|-ip diffserv-|
+| 6 bits      |
+|-------------|
+
+Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+---
+ include/net/tc_act/tc_ctinfo.h            |  28 ++
+ include/uapi/linux/pkt_cls.h              |   3 +-
+ include/uapi/linux/tc_act/tc_ctinfo.h     |  52 +++
+ net/sched/Kconfig                         |  17 +
+ net/sched/Makefile                        |   1 +
+ net/sched/act_ctinfo.c                    | 418 ++++++++++++++++++++++
+ tools/testing/selftests/tc-testing/config |   1 +
+ 7 files changed, 519 insertions(+), 1 deletion(-)
+ create mode 100644 include/net/tc_act/tc_ctinfo.h
+ create mode 100644 include/uapi/linux/tc_act/tc_ctinfo.h
+ create mode 100644 net/sched/act_ctinfo.c
+
+diff --git a/include/net/tc_act/tc_ctinfo.h b/include/net/tc_act/tc_ctinfo.h
+new file mode 100644
+index 000000000000..d6a688571672
+--- /dev/null
++++ b/include/net/tc_act/tc_ctinfo.h
+@@ -0,0 +1,28 @@
++/* SPDX-License-Identifier: GPL-2.0 */
++#ifndef __NET_TC_CTINFO_H
++#define __NET_TC_CTINFO_H
++
++#include <net/act_api.h>
++
++struct tcf_ctinfo_params {
++	struct rcu_head rcu;
++	struct net *net;
++	u32 dscpmask;
++	u32 dscpstatemask;
++	u32 cpmarkmask;
++	u16 zone;
++	u8 mode;
++	u8 dscpmaskshift;
++};
++
++struct tcf_ctinfo {
++	struct tc_action common;
++	struct tcf_ctinfo_params __rcu *params;
++	u64 stats_dscp_set;
++	u64 stats_dscp_error;
++	u64 stats_cpmark_set;
++};
++
++#define to_ctinfo(a) ((struct tcf_ctinfo *)a)
++
++#endif /* __NET_TC_CTINFO_H */
+diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
+index be382fb0592d..71e10c5a96a0 100644
+--- a/include/uapi/linux/pkt_cls.h
++++ b/include/uapi/linux/pkt_cls.h
+@@ -68,7 +68,8 @@ enum {
+ 	TCA_ID_UNSPEC=0,
+ 	TCA_ID_POLICE=1,
+ 	/* other actions go here */
+-	__TCA_ID_MAX=255
++	TCA_ID_CTINFO,
++	__TCA_ID_MAX = 255
+ };
+ 
+ #define TCA_ID_MAX __TCA_ID_MAX
+diff --git a/include/uapi/linux/tc_act/tc_ctinfo.h b/include/uapi/linux/tc_act/tc_ctinfo.h
+new file mode 100644
+index 000000000000..48c40f657575
+--- /dev/null
++++ b/include/uapi/linux/tc_act/tc_ctinfo.h
+@@ -0,0 +1,52 @@
++/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
++#ifndef __UAPI_TC_CTINFO_H
++#define __UAPI_TC_CTINFO_H
++
++#include <linux/types.h>
++#include <linux/pkt_cls.h>
++
++struct tc_ctinfo {
++	tc_gen;
++};
++
++struct tc_ctinfo_dscp {
++	__u32 mask;
++	__u32 statemask;
++};
++
++struct tc_ctinfo_cpmark {
++	__u32 mask;
++};
++
++struct tc_ctinfo_stats_dscp {
++	__u64 set;
++	__u64 error;
++};
++
++struct tc_ctinfo_stats_cpmark {
++	__u64 set;
++};
++
++enum {
++	TCA_CTINFO_UNSPEC,
++	TCA_CTINFO_PAD,
++	TCA_CTINFO_TM,
++	TCA_CTINFO_ACT,
++	TCA_CTINFO_ZONE,
++	TCA_CTINFO_PARMS_DSCP,
++	TCA_CTINFO_PARMS_CPMARK,
++	TCA_CTINFO_MODE_DSCP,
++	TCA_CTINFO_MODE_CPMARK,
++	TCA_CTINFO_STATS_DSCP,
++	TCA_CTINFO_STATS_CPMARK,
++	__TCA_CTINFO_MAX
++};
++
++#define TCA_CTINFO_MAX (__TCA_CTINFO_MAX - 1)
++
++enum {
++	CTINFO_MODE_DSCP	= BIT(0),
++	CTINFO_MODE_CPMARK	= BIT(1)
++};
++
++#endif
+diff --git a/net/sched/Kconfig b/net/sched/Kconfig
+index e95741388311..1d79d5dba6e4 100644
+--- a/net/sched/Kconfig
++++ b/net/sched/Kconfig
+@@ -866,6 +866,23 @@ config NET_ACT_CONNMARK
+ 	  To compile this code as a module, choose M here: the
+ 	  module will be called act_connmark.
+ 
++config NET_ACT_CTINFO
++        tristate "Netfilter Connection Mark Actions"
++        depends on NET_CLS_ACT && NETFILTER && IP_NF_IPTABLES
++        depends on NF_CONNTRACK && NF_CONNTRACK_MARK
++        help
++	  Say Y here to allow transfer of a connmark stored information.
++	  Current actions transfer connmark stored DSCP into
++	  ipv4/v6 diffserv and/or to transfer connmark to packet
++	  mark.  Both are useful for restoring egress based marks
++	  back onto ingress connections for qdisc priority mapping
++	  purposes.
++
++	  If unsure, say N.
++
++	  To compile this code as a module, choose M here: the
++	  module will be called act_ctinfo.
++
+ config NET_ACT_SKBMOD
+         tristate "skb data modification action"
+         depends on NET_CLS_ACT
+diff --git a/net/sched/Makefile b/net/sched/Makefile
+index f0403f49edcb..bb3c2bc44af7 100644
+--- a/net/sched/Makefile
++++ b/net/sched/Makefile
+@@ -21,6 +21,7 @@ obj-$(CONFIG_NET_ACT_CSUM)	+= act_csum.o
+ obj-$(CONFIG_NET_ACT_VLAN)	+= act_vlan.o
+ obj-$(CONFIG_NET_ACT_BPF)	+= act_bpf.o
+ obj-$(CONFIG_NET_ACT_CONNMARK)	+= act_connmark.o
++obj-$(CONFIG_NET_ACT_CTINFO)	+= act_ctinfo.o
+ obj-$(CONFIG_NET_ACT_SKBMOD)	+= act_skbmod.o
+ obj-$(CONFIG_NET_ACT_IFE)	+= act_ife.o
+ obj-$(CONFIG_NET_IFE_SKBMARK)	+= act_meta_mark.o
+diff --git a/net/sched/act_ctinfo.c b/net/sched/act_ctinfo.c
+new file mode 100644
+index 000000000000..e0f180887447
+--- /dev/null
++++ b/net/sched/act_ctinfo.c
+@@ -0,0 +1,418 @@
++// SPDX-License-Identifier: GPL-2.0+
++/* net/sched/act_ctinfo.c  netfilter ctinfo connmark actions
++ *
++ * Copyright (c) 2019 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
++ */
++
++#include <linux/module.h>
++#include <linux/init.h>
++#include <linux/kernel.h>
++#include <linux/skbuff.h>
++#include <linux/rtnetlink.h>
++#include <linux/pkt_cls.h>
++#include <linux/ip.h>
++#include <linux/ipv6.h>
++#include <net/netlink.h>
++#include <net/pkt_sched.h>
++#include <net/act_api.h>
++#include <net/pkt_cls.h>
++#include <uapi/linux/tc_act/tc_ctinfo.h>
++#include <net/tc_act/tc_ctinfo.h>
++
++#include <net/netfilter/nf_conntrack.h>
++#include <net/netfilter/nf_conntrack_core.h>
++#include <net/netfilter/nf_conntrack_ecache.h>
++#include <net/netfilter/nf_conntrack_zones.h>
++
++static struct tc_action_ops act_ctinfo_ops;
++static unsigned int ctinfo_net_id;
++
++static void tcf_ctinfo_dscp_set(struct nf_conn *ct, struct tcf_ctinfo *ca,
++				struct tcf_ctinfo_params *cp,
++				struct sk_buff *skb, int wlen, int proto)
++{
++	u8 dscp, newdscp;
++
++	newdscp = (((ct->mark & cp->dscpmask) >> cp->dscpmaskshift) << 2) &
++		     ~INET_ECN_MASK;
++
++	switch (proto) {
++	case NFPROTO_IPV4:
++		dscp = ipv4_get_dsfield(ip_hdr(skb)) & ~INET_ECN_MASK;
++		if (dscp != newdscp) {
++			if (likely(!skb_try_make_writable(skb, wlen))) {
++				ipv4_change_dsfield(ip_hdr(skb),
++						    INET_ECN_MASK,
++						    newdscp);
++				ca->stats_dscp_set++;
++			} else {
++				ca->stats_dscp_error++;
++			}
++		}
++		break;
++	case NFPROTO_IPV6:
++		dscp = ipv6_get_dsfield(ipv6_hdr(skb)) & ~INET_ECN_MASK;
++		if (dscp != newdscp) {
++			if (likely(!skb_try_make_writable(skb, wlen))) {
++				ipv6_change_dsfield(ipv6_hdr(skb),
++						    INET_ECN_MASK,
++						    newdscp);
++				ca->stats_dscp_set++;
++			} else {
++				ca->stats_dscp_error++;
++			}
++		}
++		break;
++	default:
++		break;
++	}
++}
++
++static void tcf_ctinfo_cpmark_set(struct nf_conn *ct, struct tcf_ctinfo *ca,
++				  struct tcf_ctinfo_params *cp,
++				  struct sk_buff *skb)
++{
++	ca->stats_cpmark_set++;
++	skb->mark = ct->mark & cp->cpmarkmask;
++}
++
++static int tcf_ctinfo_act(struct sk_buff *skb, const struct tc_action *a,
++			  struct tcf_result *res)
++{
++	const struct nf_conntrack_tuple_hash *thash = NULL;
++	struct tcf_ctinfo *ca = to_ctinfo(a);
++	struct nf_conntrack_tuple tuple;
++	struct nf_conntrack_zone zone;
++	enum ip_conntrack_info ctinfo;
++	struct tcf_ctinfo_params *cp;
++	struct nf_conn *ct;
++	int proto, wlen;
++	int action;
++
++	cp = rcu_dereference_bh(ca->params);
++
++	tcf_lastuse_update(&ca->tcf_tm);
++	bstats_update(&ca->tcf_bstats, skb);
++	action = READ_ONCE(ca->tcf_action);
++
++	wlen = skb_network_offset(skb);
++	if (tc_skb_protocol(skb) == htons(ETH_P_IP)) {
++		wlen += sizeof(struct iphdr);
++		if (!pskb_may_pull(skb, wlen))
++			goto out;
++
++		proto = NFPROTO_IPV4;
++	} else if (tc_skb_protocol(skb) == htons(ETH_P_IPV6)) {
++		wlen += sizeof(struct ipv6hdr);
++		if (!pskb_may_pull(skb, wlen))
++			goto out;
++
++		proto = NFPROTO_IPV6;
++	} else {
++		goto out;
++	}
++
++	ct = nf_ct_get(skb, &ctinfo);
++	if (!ct) { /* look harder, usually ingress */
++		if (!nf_ct_get_tuplepr(skb, skb_network_offset(skb),
++				       proto, cp->net, &tuple))
++			goto out;
++		zone.id = cp->zone;
++		zone.dir = NF_CT_DEFAULT_ZONE_DIR;
++
++		thash = nf_conntrack_find_get(cp->net, &zone, &tuple);
++		if (!thash)
++			goto out;
++
++		ct = nf_ct_tuplehash_to_ctrack(thash);
++	}
++
++	if (cp->mode & CTINFO_MODE_DSCP)
++		if (!cp->dscpstatemask || (ct->mark & cp->dscpstatemask))
++			tcf_ctinfo_dscp_set(ct, ca, cp, skb, wlen, proto);
++
++	if (cp->mode & CTINFO_MODE_CPMARK)
++		tcf_ctinfo_cpmark_set(ct, ca, cp, skb);
++
++	if (thash)
++		nf_ct_put(ct);
++out:
++	return action;
++}
++
++static const struct nla_policy ctinfo_policy[TCA_CTINFO_MAX + 1] = {
++	[TCA_CTINFO_ACT]	  = { .len = sizeof(struct tc_ctinfo) },
++	[TCA_CTINFO_ZONE]	  = { .type = NLA_U16 },
++	[TCA_CTINFO_PARMS_DSCP]   = { .len = sizeof(struct tc_ctinfo_dscp) },
++	[TCA_CTINFO_PARMS_CPMARK] = { .len = sizeof(struct tc_ctinfo_cpmark) },
++	[TCA_CTINFO_MODE_DSCP]    = { .type = NLA_FLAG },
++	[TCA_CTINFO_MODE_CPMARK]  = { .type = NLA_FLAG },
++};
++
++static int tcf_ctinfo_init(struct net *net, struct nlattr *nla,
++			   struct nlattr *est, struct tc_action **a,
++			   int ovr, int bind, bool rtnl_held,
++			   struct netlink_ext_ack *extack)
++{
++	struct tc_action_net *tn = net_generic(net, ctinfo_net_id);
++	struct tc_ctinfo_cpmark *cpmarkparm = NULL;
++	struct nlattr *tb[TCA_CTINFO_MAX + 1];
++	struct tcf_ctinfo_params *cp_new;
++/*	struct tcf_chain *goto_ch = NULL; */
++	struct tc_ctinfo_dscp *dscpparm;
++	struct tcf_ctinfo *ci;
++	struct tc_ctinfo *actparm;
++	int ret = 0, err, i;
++
++	if (!nla)
++		return -EINVAL;
++
++	err = nla_parse_nested(tb, TCA_CTINFO_MAX, nla, ctinfo_policy, NULL);
++	if (err < 0)
++		return err;
++
++	if (!tb[TCA_CTINFO_ACT])
++		return -EINVAL;
++
++	if (tb[TCA_CTINFO_MODE_DSCP] && !tb[TCA_CTINFO_PARMS_DSCP])
++		return -EINVAL;
++
++	if (tb[TCA_CTINFO_PARMS_CPMARK])
++		cpmarkparm = nla_data(tb[TCA_CTINFO_PARMS_CPMARK]);
++
++	dscpparm = nla_data(tb[TCA_CTINFO_PARMS_DSCP]);
++	actparm = nla_data(tb[TCA_CTINFO_ACT]);
++
++	if (dscpparm) {
++		/* need contiguous 6 bit mask */
++		i = dscpparm->mask ? __ffs(dscpparm->mask) : 0;
++		if ((~0 & (dscpparm->mask >> i)) != 0x3f)
++			return -EINVAL;
++		/* mask & statemask must not overlap */
++		if (dscpparm->mask & dscpparm->statemask)
++			return -EINVAL;
++	}
++
++	/* done the validation:now to the actual action allocation */
++	err = tcf_idr_check_alloc(tn, &actparm->index, a, bind);
++	if (!err) {
++		ret = tcf_idr_create(tn, actparm->index, est, a,
++				     &act_ctinfo_ops, bind, false);
++		if (ret) {
++			tcf_idr_cleanup(tn, actparm->index);
++			return ret;
++		}
++		ret = ACT_P_CREATED;
++	} else if (err > 0) {
++		if (bind) /* don't override defaults */
++			return 0;
++		if (!ovr) {
++			tcf_idr_release(*a, bind);
++			return -EEXIST;
++		}
++	} else {
++		return err;
++	}
++
++/*	err = tcf_action_check_ctrlact(actparm->action, tp, &goto_ch, extack);
++	if (err < 0)
++		goto release_idr;
++		*/
++
++	ci = to_ctinfo(*a);
++
++	cp_new = kzalloc(sizeof(*cp_new), GFP_KERNEL);
++	if (unlikely(!cp_new)) {
++		err = -ENOMEM;
++		goto put_chain;
++	}
++
++	cp_new->net = net;
++	cp_new->zone = tb[TCA_CTINFO_ZONE] ?
++			nla_get_u16(tb[TCA_CTINFO_ZONE]) : 0;
++	if (dscpparm) {
++		cp_new->dscpmask = dscpparm->mask;
++		cp_new->dscpmaskshift = cp_new->dscpmask ?
++				__ffs(cp_new->dscpmask) : 0;
++		cp_new->dscpstatemask = dscpparm->statemask;
++	}
++
++	if (cpmarkparm)
++		cp_new->cpmarkmask = cpmarkparm->mask;
++	else
++		cp_new->cpmarkmask = ~0;
++
++	if (tb[TCA_CTINFO_MODE_DSCP])
++		cp_new->mode |= CTINFO_MODE_DSCP;
++	else
++		cp_new->mode &= ~CTINFO_MODE_DSCP;
++
++	if (tb[TCA_CTINFO_MODE_CPMARK])
++		cp_new->mode |= CTINFO_MODE_CPMARK;
++	else
++		cp_new->mode &= ~CTINFO_MODE_CPMARK;
++
++	spin_lock_bh(&ci->tcf_lock);
++/*	goto_ch = tcf_action_set_ctrlact(*a, actparm->action, goto_ch); */
++	ci->tcf_action = actparm->action;
++	rcu_swap_protected(ci->params, cp_new,
++			   lockdep_is_held(&ci->tcf_lock));
++	spin_unlock_bh(&ci->tcf_lock);
++
++/*	if (goto_ch)
++		tcf_chain_put_by_act(goto_ch); */
++	if (cp_new)
++		kfree_rcu(cp_new, rcu);
++
++	if (ret == ACT_P_CREATED)
++		tcf_idr_insert(tn, *a);
++
++	return ret;
++
++put_chain:
++/*	if (goto_ch)
++		tcf_chain_put_by_act(goto_ch);
++release_idr: */
++	tcf_idr_release(*a, bind);
++	return err;
++}
++
++static int tcf_ctinfo_dump(struct sk_buff *skb, struct tc_action *a,
++			   int bind, int ref)
++{
++	struct tcf_ctinfo *ci = to_ctinfo(a);
++	struct tc_ctinfo opt = {
++		.index   = ci->tcf_index,
++		.refcnt  = refcount_read(&ci->tcf_refcnt) - ref,
++		.bindcnt = atomic_read(&ci->tcf_bindcnt) - bind,
++	};
++	struct tc_ctinfo_stats_cpmark cpmarkstats;
++	unsigned char *b = skb_tail_pointer(skb);
++	struct tc_ctinfo_stats_dscp dscpstats;
++	struct tc_ctinfo_cpmark cpmarkparm;
++	struct tc_ctinfo_dscp dscpparm;
++	struct tcf_ctinfo_params *cp;
++	struct tcf_t t;
++
++	spin_lock_bh(&ci->tcf_lock);
++	cp = rcu_dereference_protected(ci->params,
++				       lockdep_is_held(&ci->tcf_lock));
++	opt.action = ci->tcf_action;
++
++	if (nla_put(skb, TCA_CTINFO_ACT, sizeof(opt), &opt))
++		goto nla_put_failure;
++
++	if (cp->mode & CTINFO_MODE_DSCP) {
++		dscpparm.mask = cp->dscpmask;
++		dscpparm.statemask = cp->dscpstatemask;
++		if (nla_put(skb, TCA_CTINFO_PARMS_DSCP, sizeof(dscpparm),
++			    &dscpparm))
++			goto nla_put_failure;
++
++		if (nla_put_flag(skb, TCA_CTINFO_MODE_DSCP))
++			goto nla_put_failure;
++
++		dscpstats.error = ci->stats_dscp_error;
++		dscpstats.set = ci->stats_dscp_set;
++		if (nla_put(skb, TCA_CTINFO_STATS_DSCP, sizeof(dscpstats),
++			    &dscpstats))
++			goto nla_put_failure;
++	}
++
++	if (cp->mode & CTINFO_MODE_CPMARK) {
++		cpmarkparm.mask = cp->cpmarkmask;
++		if (nla_put(skb, TCA_CTINFO_PARMS_CPMARK, sizeof(cpmarkparm),
++			    &cpmarkparm))
++			goto nla_put_failure;
++
++		if (nla_put_flag(skb, TCA_CTINFO_MODE_CPMARK))
++			goto nla_put_failure;
++
++		cpmarkstats.set = ci->stats_cpmark_set;
++		if (nla_put_u64_64bit(skb, TCA_CTINFO_STATS_CPMARK,
++				      ci->stats_cpmark_set, TCA_CTINFO_PAD))
++			goto nla_put_failure;
++	}
++
++	if (cp->zone) {
++		if (nla_put_u16(skb, TCA_CTINFO_ZONE, cp->zone))
++			goto nla_put_failure;
++	}
++
++	tcf_tm_dump(&t, &ci->tcf_tm);
++	if (nla_put_64bit(skb, TCA_CTINFO_TM, sizeof(t), &t, TCA_CTINFO_PAD))
++		goto nla_put_failure;
++
++	spin_unlock_bh(&ci->tcf_lock);
++	return skb->len;
++
++nla_put_failure:
++	spin_unlock_bh(&ci->tcf_lock);
++	nlmsg_trim(skb, b);
++	return -1;
++}
++
++static int tcf_ctinfo_walker(struct net *net, struct sk_buff *skb,
++			     struct netlink_callback *cb, int type,
++			     const struct tc_action_ops *ops,
++			     struct netlink_ext_ack *extack)
++{
++	struct tc_action_net *tn = net_generic(net, ctinfo_net_id);
++
++	return tcf_generic_walker(tn, skb, cb, type, ops, extack);
++}
++
++static int tcf_ctinfo_search(struct net *net, struct tc_action **a, u32 index,
++			     struct netlink_ext_ack *extack)
++{
++	struct tc_action_net *tn = net_generic(net, ctinfo_net_id);
++
++	return tcf_idr_search(tn, a, index);
++}
++
++static struct tc_action_ops act_ctinfo_ops = {
++	.kind	= "ctinfo",
++	.type	= TCA_ID_CTINFO,
++	.owner	= THIS_MODULE,
++	.act	= tcf_ctinfo_act,
++	.dump	= tcf_ctinfo_dump,
++	.init	= tcf_ctinfo_init,
++	.walk	= tcf_ctinfo_walker,
++	.lookup	= tcf_ctinfo_search,
++	.size	= sizeof(struct tcf_ctinfo),
++};
++
++static __net_init int ctinfo_init_net(struct net *net)
++{
++	struct tc_action_net *tn = net_generic(net, ctinfo_net_id);
++
++	return tc_action_net_init(tn, &act_ctinfo_ops);
++}
++
++static void __net_exit ctinfo_exit_net(struct list_head *net_list)
++{
++	tc_action_net_exit(net_list, ctinfo_net_id);
++}
++
++static struct pernet_operations ctinfo_net_ops = {
++	.init		= ctinfo_init_net,
++	.exit_batch	= ctinfo_exit_net,
++	.id		= &ctinfo_net_id,
++	.size		= sizeof(struct tc_action_net),
++};
++
++static int __init ctinfo_init_module(void)
++{
++	return tcf_register_action(&act_ctinfo_ops, &ctinfo_net_ops);
++}
++
++static void __exit ctinfo_cleanup_module(void)
++{
++	tcf_unregister_action(&act_ctinfo_ops, &ctinfo_net_ops);
++}
++
++module_init(ctinfo_init_module);
++module_exit(ctinfo_cleanup_module);
++MODULE_AUTHOR("Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>");
++MODULE_DESCRIPTION("Connection tracking mark actions");
++MODULE_LICENSE("GPL");
+diff --git a/tools/testing/selftests/tc-testing/config b/tools/testing/selftests/tc-testing/config
+index 203302065458..9d1fddcfb887 100644
+--- a/tools/testing/selftests/tc-testing/config
++++ b/tools/testing/selftests/tc-testing/config
+@@ -37,6 +37,7 @@ CONFIG_NET_ACT_SKBEDIT=m
+ CONFIG_NET_ACT_CSUM=m
+ CONFIG_NET_ACT_VLAN=m
+ CONFIG_NET_ACT_BPF=m
++CONFIG_NET_ACT_CONNDSCP=m
+ CONFIG_NET_ACT_CONNMARK=m
+ CONFIG_NET_ACT_SKBMOD=m
+ CONFIG_NET_ACT_IFE=m
+-- 
+2.20.1 (Apple Git-117)
+
diff --git a/target/linux/generic/hack-4.19/0001-netfilter-connmark-introduce-savedscp.patch b/target/linux/generic/hack-4.19/0001-netfilter-connmark-introduce-savedscp.patch
new file mode 100644
index 0000000000..cef2dd80f5
--- /dev/null
+++ b/target/linux/generic/hack-4.19/0001-netfilter-connmark-introduce-savedscp.patch
@@ -0,0 +1,142 @@
+From f171924dcf1d0b31fb7bd1cff113d7a1f7f05ec2 Mon Sep 17 00:00:00 2001
+From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+Date: Sat, 23 Mar 2019 09:29:49 +0000
+Subject: [PATCH] netfilter: connmark: introduce savedscp
+
+savedscp is a method of storing the DSCP of an ip packet into conntrack
+mark.  In combination with a suitable tc filter action (act_ctinfo) DSCP
+values are able to be stored in the mark on egress and restored on
+ingress across links that otherwise alter or bleach DSCP.
+
+This is useful for qdiscs such as CAKE which are able to shape according
+to policies based on DSCP.
+
+Ingress classification is traditionally a challenging task since
+iptables rules haven't yet run and tc filter/eBPF programs are pre-NAT
+lookups, hence are unable to see internal IPv4 addresses as used on the
+typical home masquerading gateway.
+
+x_tables CONNMARK savedscp action solves the problem of storing the DSCP
+to the conntrack mark in a way suitable for the new act_ctinfo tc action
+to restore.
+
+The savedsp option accepts 2 parameters, a 32bit 'dscpmask' and a 32bit
+'statemask'.  The dscp mask must be a minimum of 6 contiguous bits and
+represents the area where the DSCP will be stored in the connmark.  The
+state mask is a minimum 1 bit length mask that must not overlap with the
+dscpmask.  It represents a flag which is set when the DSCP has been
+stored in the conntrack mark. This is useful to implement a 'one shot'
+iptables based classification where the 'complicated' iptables rules are
+only run once to classify the connection on initial (egress) packet and
+subsequent packets are all marked/restored with the same DSCP.  A state
+mask of zero disables the setting of a status bit/s.
+
+example syntax with a suitably modified iptables user space application:
+
+iptables -A QOS_MARK_eth0 -t mangle -j CONNMARK --savedscp-mark 0xfc000000/0x01000000
+
+Would store the DSCP in the top 6 bits of the 32bit mark field, and use
+the LSB of the top byte as the 'DSCP has been stored' marker.
+
+|----0xFC----conntrack mark----000000---|
+| Bits 31-26 | bit 25 | bit24 |~~~ Bit 0|
+| DSCP       | unused | flag  |unused   |
+|-----------------------0x01---000000---|
+      ^                   ^
+      |                   |
+      ---|             Conditional flag
+         |             set this when dscp
+|-ip diffserv-|        stored in mark
+| 6 bits      |
+|-------------|
+
+an identically configured tc action to restore looks like:
+
+tc filter show dev eth0 ingress
+filter parent ffff: protocol all pref 10 u32 chain 0
+filter parent ffff: protocol all pref 10 u32 chain 0 fh 800: ht divisor 1
+filter parent ffff: protocol all pref 10 u32 chain 0 fh 800::800 order 2048 key ht 800 bkt 0 flowid 1:1 not_in_hw
+  match 00000000/00000000 at 0
+	action order 1: ctinfo zone 0 pipe
+	 index 2 ref 1 bind 1 dscp 0xfc000000/0x1000000
+
+	action order 2: mirred (Egress Redirect to device ifb4eth0) stolen
+	index 1 ref 1 bind 1
+
+|----0xFC----conntrack mark----000000---|
+| Bits 31-26 | bit 25 | bit24 |~~~ Bit 0|
+| DSCP       | unused | flag  |unused   |
+|-----------------------0x01---000000---|
+      |                   |
+      |                   |
+      ---|             Conditional flag
+         v             only restore if set
+|-ip diffserv-|
+| 6 bits      |
+|-------------|
+
+Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
+---
+ include/uapi/linux/netfilter/xt_connmark.h |  3 ++-
+ net/netfilter/xt_connmark.c                | 17 +++++++++++++++++
+ 2 files changed, 19 insertions(+), 1 deletion(-)
+
+diff --git a/include/uapi/linux/netfilter/xt_connmark.h b/include/uapi/linux/netfilter/xt_connmark.h
+index 1aa5c955ee1e..24272cac2d37 100644
+--- a/include/uapi/linux/netfilter/xt_connmark.h
++++ b/include/uapi/linux/netfilter/xt_connmark.h
+@@ -16,7 +16,8 @@
+ enum {
+ 	XT_CONNMARK_SET = 0,
+ 	XT_CONNMARK_SAVE,
+-	XT_CONNMARK_RESTORE
++	XT_CONNMARK_RESTORE,
++	XT_CONNMARK_SAVEDSCP
+ };
+ 
+ enum {
+diff --git a/net/netfilter/xt_connmark.c b/net/netfilter/xt_connmark.c
+index 29c38aa7f726..5ce2adde5595 100644
+--- a/net/netfilter/xt_connmark.c
++++ b/net/netfilter/xt_connmark.c
+@@ -42,6 +42,7 @@ connmark_tg_shift(struct sk_buff *skb, const struct xt_connmark_tginfo2 *info)
+ 	u_int32_t new_targetmark;
+ 	struct nf_conn *ct;
+ 	u_int32_t newmark;
++	u8 dscp;
+ 
+ 	ct = nf_ct_get(skb, &ctinfo);
+ 	if (ct == NULL)
+@@ -74,6 +75,21 @@ connmark_tg_shift(struct sk_buff *skb, const struct xt_connmark_tginfo2 *info)
+ 			nf_conntrack_event_cache(IPCT_MARK, ct);
+ 		}
+ 		break;
++	case XT_CONNMARK_SAVEDSCP:
++		if (skb->protocol == htons(ETH_P_IP))
++			dscp = ipv4_get_dsfield(ip_hdr(skb)) >> 2;
++		else if (skb->protocol == htons(ETH_P_IPV6))
++			dscp = ipv6_get_dsfield(ipv6_hdr(skb)) >> 2;
++		else	/* protocol doesn't have diffserv */
++			break;
++
++		newmark = (ct->mark & ~info->ctmark) ^
++			  (info->ctmask | (dscp << info->shift_bits));
++		if (ct->mark != newmark) {
++			ct->mark = newmark;
++			nf_conntrack_event_cache(IPCT_MARK, ct);
++		}
++		break;
+ 	case XT_CONNMARK_RESTORE:
+ 		new_targetmark = (ct->mark & info->ctmask);
+ 		if (info->shift_dir == D_SHIFT_RIGHT)
+@@ -86,6 +102,7 @@ connmark_tg_shift(struct sk_buff *skb, const struct xt_connmark_tginfo2 *info)
+ 		skb->mark = newmark;
+ 		break;
+ 	}
++out:
+ 	return XT_CONTINUE;
+ }
+ 
+-- 
+2.20.1 (Apple Git-117)
+
-- 
2.20.1 (Apple Git-117)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
