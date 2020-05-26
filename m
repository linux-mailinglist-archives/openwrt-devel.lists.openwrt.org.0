Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502421E194C
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 04:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xg8Wf44z6I9X5Bg9xzC14hDE8y+I73gpGbVK4Bs5z5A=; b=at8ZtM83QIh+AD
	cI/NcVSl+tlfqvuq2ToIUbKV2xhaB6Y8MKOAj+YxnKp27h+V0b9fXngA0AJTif2dcISWuQAUrfJHw
	oX0zUh6kUwim4ZQzQcHG0+CFZPYEVpVYAeXQ5pRLzW9njPcZwBCX34J7/7E5Bed4GhgXkl7qDNWmW
	HT8rif8xv9Cj314MJeFtCorsqCWHVuIILYSVacvzXnRvyzzvPhlOD0vFyk8XTXm/OdAvDwXf7Nrzl
	N4KBHgv9DCDNrK2dCby6TlGoS0/WB42qKb1pphBamH9GtpI3TRzOElhuP52OmnzJVHIkmxkxwb2ft
	X2GBLHZVND8LKI7sPGqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdPCu-0004oO-9m; Tue, 26 May 2020 02:20:44 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdPCm-0004nv-Cn
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 02:20:38 +0000
Received: from mail-oln040092253069.outbound.protection.outlook.com
 ([40.92.253.69] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <iancooper@hotmail.com>) id 1jdPCj-0000Ei-Pa
 for openwrt-devel@openwrt.org; Mon, 25 May 2020 22:20:34 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ii5NP/C4lz/2BCxJZNFeYBI+IJNDMVkm+tMB75yji1gbca8hdPFP6TMp6toVQDXyF4m2K/Qw8hbcEI8/ZvyjEBog7yWT1N/s4E7VUtzxmMYmmgO6RXx5Uq1O9qLpD+zocS4ZGSe/TNFELbY4AwLfdO1NO3i6o6XHrbTIg6nlKxgiszFyJL3C1csBTngDOoGjKMKCJXU8qZuZpYQVSwvCQbPvHDDBqMcSqzw8M4+Jydr8d8fptSjz7+z+O3CD14SzMxgrBS3MvN2bfslVPFx22uMcNCcV6w+tRsY/XZfhKEq3iUWSFLOwQW6ldmXzZRO0XTI1lhpWgknOqcnJi+ACvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFpdlEmahcn9wbNTvqnqgjgWItCquG1fVCnLy27XTY0=;
 b=Jd35kib3OTNDHIRZ34/m1IMza4W6sq4SO9Hd24c0E/pAP/AuHs0D55rwhdfhAYKSYG1eBz2tkIYH94KQWx/L89UO43zYgfvr17RHY5yde8yQWTHXL4qihbUtYejRBhg0XWtGoaHrkJffaqggXliREy80q2CifixvimpRUcYszJ5EOSpXrUdd/+I4of+Mk689qj8lz8qDq8e+2SI3Z1XC66J7UlwxTA1za9+xwxZYC96BE+QzV0zZSIaqcb6xk7KjSb2yg6nOqpvh7WZgjGFxfS6VQnKb/619AW6EGt5Tr3f7miQcjBJJC4uKs3OLuzduNfzqpZmrRNDCQKzBE7MJWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hotmail.com; dmarc=pass action=none header.from=hotmail.com;
 dkim=pass header.d=hotmail.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFpdlEmahcn9wbNTvqnqgjgWItCquG1fVCnLy27XTY0=;
 b=vIEB6F/Sbfl6d4m7mtGH9IzcKMl33CXm3qHfsM5nYBTcUtzENAdH79gFyEweiiuIUefftfdBpgxPFxWr8UkCVZLWeoxKOdw9nNCCtpbPKFtcjpKfA7Sf0VnK9OPMWVZdkN1AyoEurK1ueyEHm61ju9CvllNe60AljgvFqHI7I8s1EtUUD8PAvebTa4sMAP5vHrgU5stAs6WM9nDWyVV4b0+HpTOyeKvO0EPWa2EPLZr50CCMMAdXPyITHWvI6mgPq1cSmyujbNNr+2DkmynR344Vdn7wq+HB5OfqIU0VA3nITko31cjuUXn/Nc+h0nvD2z5trMlsViVLMPQ2lmEz0Q==
Received: from PU1APC01FT061.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::52) by
 PU1APC01HT208.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::188)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Tue, 26 May
 2020 02:20:29 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebe::49) by PU1APC01FT061.mail.protection.outlook.com
 (2a01:111:e400:7ebe::280) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Tue, 26 May 2020 02:20:29 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:B61ED66A26D7E316E6AA3BD25E3B3998EC6ECC74E0ED975282511A13C131E3AF;
 UpperCasedChecksum:FBC32D8AE9EF29E75DCCA75B18B1F91BEFD77DCAEA0B2CD6B01E852DF4A50964;
 SizeAsReceived:7431; Count:47
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 02:20:29 +0000
From: Ian Cooper <iancooper@hotmail.com>
To: openwrt-devel@openwrt.org
Date: Tue, 26 May 2020 03:20:08 +0100
Message-ID: <KU1PR01MB20229BA857814F799199E3F3ADB00@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: LO2P123CA0020.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::32) To KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2603:1096:802:23::18)
X-Microsoft-Original-Message-ID: <20200526022009.2545101-1-iancooper@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from azeroth.kz3.eu (80.3.14.56) by
 LO2P123CA0020.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:a6::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Tue, 26 May 2020 02:20:28 +0000
X-Mailer: git-send-email 2.25.1
X-Microsoft-Original-Message-ID: <20200526022009.2545101-1-iancooper@hotmail.com>
X-TMN: [FjALGgW3e8EkS+h5TjB8CNZx5kF7NuIC]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 2901619a-c4ad-4168-00d7-08d8011b5bc3
X-MS-TrafficTypeDiagnostic: PU1APC01HT208:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gPjN18Rul0cSlZvpZru8cBG3LQsCtteBhft+YA/YlsPi72aOe/1xQs+q4eJwjfKggoNF7ttiCTLZxiYheJou+kjX60Gmv38GdNTWpPNyJthVj0jEof8mYz7TpLlVpKPqubJmMuKx/adpbJ7afLqwWCES5BdbM8QSizK35gxe8JUhqnDXOBQjhutbnZJm6JjOF29hYc0vbIjMGCpa4wiJ/Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: 6kElv9EXM5mXsiz1pnMy02DYoioG3cvYS+aBrS4/EFUyEmKTsWIZwgqJvg8id0+MPuPD/YpvDhzv3zFR3duVfPwbkai0Do6J9b49wXAvHD6T2t2cu2Et6pxNdK60UVUd58MbgWaO57G2HJ7lAEGE5Q==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2901619a-c4ad-4168-00d7-08d8011b5bc3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2020 02:20:29.5072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT208
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview: Gcc's libssp is a standalone userspace implementation of SSP
 that makes gcc incompatible with kernel stack protection. Builds using libssp
 cannot enable kernel stack protection due to the insertion of [...] 
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: config-build.in]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (iancooper[at]hotmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.253.69 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_192036_722599_4ED2DC80 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 0/1] toolchain: remove gcc libssp and use
 libc variant
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Gcc's libssp is a standalone userspace implementation of SSP that
makes gcc incompatible with kernel stack protection. Builds using
libssp cannot enable kernel stack protection due to the insertion
of an incompatible stack canary by libssp-enabled gcc.

All three C libraries supported by OpenWrt have native stack
smashing protection and this should be used in preference.

This patch removes gcc's libssp, enables native ssp for glibc and
uses the existing, already-configured, native ssp for uClibc.

It also enables kernel stack smashing protection for non-musl libc
toolchains and creates a uniform configuration interface for both
userspace and kernel stack protection options across all C library
variants supported by OpenWrt. 

Kernel stack smashing protection is architecture dependent and
only available for a few architectures. The setting will be
ignored by the kernel if the architecture does not support it.

A minor semantic change is introduced to the config symbol
SSP_SUPPORT. Four packages rely on the SSP_SUPPORT symbol: avahi,
tor, openssh and cjdns. Of these, all will continue to compile
correctly in all cases except for avahi with glibc when stack
smashing protection is enabled.

The avahi Makefile will require a patch to remove an explicit 
link of libssp_nonshared.a triggered by a dependency on 
SSP_SUPPORT. Musl needs to link this library, however it is
part of the ALL_LIBS symbol and is automatically linked, so
the line can be safely removed from the avahi Makefile.

The other packages should be patched sometime to remove the
dependency on this ambiguous symbol (see commit 241e6dd3e) and
instead refer to PKG_CC_STACKPROTECTOR_NONE, after which the
symbol CONFIG_SSP_SUPPORT can be removed from the build
configuration.

All packages referring to the symbol GCC_LIBSSP will continue
to compile as before, as the symbol is retained, made non- 
configurable and set to a default of 'n'.

This patch has been compile tested on musl, glibc and uclibc
with mips, arc and x86_64 architectures, both with and without
stack smashing protection and run tested on x86_64 glibc with
both. 

Compiled kernels for x86_64 are verified to contain stack 
smashing protection via the relevant symbols in /proc/config.gz

  root@openwrt:~# zcat /proc/config.gz | grep STACKPROTECTOR
  CONFIG_CC_HAS_SANE_STACKPROTECTOR=y
  CONFIG_HAVE_STACKPROTECTOR=y
  CONFIG_CC_HAS_STACKPROTECTOR_NONE=y
  CONFIG_STACKPROTECTOR=y
  CONFIG_STACKPROTECTOR_STRONG=y

Binaries linked to uClibc and glibc are verified to contain
stack canaries. The userspace stack smashing protection is 
run-tested on glibc, however I don't have access to an arc-
based machine, so cannot run-test it for uClibc. If anyone
else has access and can run-test it on arc, then please do.

  uClibc: nm dropbearconvert | grep stack_chk
       U __stack_chk_fail
       U __stack_chk_guard

  glibc: nm dropbearconvert | grep stack_chk
       U __stack_chk_fail@@GLIBC_2.4

  root@openwrt:~# check-stack-protector
  this input string is much too long for the buffer
  *** stack smashing detected ***: terminated
  Aborted

The musl implementation remains unmodified.

Ian Cooper (1):
  toolchain: remove gcc libssp and use libc variant

 config/Config-build.in      | 4 ----
 toolchain/Config.in         | 2 +-
 toolchain/binutils/Makefile | 8 --------
 toolchain/gcc/Config.in     | 6 +-----
 toolchain/glibc/common.mk   | 3 ++-
 5 files changed, 4 insertions(+), 19 deletions(-)

-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
