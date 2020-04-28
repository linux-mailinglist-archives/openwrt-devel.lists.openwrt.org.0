Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288F61BC466
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 18:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AaeHsobtO6drL+5vuJ7DdxwCWPsR6Ksxzn2DeWl5J1I=; b=MaiHcTKyqR3YbX
	f+DIWZ0l/1FDQFsf4yrocqRBcJfG5ETSUcGxIu856HCJxr7NvQUErH6K74YMuzyevsi+tGm0W4I43
	TA+tfoo7KxQDCkCh1IlZINfRHaF9sBTEGlH1+lV+RvDLWNfPmkoR11oEvd3Ry24McCOpyzyVoPid/
	sD+OKHB2pUCr5AxAqJtNKEJboqYGoHPv4x99qQz9CVodfqeiQS/QxRNbCDBE5dqAGsGp3i9K1vst1
	c5RKRIudQ4GXYkcztbcZztxD8vRdZ94Xvoy+X+l8NvhByHSTJfIdYf07wxnqcFS3Blk+hn6qtyapD
	l/1xGCZOapCPSAKUco5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSgX-0007r1-Lb; Tue, 28 Apr 2020 16:02:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSgH-0007iI-4r
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 16:02:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id x18so25273287wrq.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Apr 2020 09:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=IoY2H3fg4csAIO75GGQIj3EP2V5b1n1gRsbrxSCLNlU=;
 b=VaSxUVgMLKeDHoeRbo3ac+z7rE4585VYu2U5yFtGz4TtMCQNlqKKnEJz7bhbgs7nWH
 1Z/3hp69WtM7CX7UO5qAOXQzJHrSkqb87OIQMuDHq+zaGLoYe/egbp/kno6rHqzZkNUM
 5ZER3bxWnqxSKZfh5sjS6epLQtMXoG4mv4+q5EhbwDlsMrY4cISoYKT8+aKsguiFvZmv
 RUxmKJXTJw4W8HFX/RPuO5ozwk7jWJ8GkPiho6D10I8muauDtXVdtcb1V7BxBAQXZ60M
 aEGJU4X5rbjZvDkWRXrTKm5rTXqW0em+qQCJOAnbX1RN54NkVU+0jy4dFDCFO6HKgWUp
 g9ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=IoY2H3fg4csAIO75GGQIj3EP2V5b1n1gRsbrxSCLNlU=;
 b=oy8Zqa8nAUL1Zbiiu5R18j6OncMZEsQgS43D6FA1S9Q6rh5xwfpRtyqR1JEPKYG6yZ
 VtbEafT6GIETdLwo+m3F06PIjIHyntGDHnIDctFvloOfW0Aug8N2rtCiBbiexdP3+OPQ
 Nr/22TUCFyVeDVjRX6ZlPeqYY1Y3/FLwjkHpso1CagirzrOA+vvCx/YWCxyYX6sdcF+r
 ORJHh8qVJxOlEpW8Or6Lsw+BYLBzQqGyhu1WwgRdWA/l27ZGvts5QlLDEgGvGudbmJ3d
 kc2tkArCaGQ5seiNkS32NtZPnZNHP1wW7zKY67OKxKaydLWzyPFW/WKJFB+wL2A4Ovbp
 ftxg==
X-Gm-Message-State: AGi0PuY9syZhO86yJME6B3Mi/4909mGAHaPI6n03FdhkTFOsrszTBwQw
 sZjl1LzRb1pUzs46ZOBjrPq5XN8r
X-Google-Smtp-Source: APiQypLkNt+uWh32H2a3Cgcdbt9rrg92je6pUSR4bUO/vCqpmzrIk6AsI22asisFd1tOnDzWmbawMg==
X-Received: by 2002:adf:cc81:: with SMTP id p1mr36161647wrj.372.1588089714544; 
 Tue, 28 Apr 2020 09:01:54 -0700 (PDT)
Received: from cplx1037.edegem.eu.thmulti.com
 ([2001:4158:f012:da0:2a10:7bff:fec5:6f08])
 by smtp.gmail.com with ESMTPSA id t20sm4281240wmi.2.2020.04.28.09.01.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 09:01:53 -0700 (PDT)
From: Alin Nastac <alin.nastac@gmail.com>
X-Google-Original-From: Alin Nastac <alin.nastac@technicolor.com>
To: Jo-Philipp Wich <jo@mein.io>, Hans Dedecker <dedeckeh@gmail.com>,
 openwrt-devel@lists.openwrt.org
Date: Tue, 28 Apr 2020 18:01:47 +0200
Message-Id: <1588089707-12422-1-git-send-email-alin.nastac@technicolor.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_090157_231049_BACD9E3B 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [firewall3][PATCH v2] redirect & nat: add IPv6 NAT
 support
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

1) Remove hardcoded restrictions that disable redirect support on IPv6.
2) Allow usage of IP address lists in redirect and snat uci sections.
This is needed for 2 scenarios:
  - use the interface address that matches the redirect & nat family
    when dest_ip is set to an interface name
  - set redirect destination to a pair of IPv4/v6 addresses when DNAT
    redirection is needed on both families
To be documented that, although redirect & nat IP addresses are now
technically lists, only the first address of the respective family
will be used in the correspondent ip(6)tables rule.

This new feature has been tested with the following redirect:
  config redirect
        option name 'DNS-interception'
        option src 'lan'
        option dest 'lan'
        option family 'any'
        option proto 'tcpudp'
        option src_dport '53'
        option dest_ip 'lan'
        option target 'DNAT'

It was also tested on a build that did not supported IPv6 NAT (nat
was not present in /proc/net/ip6_tables_names), fw3 -d restart did
not signaled any error.

Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
---
 defaults.c  |   4 +-
 options.h   |  12 ++---
 redirects.c | 157 ++++++++++++++++++++++++++++++++++++++----------------------
 redirects.h |   2 +-
 snats.c     |  78 +++++++++++++++++++-----------
 ubus.c      |  37 +++++++++++++-
 utils.c     |  34 +++++++++++++
 utils.h     |   6 +++
 zones.c     |  11 +++--
 9 files changed, 243 insertions(+), 98 deletions(-)

diff --git a/defaults.c b/defaults.c
index 60a4c81..e5369eb 100644
--- a/defaults.c
+++ b/defaults.c
@@ -29,8 +29,8 @@ static const struct fw3_chain_spec default_chains[] = {
 	C(ANY, FILTER, CUSTOM_CHAINS, "forwarding_rule"),
 	C(ANY, FILTER, SYN_FLOOD,     "syn_flood"),
 
-	C(V4,  NAT,    CUSTOM_CHAINS, "prerouting_rule"),
-	C(V4,  NAT,    CUSTOM_CHAINS, "postrouting_rule"),
+	C(ANY, NAT,    CUSTOM_CHAINS, "prerouting_rule"),
+	C(ANY, NAT,    CUSTOM_CHAINS, "postrouting_rule"),
 
 	{ }
 };
diff --git a/options.h b/options.h
index e20c89b..d48db74 100644
--- a/options.h
+++ b/options.h
@@ -420,14 +420,14 @@ struct fw3_redirect
 
 	struct list_head proto;
 
-	struct fw3_address ip_src;
+	struct list_head ip_src;
 	struct list_head mac_src;
 	struct fw3_port port_src;
 
-	struct fw3_address ip_dest;
+	struct list_head ip_dest;
 	struct fw3_port port_dest;
 
-	struct fw3_address ip_redir;
+	struct list_head ip_redir;
 	struct fw3_port port_redir;
 
 	struct fw3_limit limit;
@@ -462,13 +462,13 @@ struct fw3_snat
 
 	struct list_head proto;
 
-	struct fw3_address ip_src;
+	struct list_head ip_src;
 	struct fw3_port port_src;
 
-	struct fw3_address ip_dest;
+	struct list_head ip_dest;
 	struct fw3_port port_dest;
 
-	struct fw3_address ip_snat;
+	struct list_head ip_snat;
 	struct fw3_port port_snat;
 
 	struct fw3_limit limit;
diff --git a/redirects.c b/redirects.c
index b928287..1b7245b 100644
--- a/redirects.c
+++ b/redirects.c
@@ -33,14 +33,14 @@ const struct fw3_option fw3_redirect_opts[] = {
 
 	FW3_LIST("proto",              protocol,  redirect,     proto),
 
-	FW3_OPT("src_ip",              network,   redirect,     ip_src),
+	FW3_LIST("src_ip",             network,   redirect,     ip_src),
 	FW3_LIST("src_mac",            mac,       redirect,     mac_src),
 	FW3_OPT("src_port",            port,      redirect,     port_src),
 
-	FW3_OPT("src_dip",             network,   redirect,     ip_dest),
+	FW3_LIST("src_dip",            network,   redirect,     ip_dest),
 	FW3_OPT("src_dport",           port,      redirect,     port_dest),
 
-	FW3_OPT("dest_ip",             network,   redirect,     ip_redir),
+	FW3_LIST("dest_ip",            network,   redirect,     ip_redir),
 	FW3_OPT("dest_port",           port,      redirect,     port_redir),
 
 	FW3_OPT("extra",               string,    redirect,     extra),
@@ -68,7 +68,6 @@ const struct fw3_option fw3_redirect_opts[] = {
 	{ }
 };
 
-
 static bool
 check_families(struct uci_element *e, struct fw3_redirect *r)
 {
@@ -101,19 +100,19 @@ check_families(struct uci_element *e, struct fw3_redirect *r)
 		return false;
 	}
 
-	if (r->ip_src.family && r->ip_src.family != r->family)
+	if (!fw3_check_family_addr(&r->ip_src, r->family))
 	{
 		warn_elem(e, "uses source ip with different family");
 		return false;
 	}
 
-	if (r->ip_dest.family && r->ip_dest.family != r->family)
+	if (!fw3_check_family_addr(&r->ip_dest, r->family))
 	{
 		warn_elem(e, "uses destination ip with different family");
 		return false;
 	}
 
-	if (r->ip_redir.family && r->ip_redir.family != r->family)
+	if (!fw3_check_family_addr(&r->ip_redir, r->family))
 	{
 		warn_elem(e, "uses redirect ip with different family");
 		return false;
@@ -123,13 +122,23 @@ check_families(struct uci_element *e, struct fw3_redirect *r)
 }
 
 static bool
-compare_addr(struct fw3_address *a, struct fw3_address *b)
+addr_matches_prefix(struct fw3_address *addr, struct fw3_address *pfx)
 {
-	if (a->family != FW3_FAMILY_V4 || b->family != FW3_FAMILY_V4)
+	if (addr->family != pfx->family)
 		return false;
 
-	return ((a->address.v4.s_addr & a->mask.v4.s_addr) ==
-	        (b->address.v4.s_addr & a->mask.v4.s_addr));
+	return (pfx->family == FW3_FAMILY_V4 &&
+			(pfx->address.v4.s_addr & pfx->mask.v4.s_addr) ==
+			(addr->address.v4.s_addr & pfx->mask.v4.s_addr)) ||
+	       (pfx->family == FW3_FAMILY_V6 &&
+			(pfx->address.v6.s6_addr32[0] & pfx->mask.v6.s6_addr32[0]) ==
+			(addr->address.v6.s6_addr32[0] & pfx->mask.v6.s6_addr32[0]) &&
+			(pfx->address.v6.s6_addr32[1] & pfx->mask.v6.s6_addr32[1]) ==
+			(addr->address.v6.s6_addr32[1] & pfx->mask.v6.s6_addr32[1]) &&
+			(pfx->address.v6.s6_addr32[2] & pfx->mask.v6.s6_addr32[2]) ==
+			(addr->address.v6.s6_addr32[2] & pfx->mask.v6.s6_addr32[2]) &&
+			(pfx->address.v6.s6_addr32[3] & pfx->mask.v6.s6_addr32[3]) ==
+			(addr->address.v6.s6_addr32[3] & pfx->mask.v6.s6_addr32[3]));
 }
 
 static bool
@@ -139,8 +148,9 @@ resolve_dest(struct uci_element *e, struct fw3_redirect *redir,
 	struct fw3_zone *zone;
 	struct fw3_address *addr;
 	struct list_head *addrs;
+	struct fw3_address *ip_redir = list_first_entry(&redir->ip_redir, struct fw3_address, list);
 
-	if (!redir->ip_redir.set)
+	if (!ip_redir->set)
 		return false;
 
 	list_for_each_entry(zone, &state->zones, list)
@@ -152,7 +162,7 @@ resolve_dest(struct uci_element *e, struct fw3_redirect *redir,
 
 		list_for_each_entry(addr, addrs, list)
 		{
-			if (!compare_addr(addr, &redir->ip_redir))
+			if (!addr_matches_prefix(ip_redir, addr))
 				continue;
 
 			strncpy(redir->dest.name, zone->name, sizeof(redir->dest.name) - 1);
@@ -175,10 +185,12 @@ static bool
 check_local(struct uci_element *e, struct fw3_redirect *redir,
             struct fw3_state *state)
 {
+	struct fw3_address *ip_redir = list_first_entry(&redir->ip_redir, struct fw3_address, list);
+
 	if (redir->target != FW3_FLAG_DNAT)
 		return false;
 
-	if (!redir->ip_redir.set)
+	if (!ip_redir->set)
 		redir->local = true;
 
 	return redir->local;
@@ -300,6 +312,7 @@ check_redirect(struct fw3_state *state, struct fw3_redirect *redir, struct uci_e
 		else
 		{
 			set(redir->_src->flags, FW3_FAMILY_V4, redir->target);
+			set(redir->_src->flags, FW3_FAMILY_V6, redir->target);
 			valid = true;
 
 			if (!check_local(e, redir, state) && !redir->dest.set &&
@@ -318,7 +331,10 @@ check_redirect(struct fw3_state *state, struct fw3_redirect *redir, struct uci_e
 			}
 
 			if (redir->helper.ptr)
+			{
 				set(redir->_src->flags, FW3_FAMILY_V4, FW3_FLAG_HELPER);
+				set(redir->_src->flags, FW3_FAMILY_V6, FW3_FLAG_HELPER);
+			}
 		}
 	}
 	else
@@ -328,7 +344,7 @@ check_redirect(struct fw3_state *state, struct fw3_redirect *redir, struct uci_e
 					"must not have destination '*' for SNAT target");
 		else if (!redir->_dest)
 			warn_section("redirect", redir, e, "has no destination specified");
-		else if (!redir->ip_dest.set)
+		else if (list_empty(&redir->ip_dest))
 			warn_section("redirect", redir, e, "has no src_dip option specified");
 		else if (!list_empty(&redir->mac_src))
 			warn_section("redirect", redir, e, "must not use 'src_mac' option for SNAT target");
@@ -337,6 +353,7 @@ check_redirect(struct fw3_state *state, struct fw3_redirect *redir, struct uci_e
 		else
 		{
 			set(redir->_dest->flags, FW3_FAMILY_V4, redir->target);
+			set(redir->_dest->flags, FW3_FAMILY_V6, redir->target);
 			valid = true;
 		}
 	}
@@ -366,7 +383,10 @@ fw3_alloc_redirect(struct fw3_state *state)
 		return NULL;
 
 	INIT_LIST_HEAD(&redir->proto);
+	INIT_LIST_HEAD(&redir->ip_src);
 	INIT_LIST_HEAD(&redir->mac_src);
+	INIT_LIST_HEAD(&redir->ip_dest);
+	INIT_LIST_HEAD(&redir->ip_redir);
 	INIT_LIST_HEAD(&redir->reflection_zones);
 
 	redir->enabled = true;
@@ -477,13 +497,26 @@ static void
 set_snat_dnat(struct fw3_ipt_rule *r, enum fw3_flag target,
               struct fw3_address *addr, struct fw3_port *port)
 {
-	char buf[sizeof("255.255.255.255:65535-65535\0")];
+	char buf[sizeof("[ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff]:65535-65535\0")];
 
 	buf[0] = '\0';
 
 	if (addr && addr->set)
 	{
-		inet_ntop(AF_INET, &addr->address.v4, buf, sizeof(buf));
+		if (addr->family == FW3_FAMILY_V4)
+			inet_ntop(AF_INET, &addr->address.v4, buf, sizeof(buf));
+		else
+		{
+			int len;
+
+			buf[0] = '[';
+			if (inet_ntop(AF_INET6, &addr->address.v6, buf + 1, sizeof(buf) - 2))
+				len = strlen(buf);
+			else
+				len = 1;
+			buf[len++]= ']';
+			buf[len] = '\0';
+		}
 	}
 
 	if (port && port->set)
@@ -508,17 +541,6 @@ set_snat_dnat(struct fw3_ipt_rule *r, enum fw3_flag target,
 }
 
 static void
-set_target_nat(struct fw3_ipt_rule *r, struct fw3_redirect *redir)
-{
-	if (redir->local)
-		set_redirect(r, &redir->port_redir);
-	else if (redir->target == FW3_FLAG_DNAT)
-		set_snat_dnat(r, redir->target, &redir->ip_redir, &redir->port_redir);
-	else
-		set_snat_dnat(r, redir->target, &redir->ip_dest, &redir->port_dest);
-}
-
-static void
 set_comment(struct fw3_ipt_rule *r, const char *name, int num, const char *suffix)
 {
 	if (name)
@@ -543,32 +565,41 @@ print_redirect(struct fw3_ipt_handle *h, struct fw3_state *state,
                struct fw3_protocol *proto, struct fw3_mac *mac)
 {
 	struct fw3_ipt_rule *r;
-	struct fw3_address *src, *dst;
-	struct fw3_port *spt, *dpt;
+	struct fw3_address *src, *dst, *rdr;
+	struct fw3_port *spt, *dpt, *rpt;
 
 	switch (h->table)
 	{
 	case FW3_TABLE_NAT:
-		src = &redir->ip_src;
-		dst = &redir->ip_dest;
-		spt = &redir->port_src;
-		dpt = &redir->port_dest;
-
-		if (redir->target == FW3_FLAG_SNAT)
+		src = fw3_first_family_addr(&redir->ip_src, h->family);
+		dst = fw3_first_family_addr(&redir->ip_dest, h->family);
+		rdr = fw3_first_family_addr(&redir->ip_redir, h->family);
+		if ((src == NULL && !list_empty(&redir->ip_src)) ||
+		    (dst == NULL && !list_empty(&redir->ip_dest)) ||
+		    (rdr == NULL && !list_empty(&redir->ip_redir)))
 		{
-			dst = &redir->ip_redir;
-			dpt = &redir->port_redir;
+			info("     ! Skipping due to different family of ip address");
+			return;
 		}
 
-		r = fw3_ipt_rule_create(h, proto, NULL, NULL, src, dst);
-		fw3_ipt_rule_sport_dport(r, spt, dpt);
+		spt = &redir->port_src;
+		dpt = &redir->port_dest;
+		rpt = &redir->port_redir;
+
+		r = fw3_ipt_rule_create(h, proto, NULL, NULL, src, redir->target == FW3_FLAG_SNAT ? rdr : dst);
+		fw3_ipt_rule_sport_dport(r, spt, redir->target == FW3_FLAG_SNAT ? rpt : dpt);
 		fw3_ipt_rule_mac(r, mac);
 		fw3_ipt_rule_ipset(r, &redir->ipset);
 		fw3_ipt_rule_helper(r, &redir->helper);
 		fw3_ipt_rule_limit(r, &redir->limit);
 		fw3_ipt_rule_time(r, &redir->time);
 		fw3_ipt_rule_mark(r, &redir->mark);
-		set_target_nat(r, redir);
+		if (redir->local)
+			set_redirect(r, rpt);
+		else if (redir->target == FW3_FLAG_DNAT)
+			set_snat_dnat(r, redir->target, rdr, rpt);
+		else
+			set_snat_dnat(r, redir->target, dst, dpt);
 		fw3_ipt_rule_extra(r, redir->extra);
 		set_comment(r, redir->name, num, NULL);
 		append_chain_nat(r, redir);
@@ -577,6 +608,15 @@ print_redirect(struct fw3_ipt_handle *h, struct fw3_state *state,
 	case FW3_TABLE_RAW:
 		if (redir->target == FW3_FLAG_DNAT && redir->helper.ptr)
 		{
+			src = fw3_first_family_addr(&redir->ip_src, h->family);
+			rdr = fw3_first_family_addr(&redir->ip_redir, h->family);
+			if ((src == NULL && !list_empty(&redir->ip_src)) ||
+			    (rdr == NULL && !list_empty(&redir->ip_redir)))
+			{
+				info("     ! Skipping due to different family of ip address");
+				return;
+			}
+
 			if (!fw3_cthelper_check_proto(redir->helper.ptr, proto))
 			{
 				info("     ! Skipping protocol %s since helper '%s' does not support it",
@@ -588,7 +628,7 @@ print_redirect(struct fw3_ipt_handle *h, struct fw3_state *state,
 				info("     - Auto-selected conntrack helper '%s' based on proto/port",
 				     redir->helper.ptr->name);
 
-			r = fw3_ipt_rule_create(h, proto, NULL, NULL, &redir->ip_src, &redir->ip_redir);
+			r = fw3_ipt_rule_create(h, proto, NULL, NULL, src, rdr);
 			fw3_ipt_rule_sport_dport(r, &redir->port_src, &redir->port_redir);
 			fw3_ipt_rule_mac(r, mac);
 			fw3_ipt_rule_ipset(r, &redir->ipset);
@@ -616,19 +656,26 @@ print_reflection(struct fw3_ipt_handle *h, struct fw3_state *state,
                  struct fw3_address *ia, struct fw3_address *ea, struct fw3_device *rz)
 {
 	struct fw3_ipt_rule *r;
+	struct fw3_address *rdr;
 
 	switch (h->table)
 	{
 	case FW3_TABLE_NAT:
+		rdr = fw3_first_family_addr(&redir->ip_redir, h->family);
+		if (rdr == NULL && !list_empty(&redir->ip_redir))
+		{
+			info("     ! Skipping reflection due to different family of dest_ip");
+			return;
+		}
 		r = fw3_ipt_rule_create(h, proto, NULL, NULL, ia, ea);
 		fw3_ipt_rule_sport_dport(r, NULL, &redir->port_dest);
 		fw3_ipt_rule_limit(r, &redir->limit);
 		fw3_ipt_rule_time(r, &redir->time);
 		set_comment(r, redir->name, num, "reflection");
-		set_snat_dnat(r, FW3_FLAG_DNAT, &redir->ip_redir, &redir->port_redir);
+		set_snat_dnat(r, FW3_FLAG_DNAT, rdr, &redir->port_redir);
 		fw3_ipt_rule_replace(r, "zone_%s_prerouting", rz->name);
 
-		r = fw3_ipt_rule_create(h, proto, NULL, NULL, ia, &redir->ip_redir);
+		r = fw3_ipt_rule_create(h, proto, NULL, NULL, ia, rdr);
 		fw3_ipt_rule_sport_dport(r, NULL, &redir->port_redir);
 		fw3_ipt_rule_limit(r, &redir->limit);
 		fw3_ipt_rule_time(r, &redir->time);
@@ -653,6 +700,9 @@ expand_redirect(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	struct fw3_device *reflection_zone;
 	struct fw3_zone *zone;
 
+	if (!fw3_is_family(redir, handle->family))
+		return;
+
 	if (redir->name)
 		info("   * Redirect '%s'", redir->name);
 	else
@@ -665,15 +715,11 @@ expand_redirect(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		return;
 	}
 
-	if (!fw3_is_family(&redir->ip_src, handle->family) ||
-	    !fw3_is_family(&redir->ip_dest, handle->family) ||
-		!fw3_is_family(&redir->ip_redir, handle->family))
+	if (!fw3_check_family_addr(&redir->ip_src, handle->family) ||
+	    !fw3_check_family_addr(&redir->ip_dest, handle->family) ||
+	    !fw3_check_family_addr(&redir->ip_redir, handle->family))
 	{
-		if (!redir->ip_src.resolved ||
-		    !redir->ip_dest.resolved ||
-		    !redir->ip_redir.resolved)
-			info("     ! Skipping due to different family of ip address");
-
+		info("     ! Skipping due to different family of ip address");
 		return;
 	}
 
@@ -701,13 +747,13 @@ expand_redirect(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		print_redirect(handle, state, redir, num, proto, mac);
 
 	/* reflection rules */
-	if (redir->target != FW3_FLAG_DNAT || !redir->reflection || redir->local)
+	if (redir->target != FW3_FLAG_DNAT || !redir->reflection || redir->local || handle->family != FW3_FAMILY_V4)
 		return;
 
 	if (!redir->_dest || !redir->_src->masq)
 		return;
 
-	ext_addrs = fw3_resolve_zone_addresses(redir->_src, &redir->ip_dest);
+	ext_addrs = fw3_resolve_zone_addresses(redir->_src, fw3_first_family_addr(&redir->ip_dest, handle->family));
 
 	if (!ext_addrs)
 		goto out;
@@ -769,9 +815,6 @@ fw3_print_redirects(struct fw3_ipt_handle *handle, struct fw3_state *state)
 	int num = 0;
 	struct fw3_redirect *redir;
 
-	if (handle->family == FW3_FAMILY_V6)
-		return;
-
 	if (handle->table != FW3_TABLE_FILTER &&
 	    handle->table != FW3_TABLE_NAT &&
 	    handle->table != FW3_TABLE_RAW)
diff --git a/redirects.h b/redirects.h
index 0d46bd2..3e4db7b 100644
--- a/redirects.h
+++ b/redirects.h
@@ -23,7 +23,7 @@
 #include "zones.h"
 #include "ipsets.h"
 #include "helpers.h"
-#include "ubus.h"
+#include "utils.h"
 #include "iptables.h"
 
 extern const struct fw3_option fw3_redirect_opts[];
diff --git a/snats.c b/snats.c
index 1d78f93..00ac82a 100644
--- a/snats.c
+++ b/snats.c
@@ -32,13 +32,13 @@ const struct fw3_option fw3_snat_opts[] = {
 
 	FW3_LIST("proto",              protocol,  snat,     proto),
 
-	FW3_OPT("src_ip",              network,   snat,     ip_src),
+	FW3_LIST("src_ip",             network,   snat,     ip_src),
 	FW3_OPT("src_port",            port,      snat,     port_src),
 
-	FW3_OPT("snat_ip",             network,   snat,     ip_snat),
+	FW3_LIST("snat_ip",            network,   snat,     ip_snat),
 	FW3_OPT("snat_port",           port,      snat,     port_snat),
 
-	FW3_OPT("dest_ip",             network,   snat,     ip_dest),
+	FW3_LIST("dest_ip",            network,   snat,     ip_dest),
 	FW3_OPT("dest_port",           port,      snat,     port_dest),
 
 	FW3_OPT("extra",               string,    snat,     extra),
@@ -83,19 +83,19 @@ check_families(struct uci_element *e, struct fw3_snat *r)
 		return false;
 	}
 
-	if (r->ip_src.family && r->ip_src.family != r->family)
+	if (!fw3_check_family_addr(&r->ip_src, r->family))
 	{
 		warn_section("nat", r, e, "uses source ip with different family");
 		return false;
 	}
 
-	if (r->ip_dest.family && r->ip_dest.family != r->family)
+	if (!fw3_check_family_addr(&r->ip_dest, r->family))
 	{
 		warn_section("nat", r, e, "uses destination ip with different family");
 		return false;
 	}
 
-	if (r->ip_snat.family && r->ip_snat.family != r->family)
+	if (!fw3_check_family_addr(&r->ip_snat, r->family))
 	{
 		warn_section("nat", r, e, "uses snat ip with different family");
 		return false;
@@ -112,6 +112,9 @@ alloc_snat(struct fw3_state *state)
 
 	if (snat) {
 		INIT_LIST_HEAD(&snat->proto);
+		INIT_LIST_HEAD(&snat->ip_src);
+		INIT_LIST_HEAD(&snat->ip_dest);
+		INIT_LIST_HEAD(&snat->ip_snat);
 		list_add_tail(&snat->list, &state->snats);
 		snat->enabled = true;
 	}
@@ -164,12 +167,12 @@ check_snat(struct fw3_state *state, struct fw3_snat *snat, struct uci_element *e
 	}
 
 	if (snat->target == FW3_FLAG_SNAT &&
-			!snat->ip_snat.set && !snat->port_snat.set)
+			list_empty(&snat->ip_snat) && !snat->port_snat.set)
 	{
 		warn_section("nat", snat, e, "needs either 'snat_ip' or 'snat_port' for SNAT");
 		return false;
 	}
-	else if (snat->target != FW3_FLAG_SNAT && snat->ip_snat.set)
+	else if (snat->target != FW3_FLAG_SNAT && !list_empty(&snat->ip_snat))
 	{
 		warn_section("nat", snat, e, "must not use 'snat_ip' for non-SNAT");
 		return false;
@@ -187,7 +190,10 @@ check_snat(struct fw3_state *state, struct fw3_snat *snat, struct uci_element *e
 	}
 
 	if (snat->_src)
+	{
 		set(snat->_src->flags, FW3_FAMILY_V4, FW3_FLAG_SNAT);
+		set(snat->_src->flags, FW3_FAMILY_V6, FW3_FLAG_SNAT);
+	}
 
 	return true;
 }
@@ -262,18 +268,31 @@ append_chain(struct fw3_ipt_rule *r, struct fw3_snat *snat)
 }
 
 static void
-set_target(struct fw3_ipt_rule *r, struct fw3_snat *snat,
+set_target(struct fw3_ipt_rule *r, struct fw3_snat *snat, struct fw3_address *snat_addr,
            struct fw3_protocol *proto)
 {
-	char buf[sizeof("255.255.255.255:65535-65535\0")];
+	char buf[sizeof("[ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff]:65535-65535\0")];
 
 	if (snat->target == FW3_FLAG_SNAT)
 	{
 		buf[0] = '\0';
 
-		if (snat->ip_snat.set)
+		if (snat_addr && snat_addr->set)
 		{
-			inet_ntop(AF_INET, &snat->ip_snat.address.v4, buf, sizeof(buf));
+			if (snat_addr->family == FW3_FAMILY_V4)
+				inet_ntop(AF_INET, &snat_addr->address.v4, buf, sizeof(buf));
+			else
+			{
+				int len;
+
+				buf[0] = '[';
+				if (inet_ntop(AF_INET6, &snat_addr->address.v6, buf + 1, sizeof(buf) - 2))
+					len = strlen(buf);
+				else
+					len = 1;
+				buf[len++]= ']';
+				buf[len] = '\0';
+			}
 		}
 
 		if (snat->port_snat.set && proto && !proto->any &&
@@ -323,14 +342,23 @@ print_snat(struct fw3_ipt_handle *h, struct fw3_state *state,
            struct fw3_snat *snat, int num, struct fw3_protocol *proto)
 {
 	struct fw3_ipt_rule *r;
-	struct fw3_address *src, *dst;
+	struct fw3_address *src, *dst, *snt;
 	struct fw3_port *spt, *dpt;
 
 	switch (h->table)
 	{
 	case FW3_TABLE_NAT:
-		src = &snat->ip_src;
-		dst = &snat->ip_dest;
+		src = fw3_first_family_addr(&snat->ip_src, h->family);
+		dst = fw3_first_family_addr(&snat->ip_dest, h->family);
+		snt = fw3_first_family_addr(&snat->ip_snat, h->family);
+		if ((src == NULL && !list_empty(&snat->ip_src)) ||
+		    (dst == NULL && !list_empty(&snat->ip_dest)) ||
+		    (snt == NULL && !list_empty(&snat->ip_snat)))
+		{
+			info("     ! Skipping due to different family of ip address");
+			return;
+		}
+
 		spt = &snat->port_src;
 		dpt = &snat->port_dest;
 
@@ -341,7 +369,7 @@ print_snat(struct fw3_ipt_handle *h, struct fw3_state *state,
 		fw3_ipt_rule_limit(r, &snat->limit);
 		fw3_ipt_rule_time(r, &snat->time);
 		fw3_ipt_rule_mark(r, &snat->mark);
-		set_target(r, snat, proto);
+		set_target(r, snat, snt, proto);
 		fw3_ipt_rule_extra(r, snat->extra);
 		set_comment(r, snat->name, num);
 		append_chain(r, snat);
@@ -358,6 +386,9 @@ expand_snat(struct fw3_ipt_handle *handle, struct fw3_state *state,
 {
 	struct fw3_protocol *proto;
 
+	if (!fw3_is_family(snat, handle->family))
+		return;
+
 	if (snat->name)
 		info("   * NAT '%s'", snat->name);
 	else
@@ -369,15 +400,11 @@ expand_snat(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		return;
 	}
 
-	if (!fw3_is_family(&snat->ip_src, handle->family) ||
-	    !fw3_is_family(&snat->ip_dest, handle->family) ||
-		!fw3_is_family(&snat->ip_snat, handle->family))
+	if (!fw3_check_family_addr(&snat->ip_src, handle->family) ||
+	    !fw3_check_family_addr(&snat->ip_dest, handle->family) ||
+	    !fw3_check_family_addr(&snat->ip_snat, handle->family))
 	{
-		if (!snat->ip_src.resolved ||
-		    !snat->ip_dest.resolved ||
-		    !snat->ip_snat.resolved)
-			info("     ! Skipping due to different family of ip address");
-
+		info("     ! Skipping due to different family of ip address");
 		return;
 	}
 
@@ -410,9 +437,6 @@ fw3_print_snats(struct fw3_ipt_handle *handle, struct fw3_state *state)
 	int num = 0;
 	struct fw3_snat *snat;
 
-	if (handle->family == FW3_FAMILY_V6)
-		return;
-
 	if (handle->table != FW3_TABLE_NAT)
 		return;
 
diff --git a/ubus.c b/ubus.c
index cf5c8b1..0e47f00 100644
--- a/ubus.c
+++ b/ubus.c
@@ -133,6 +133,41 @@ parse_subnets(struct list_head *head, enum fw3_family family,
 	return n;
 }
 
+static int
+parse_prefix_assignments(struct list_head *head, enum fw3_family family,
+              struct blob_attr *list)
+{
+	struct blob_attr *pfx, *cur;
+	struct fw3_address *addr;
+	int rem, pfxlen, n = 0;
+
+	if (!list)
+		return 0;
+
+	rem = blobmsg_data_len(list);
+
+	__blob_for_each_attr(pfx, blobmsg_data(list), rem)
+	{
+		pfxlen = blobmsg_data_len(pfx);
+
+		__blob_for_each_attr(cur, blobmsg_data(pfx), pfxlen)
+		{
+			if (!strcmp(blobmsg_name(cur), "local-address"))
+			{
+				addr = parse_subnet(family, blobmsg_data(cur), blobmsg_data_len(cur));
+
+				if (addr)
+				{
+					list_add_tail(&addr->list, head);
+					n++;
+				}
+			}
+		}
+	}
+
+	return n;
+}
+
 struct fw3_device *
 fw3_ubus_device(const char *net)
 {
@@ -218,7 +253,7 @@ fw3_ubus_address(struct list_head *list, const char *net)
 
 		n += parse_subnets(list, FW3_FAMILY_V4, tb[ADDR_IPV4]);
 		n += parse_subnets(list, FW3_FAMILY_V6, tb[ADDR_IPV6]);
-		n += parse_subnets(list, FW3_FAMILY_V6, tb[ADDR_IPV6_PREFIX]);
+		n += parse_prefix_assignments(list, FW3_FAMILY_V6, tb[ADDR_IPV6_PREFIX]);
 	}
 
 	return n;
diff --git a/utils.c b/utils.c
index da65632..f1f9282 100644
--- a/utils.c
+++ b/utils.c
@@ -1047,3 +1047,37 @@ fw3_check_loopback_addr(struct fw3_address *addr)
 
 	return false;
 }
+
+struct fw3_address *
+fw3_first_family_addr(struct list_head *addrs, enum fw3_family family)
+{
+	struct fw3_address *addr;
+
+	if (family == FW3_FAMILY_ANY)
+		return NULL;
+
+	list_for_each_entry(addr, addrs, list)
+	{
+		if (addr->family == family)
+			return addr;
+	}
+
+	return NULL;
+}
+
+bool
+fw3_check_family_addr(struct list_head *addrs, enum fw3_family family)
+{
+	struct fw3_address *addr;
+
+	if (family == FW3_FAMILY_ANY || list_empty(addrs))
+		return true;
+
+	list_for_each_entry(addr, addrs, list)
+	{
+		if (addr->family == family)
+			return true;
+	}
+
+	return false;
+}
diff --git a/utils.h b/utils.h
index 254bea4..4ffcbe6 100644
--- a/utils.h
+++ b/utils.h
@@ -44,6 +44,7 @@
 
 extern bool fw3_pr_debug;
 
+enum fw3_family;
 struct fw3_address;
 
 void warn_elem(struct uci_element *e, const char *format, ...)
@@ -134,4 +135,9 @@ const char * fw3_protoname(void *proto);
 bool fw3_check_loopback_dev(const char *name);
 
 bool fw3_check_loopback_addr(struct fw3_address *addr);
+
+struct fw3_address * fw3_first_family_addr(struct list_head *addrs, enum fw3_family family);
+
+bool fw3_check_family_addr(struct list_head *addrs, enum fw3_family family);
+
 #endif
diff --git a/zones.c b/zones.c
index 01fb706..4e13c1b 100644
--- a/zones.c
+++ b/zones.c
@@ -37,8 +37,8 @@ static const struct fw3_chain_spec zone_chains[] = {
 	C(ANY, FILTER, REJECT,        "zone_%s_dest_REJECT"),
 	C(ANY, FILTER, DROP,          "zone_%s_dest_DROP"),
 
-	C(V4,  NAT,    SNAT,          "zone_%s_postrouting"),
-	C(V4,  NAT,    DNAT,          "zone_%s_prerouting"),
+	C(ANY, NAT,    SNAT,          "zone_%s_postrouting"),
+	C(ANY, NAT,    DNAT,          "zone_%s_prerouting"),
 
 	C(ANY, RAW,    HELPER,        "zone_%s_helper"),
 	C(ANY, RAW,    NOTRACK,       "zone_%s_notrack"),
@@ -47,8 +47,8 @@ static const struct fw3_chain_spec zone_chains[] = {
 	C(ANY, FILTER, CUSTOM_CHAINS, "output_%s_rule"),
 	C(ANY, FILTER, CUSTOM_CHAINS, "forwarding_%s_rule"),
 
-	C(V4,  NAT,    CUSTOM_CHAINS, "prerouting_%s_rule"),
-	C(V4,  NAT,    CUSTOM_CHAINS, "postrouting_%s_rule"),
+	C(ANY, NAT,    CUSTOM_CHAINS, "prerouting_%s_rule"),
+	C(ANY, NAT,    CUSTOM_CHAINS, "postrouting_%s_rule"),
 
 	{ }
 };
@@ -310,6 +310,9 @@ fw3_load_zones(struct fw3_state *state, struct uci_package *p)
 		{
 			fw3_setbit(zone->flags[0], FW3_FLAG_SNAT);
 			fw3_setbit(zone->flags[0], FW3_FLAG_DNAT);
+
+			fw3_setbit(zone->flags[1], FW3_FLAG_SNAT);
+			fw3_setbit(zone->flags[1], FW3_FLAG_DNAT);
 		}
 
 		resolve_cthelpers(state, e, zone);
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
