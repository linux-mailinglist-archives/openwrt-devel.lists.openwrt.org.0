Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4EB19DCC
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 May 2019 15:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9KCTdHEeXGx/jpipsLgrv8/Jx4Z8JshbnePyRRMQT8=; b=gNSG71R2xXBGke
	cSyr0Ata0fWUk2shbhMw51pobKRHKCgr/QP6sbhVFrp84RJ2kaAeXTEQU62eoe9aTrbZ1WpXrzOfk
	kno7CeXDRVx5u9YpkV4nx/fDIs3sG4KsBNLmIuKvGmff4T4dBGUCXk55uiF69GfTVAINm7nf1/OVY
	+u2VJNOwqZvDndlI91ZUZ8m5uTHRSMMQIWcRrxynShzdj0m+fmtPkRUio/urVIzjogENcrXP1jhyp
	Ng8lUnsnHB3+lYfB/62nSHpkdyWm8ji+gaAucH8I9afDstMGrapqQRedCCEtSt9QLhAE6aQSgDrEt
	p0zmU4x9R5qrin+fAzXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5EU-0001qU-4P; Fri, 10 May 2019 13:06:38 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5Dy-0001au-7B
 for openwrt-devel@lists.openwrt.org; Fri, 10 May 2019 13:06:29 +0000
Received: from dawn.localdomain (edu242240.nat.uni-leipzig.de [139.18.242.240])
 (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id F17F5240018;
 Fri, 10 May 2019 13:05:56 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 May 2019 15:05:38 +0200
Message-Id: <20190510130538.31892-2-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190510130538.31892-1-mail@aparcar.org>
References: <20190510130538.31892-1-mail@aparcar.org>
MIME-Version: 1.0
X-Spam-Note: CRM114 run bypassed due to message size (329097 bytes)
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
Subject: [OpenWrt-Devel] [PATCH 2/2] treewide: apply official kernel
 clang-format style
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

Currently some files use a mixture of spaces and tabs within a single
file, instead of fixing style manually, a tool could do the job.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 defaults.c   | 268 +++++++++----------
 defaults.h   |   8 +-
 forwards.c   |  86 +++---
 forwards.h   |   3 +-
 helpers.c    | 131 ++++------
 helpers.h    |  21 +-
 icmp_codes.h | 131 +++++-----
 includes.c   |  75 +++---
 includes.h   |   5 +-
 ipsets.c     | 295 ++++++++++-----------
 ipsets.h     |  30 +--
 iptables.c   | 721 ++++++++++++++++++++++-----------------------------
 iptables.h   |  58 +++--
 main.c       | 270 +++++++------------
 options.c    | 700 ++++++++++++++++++++-----------------------------
 options.h    | 208 +++++++--------
 redirects.c  | 464 ++++++++++++++++-----------------
 redirects.h  |   2 +-
 rules.c      | 422 ++++++++++++++----------------
 rules.h      |   3 +-
 snats.c      | 284 ++++++++++----------
 snats.h      |   3 +-
 ubus.c       | 137 +++++-----
 ubus.h       |   3 +-
 utils.c      | 492 ++++++++++++++++-------------------
 utils.h      |  66 ++---
 xtables-10.h | 121 ++++-----
 xtables-5.h  | 122 ++++-----
 zones.c      | 633 ++++++++++++++++++++++----------------------
 zones.h      |  20 +-
 30 files changed, 2616 insertions(+), 3166 deletions(-)

diff --git a/defaults.c b/defaults.c
index 91bd617..24de98a 100644
--- a/defaults.c
+++ b/defaults.c
@@ -18,74 +18,71 @@
 
 #include "defaults.h"
 
-
-#define C(f, tbl, def, fmt) \
-	{ FW3_FAMILY_##f, FW3_TABLE_##tbl, FW3_FLAG_##def, fmt }
+#define C(f, tbl, def, fmt)                                                    \
+	{                                                                      \
+		FW3_FAMILY_##f, FW3_TABLE_##tbl, FW3_FLAG_##def, fmt           \
+	}
 
 static const struct fw3_chain_spec default_chains[] = {
-	C(ANY, FILTER, UNSPEC,        "reject"),
+	C(ANY, FILTER, UNSPEC, "reject"),
 	C(ANY, FILTER, CUSTOM_CHAINS, "input_rule"),
 	C(ANY, FILTER, CUSTOM_CHAINS, "output_rule"),
 	C(ANY, FILTER, CUSTOM_CHAINS, "forwarding_rule"),
-	C(ANY, FILTER, SYN_FLOOD,     "syn_flood"),
+	C(ANY, FILTER, SYN_FLOOD, "syn_flood"),
 
-	C(V4,  NAT,    CUSTOM_CHAINS, "prerouting_rule"),
-	C(V4,  NAT,    CUSTOM_CHAINS, "postrouting_rule"),
+	C(V4, NAT, CUSTOM_CHAINS, "prerouting_rule"),
+	C(V4, NAT, CUSTOM_CHAINS, "postrouting_rule"),
 
-	{ }
+	{}
 };
 
 const struct fw3_option fw3_flag_opts[] = {
-	FW3_OPT("input",               target,   defaults, policy_input),
-	FW3_OPT("forward",             target,   defaults, policy_forward),
-	FW3_OPT("output",              target,   defaults, policy_output),
+	FW3_OPT("input", target, defaults, policy_input),
+	FW3_OPT("forward", target, defaults, policy_forward),
+	FW3_OPT("output", target, defaults, policy_output),
 
-	FW3_OPT("drop_invalid",        bool,     defaults, drop_invalid),
-	FW3_OPT("tcp_reject_code",     reject_code, defaults, tcp_reject_code),
-	FW3_OPT("any_reject_code",     reject_code, defaults, any_reject_code),
+	FW3_OPT("drop_invalid", bool, defaults, drop_invalid),
+	FW3_OPT("tcp_reject_code", reject_code, defaults, tcp_reject_code),
+	FW3_OPT("any_reject_code", reject_code, defaults, any_reject_code),
 
-	FW3_OPT("syn_flood",           bool,     defaults, syn_flood),
-	FW3_OPT("synflood_protect",    bool,     defaults, syn_flood),
-	FW3_OPT("synflood_rate",       limit,    defaults, syn_flood_rate),
-	FW3_OPT("synflood_burst",      int,      defaults, syn_flood_rate.burst),
+	FW3_OPT("syn_flood", bool, defaults, syn_flood),
+	FW3_OPT("synflood_protect", bool, defaults, syn_flood),
+	FW3_OPT("synflood_rate", limit, defaults, syn_flood_rate),
+	FW3_OPT("synflood_burst", int, defaults, syn_flood_rate.burst),
 
-	FW3_OPT("tcp_syncookies",      bool,     defaults, tcp_syncookies),
-	FW3_OPT("tcp_ecn",             int,      defaults, tcp_ecn),
-	FW3_OPT("tcp_window_scaling",  bool,     defaults, tcp_window_scaling),
+	FW3_OPT("tcp_syncookies", bool, defaults, tcp_syncookies),
+	FW3_OPT("tcp_ecn", int, defaults, tcp_ecn),
+	FW3_OPT("tcp_window_scaling", bool, defaults, tcp_window_scaling),
 
-	FW3_OPT("accept_redirects",    bool,     defaults, accept_redirects),
-	FW3_OPT("accept_source_route", bool,     defaults, accept_source_route),
+	FW3_OPT("accept_redirects", bool, defaults, accept_redirects),
+	FW3_OPT("accept_source_route", bool, defaults, accept_source_route),
 
-	FW3_OPT("auto_helper",         bool,     defaults, auto_helper),
-	FW3_OPT("custom_chains",       bool,     defaults, custom_chains),
-	FW3_OPT("disable_ipv6",        bool,     defaults, disable_ipv6),
-	FW3_OPT("flow_offloading",     bool,     defaults, flow_offloading),
-	FW3_OPT("flow_offloading_hw",  bool,     defaults, flow_offloading_hw),
+	FW3_OPT("auto_helper", bool, defaults, auto_helper),
+	FW3_OPT("custom_chains", bool, defaults, custom_chains),
+	FW3_OPT("disable_ipv6", bool, defaults, disable_ipv6),
+	FW3_OPT("flow_offloading", bool, defaults, flow_offloading),
+	FW3_OPT("flow_offloading_hw", bool, defaults, flow_offloading_hw),
 
-	FW3_OPT("__flags_v4",          int,      defaults, flags[0]),
-	FW3_OPT("__flags_v6",          int,      defaults, flags[1]),
+	FW3_OPT("__flags_v4", int, defaults, flags[0]),
+	FW3_OPT("__flags_v6", int, defaults, flags[1]),
 
-	{ }
+	{}
 };
 
-
-static void
-check_policy(struct uci_element *e, enum fw3_flag *pol, const char *name)
+static void check_policy(struct uci_element *e, enum fw3_flag *pol,
+			 const char *name)
 {
-	if (*pol == FW3_FLAG_UNSPEC)
-	{
-		warn_elem(e, "has no %s policy specified, defaulting to DROP", name);
+	if (*pol == FW3_FLAG_UNSPEC) {
+		warn_elem(e, "has no %s policy specified, defaulting to DROP",
+			  name);
 		*pol = FW3_FLAG_DROP;
-	}
-	else if (*pol > FW3_FLAG_DROP)
-	{
+	} else if (*pol > FW3_FLAG_DROP) {
 		warn_elem(e, "has invalid %s policy, defaulting to DROP", name);
 		*pol = FW3_FLAG_DROP;
 	}
 }
 
-static void
-check_kmod(struct uci_element *e, bool *module, const char *name)
+static void check_kmod(struct uci_element *e, bool *module, const char *name)
 {
 	FILE *f;
 	char buf[128];
@@ -97,27 +94,29 @@ check_kmod(struct uci_element *e, bool *module, const char *name)
 
 	f = fopen(buf, "r");
 
-	if (f)
-	{
+	if (f) {
 		fclose(f);
 		return;
 	}
 
-	warn_elem(e, "requires not available kernel module %s, disabling", name);
+	warn_elem(e, "requires not available kernel module %s, disabling",
+		  name);
 	*module = false;
 }
 
-static void
-check_any_reject_code(struct uci_element *e, enum fw3_reject_code *any_reject_code)
+static void check_any_reject_code(struct uci_element *e,
+				  enum fw3_reject_code *any_reject_code)
 {
 	if (*any_reject_code == FW3_REJECT_CODE_TCP_RESET) {
-		warn_elem(e, "tcp-reset not valid for any_reject_code, defaulting to port-unreach");
+		warn_elem(
+			e,
+			"tcp-reset not valid for any_reject_code, defaulting to port-unreach");
 		*any_reject_code = FW3_REJECT_CODE_PORT_UNREACH;
 	}
 }
 
-static const char*
-get_reject_code(enum fw3_family family, enum fw3_reject_code reject_code)
+static const char *get_reject_code(enum fw3_family family,
+				   enum fw3_reject_code reject_code)
 {
 	switch (reject_code) {
 	case FW3_REJECT_CODE_TCP_RESET:
@@ -125,14 +124,14 @@ get_reject_code(enum fw3_family family, enum fw3_reject_code reject_code)
 	case FW3_REJECT_CODE_PORT_UNREACH:
 		return "port-unreach";
 	case FW3_REJECT_CODE_ADM_PROHIBITED:
-		return family == FW3_FAMILY_V6 ? "adm-prohibited": "admin-prohib";
+		return family == FW3_FAMILY_V6 ? "adm-prohibited" :
+						 "admin-prohib";
 	default:
 		return "unknown";
 	}
 }
 
-void
-fw3_load_defaults(struct fw3_state *state, struct uci_package *p)
+void fw3_load_defaults(struct fw3_state *state, struct uci_package *p)
 {
 	struct uci_section *s;
 	struct uci_element *e;
@@ -140,14 +139,14 @@ fw3_load_defaults(struct fw3_state *state, struct uci_package *p)
 
 	bool seen = false;
 
-	defs->tcp_reject_code      = FW3_REJECT_CODE_TCP_RESET;
-	defs->any_reject_code      = FW3_REJECT_CODE_PORT_UNREACH;
-	defs->syn_flood_rate.rate  = 25;
+	defs->tcp_reject_code = FW3_REJECT_CODE_TCP_RESET;
+	defs->any_reject_code = FW3_REJECT_CODE_PORT_UNREACH;
+	defs->syn_flood_rate.rate = 25;
 	defs->syn_flood_rate.burst = 50;
-	defs->tcp_syncookies       = true;
-	defs->tcp_window_scaling   = true;
-	defs->custom_chains        = true;
-	defs->auto_helper          = true;
+	defs->tcp_syncookies = true;
+	defs->tcp_window_scaling = true;
+	defs->custom_chains = true;
+	defs->auto_helper = true;
 
 	uci_foreach_element(&p->sections, e)
 	{
@@ -156,13 +155,12 @@ fw3_load_defaults(struct fw3_state *state, struct uci_package *p)
 		if (strcmp(s->type, "defaults"))
 			continue;
 
-		if (seen)
-		{
+		if (seen) {
 			warn_elem(e, "ignoring duplicate section");
 			continue;
 		}
 
-		if(!fw3_parse_options(&state->defaults, fw3_flag_opts, s))
+		if (!fw3_parse_options(&state->defaults, fw3_flag_opts, s))
 			warn_elem(e, "has invalid options");
 
 		check_policy(e, &defs->policy_input, "input");
@@ -175,24 +173,23 @@ fw3_load_defaults(struct fw3_state *state, struct uci_package *p)
 	}
 }
 
-void
-fw3_print_default_chains(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                         bool reload)
+void fw3_print_default_chains(struct fw3_ipt_handle *handle,
+			      struct fw3_state *state, bool reload)
 {
 	struct fw3_defaults *defs = &state->defaults;
 	const struct fw3_chain_spec *c;
 
-#define policy(t) \
-	((t == FW3_FLAG_REJECT) ? FW3_FLAG_DROP : t)
+#define policy(t) ((t == FW3_FLAG_REJECT) ? FW3_FLAG_DROP : t)
 
 	if (handle->family == FW3_FAMILY_V6 && defs->disable_ipv6)
 		return;
 
-	if (handle->table == FW3_TABLE_FILTER)
-	{
-		fw3_ipt_set_policy(handle, "INPUT",   policy(defs->policy_input));
-		fw3_ipt_set_policy(handle, "OUTPUT",  policy(defs->policy_output));
-		fw3_ipt_set_policy(handle, "FORWARD", policy(defs->policy_forward));
+	if (handle->table == FW3_TABLE_FILTER) {
+		fw3_ipt_set_policy(handle, "INPUT", policy(defs->policy_input));
+		fw3_ipt_set_policy(handle, "OUTPUT",
+				   policy(defs->policy_output));
+		fw3_ipt_set_policy(handle, "FORWARD",
+				   policy(defs->policy_forward));
 	}
 
 	if (defs->custom_chains)
@@ -201,8 +198,7 @@ fw3_print_default_chains(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	if (defs->syn_flood)
 		set(defs->flags, handle->family, FW3_FLAG_SYN_FLOOD);
 
-	for (c = default_chains; c->format; c++)
-	{
+	for (c = default_chains; c->format; c++) {
 		/* don't touch user chains on selective stop */
 		if (reload && c->flag == FW3_FLAG_CUSTOM_CHAINS)
 			continue;
@@ -214,7 +210,8 @@ fw3_print_default_chains(struct fw3_ipt_handle *handle, struct fw3_state *state,
 			continue;
 
 		if (c->flag &&
-		    !fw3_hasbit(defs->flags[handle->family == FW3_FAMILY_V6], c->flag))
+		    !fw3_hasbit(defs->flags[handle->family == FW3_FAMILY_V6],
+				c->flag))
 			continue;
 
 		fw3_ipt_create_chain(handle, c->format);
@@ -223,9 +220,8 @@ fw3_print_default_chains(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	set(defs->flags, handle->family, handle->table);
 }
 
-void
-fw3_print_default_head_rules(struct fw3_ipt_handle *handle,
-                             struct fw3_state *state, bool reload)
+void fw3_print_default_head_rules(struct fw3_ipt_handle *handle,
+				  struct fw3_state *state, bool reload)
 {
 	int i;
 	struct fw3_defaults *defs = &state->defaults;
@@ -234,13 +230,10 @@ fw3_print_default_head_rules(struct fw3_ipt_handle *handle,
 	struct fw3_ipt_rule *r;
 
 	const char *chains[] = {
-		"INPUT", "input",
-		"OUTPUT", "output",
-		"FORWARD", "forwarding",
+		"INPUT", "input", "OUTPUT", "output", "FORWARD", "forwarding",
 	};
 
-	switch (handle->table)
-	{
+	switch (handle->table) {
 	case FW3_TABLE_FILTER:
 
 		sprintf(lodev.name, "lo");
@@ -253,47 +246,49 @@ fw3_print_default_head_rules(struct fw3_ipt_handle *handle,
 		fw3_ipt_rule_target(r, "ACCEPT");
 		fw3_ipt_rule_append(r, "OUTPUT");
 
-		if (defs->custom_chains)
-		{
-			for (i = 0; i < ARRAY_SIZE(chains); i += 2)
-			{
+		if (defs->custom_chains) {
+			for (i = 0; i < ARRAY_SIZE(chains); i += 2) {
 				r = fw3_ipt_rule_new(handle);
-				fw3_ipt_rule_comment(r, "Custom %s rule chain", chains[i+1]);
-				fw3_ipt_rule_target(r, "%s_rule", chains[i+1]);
+				fw3_ipt_rule_comment(r, "Custom %s rule chain",
+						     chains[i + 1]);
+				fw3_ipt_rule_target(r, "%s_rule",
+						    chains[i + 1]);
 				fw3_ipt_rule_append(r, chains[i]);
 			}
 		}
 
-		if (defs->flow_offloading)
-		{
+		if (defs->flow_offloading) {
 			r = fw3_ipt_rule_new(handle);
 			fw3_ipt_rule_comment(r, "Traffic offloading");
-			fw3_ipt_rule_extra(r, "-m conntrack --ctstate RELATED,ESTABLISHED");
+			fw3_ipt_rule_extra(
+				r,
+				"-m conntrack --ctstate RELATED,ESTABLISHED");
 			fw3_ipt_rule_target(r, "FLOWOFFLOAD");
 			if (defs->flow_offloading_hw)
 				fw3_ipt_rule_addarg(r, false, "--hw", NULL);
 			fw3_ipt_rule_append(r, "FORWARD");
 		}
 
-		for (i = 0; i < ARRAY_SIZE(chains); i += 2)
-		{
+		for (i = 0; i < ARRAY_SIZE(chains); i += 2) {
 			r = fw3_ipt_rule_new(handle);
-			fw3_ipt_rule_extra(r, "-m conntrack --ctstate RELATED,ESTABLISHED");
+			fw3_ipt_rule_extra(
+				r,
+				"-m conntrack --ctstate RELATED,ESTABLISHED");
 			fw3_ipt_rule_target(r, "ACCEPT");
 			fw3_ipt_rule_append(r, chains[i]);
 
-			if (defs->drop_invalid)
-			{
+			if (defs->drop_invalid) {
 				r = fw3_ipt_rule_new(handle);
-				fw3_ipt_rule_extra(r, "-m conntrack --ctstate INVALID");
+				fw3_ipt_rule_extra(
+					r, "-m conntrack --ctstate INVALID");
 				fw3_ipt_rule_target(r, "DROP");
 				fw3_ipt_rule_append(r, chains[i]);
 			}
 		}
 
-		if (defs->syn_flood)
-		{
-			r = fw3_ipt_rule_create(handle, &tcp, NULL, NULL, NULL, NULL);
+		if (defs->syn_flood) {
+			r = fw3_ipt_rule_create(handle, &tcp, NULL, NULL, NULL,
+						NULL);
 			fw3_ipt_rule_extra(r, "--syn");
 			fw3_ipt_rule_limit(r, &defs->syn_flood_rate);
 			fw3_ipt_rule_target(r, "RETURN");
@@ -303,7 +298,8 @@ fw3_print_default_head_rules(struct fw3_ipt_handle *handle,
 			fw3_ipt_rule_target(r, "DROP");
 			fw3_ipt_rule_append(r, "syn_flood");
 
-			r = fw3_ipt_rule_create(handle, &tcp, NULL, NULL, NULL, NULL);
+			r = fw3_ipt_rule_create(handle, &tcp, NULL, NULL, NULL,
+						NULL);
 			fw3_ipt_rule_extra(r, "--syn");
 			fw3_ipt_rule_target(r, "syn_flood");
 			fw3_ipt_rule_append(r, "INPUT");
@@ -311,26 +307,30 @@ fw3_print_default_head_rules(struct fw3_ipt_handle *handle,
 
 		r = fw3_ipt_rule_create(handle, &tcp, NULL, NULL, NULL, NULL);
 		fw3_ipt_rule_target(r, "REJECT");
-		fw3_ipt_rule_addarg(r, false, "--reject-with", get_reject_code(handle->family, defs->tcp_reject_code));
+		fw3_ipt_rule_addarg(r, false, "--reject-with",
+				    get_reject_code(handle->family,
+						    defs->tcp_reject_code));
 		fw3_ipt_rule_append(r, "reject");
 
 		r = fw3_ipt_rule_new(handle);
 		fw3_ipt_rule_target(r, "REJECT");
-		fw3_ipt_rule_addarg(r, false, "--reject-with", get_reject_code(handle->family, defs->any_reject_code));
+		fw3_ipt_rule_addarg(r, false, "--reject-with",
+				    get_reject_code(handle->family,
+						    defs->any_reject_code));
 		fw3_ipt_rule_append(r, "reject");
 
 		break;
 
 	case FW3_TABLE_NAT:
-		if (defs->custom_chains)
-		{
+		if (defs->custom_chains) {
 			r = fw3_ipt_rule_new(handle);
 			fw3_ipt_rule_comment(r, "Custom prerouting rule chain");
 			fw3_ipt_rule_target(r, "prerouting_rule");
 			fw3_ipt_rule_append(r, "PREROUTING");
 
 			r = fw3_ipt_rule_new(handle);
-			fw3_ipt_rule_comment(r, "Custom postrouting rule chain");
+			fw3_ipt_rule_comment(r,
+					     "Custom postrouting rule chain");
 			fw3_ipt_rule_target(r, "postrouting_rule");
 			fw3_ipt_rule_append(r, "POSTROUTING");
 		}
@@ -341,9 +341,8 @@ fw3_print_default_head_rules(struct fw3_ipt_handle *handle,
 	}
 }
 
-void
-fw3_print_default_tail_rules(struct fw3_ipt_handle *handle,
-                             struct fw3_state *state, bool reload)
+void fw3_print_default_tail_rules(struct fw3_ipt_handle *handle,
+				  struct fw3_state *state, bool reload)
 {
 	struct fw3_defaults *defs = &state->defaults;
 	struct fw3_ipt_rule *r;
@@ -351,8 +350,7 @@ fw3_print_default_tail_rules(struct fw3_ipt_handle *handle,
 	if (handle->table != FW3_TABLE_FILTER)
 		return;
 
-	if (defs->policy_input == FW3_FLAG_REJECT)
-	{
+	if (defs->policy_input == FW3_FLAG_REJECT) {
 		r = fw3_ipt_rule_new(handle);
 
 		if (!r)
@@ -362,8 +360,7 @@ fw3_print_default_tail_rules(struct fw3_ipt_handle *handle,
 		fw3_ipt_rule_append(r, "INPUT");
 	}
 
-	if (defs->policy_output == FW3_FLAG_REJECT)
-	{
+	if (defs->policy_output == FW3_FLAG_REJECT) {
 		r = fw3_ipt_rule_new(handle);
 
 		if (!r)
@@ -373,8 +370,7 @@ fw3_print_default_tail_rules(struct fw3_ipt_handle *handle,
 		fw3_ipt_rule_append(r, "OUTPUT");
 	}
 
-	if (defs->policy_forward == FW3_FLAG_REJECT)
-	{
+	if (defs->policy_forward == FW3_FLAG_REJECT) {
 		r = fw3_ipt_rule_new(handle);
 
 		if (!r)
@@ -385,8 +381,7 @@ fw3_print_default_tail_rules(struct fw3_ipt_handle *handle,
 	}
 }
 
-static void
-set_default(const char *name, int set)
+static void set_default(const char *name, int set)
 {
 	FILE *f;
 	char path[sizeof("/proc/sys/net/ipv4/tcp_window_scaling\0")];
@@ -395,8 +390,7 @@ set_default(const char *name, int set)
 
 	info(" * Set tcp_%s to %s", name, set ? "on" : "off", name);
 
-	if (!(f = fopen(path, "w")))
-	{
+	if (!(f = fopen(path, "w"))) {
 		info("   ! Unable to write value: %s", strerror(errno));
 		return;
 	}
@@ -405,17 +399,15 @@ set_default(const char *name, int set)
 	fclose(f);
 }
 
-void
-fw3_set_defaults(struct fw3_state *state)
+void fw3_set_defaults(struct fw3_state *state)
 {
-	set_default("ecn",            state->defaults.tcp_ecn);
-	set_default("syncookies",     state->defaults.tcp_syncookies);
+	set_default("ecn", state->defaults.tcp_ecn);
+	set_default("syncookies", state->defaults.tcp_syncookies);
 	set_default("window_scaling", state->defaults.tcp_window_scaling);
 }
 
-void
-fw3_flush_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                bool reload)
+void fw3_flush_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
+		     bool reload)
 {
 	enum fw3_flag policy = reload ? FW3_FLAG_DROP : FW3_FLAG_ACCEPT;
 	struct fw3_defaults *defs = &state->defaults;
@@ -424,10 +416,9 @@ fw3_flush_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	if (!has(defs->flags, handle->family, handle->table))
 		return;
 
-	if (handle->table == FW3_TABLE_FILTER)
-	{
-		fw3_ipt_set_policy(handle, "INPUT",   policy);
-		fw3_ipt_set_policy(handle, "OUTPUT",  policy);
+	if (handle->table == FW3_TABLE_FILTER) {
+		fw3_ipt_set_policy(handle, "INPUT", policy);
+		fw3_ipt_set_policy(handle, "OUTPUT", policy);
 		fw3_ipt_set_policy(handle, "FORWARD", policy);
 	}
 
@@ -437,8 +428,7 @@ fw3_flush_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	fw3_ipt_delete_id_rules(handle, "PREROUTING");
 	fw3_ipt_delete_id_rules(handle, "POSTROUTING");
 
-	for (c = default_chains; c->format; c++)
-	{
+	for (c = default_chains; c->format; c++) {
 		/* don't touch user chains on selective stop */
 		if (reload && c->flag == FW3_FLAG_CUSTOM_CHAINS)
 			continue;
@@ -465,13 +455,11 @@ fw3_flush_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	del(defs->flags, handle->family, handle->table);
 }
 
-void
-fw3_flush_all(struct fw3_ipt_handle *handle)
+void fw3_flush_all(struct fw3_ipt_handle *handle)
 {
-	if (handle->table == FW3_TABLE_FILTER)
-	{
-		fw3_ipt_set_policy(handle, "INPUT",   FW3_FLAG_ACCEPT);
-		fw3_ipt_set_policy(handle, "OUTPUT",  FW3_FLAG_ACCEPT);
+	if (handle->table == FW3_TABLE_FILTER) {
+		fw3_ipt_set_policy(handle, "INPUT", FW3_FLAG_ACCEPT);
+		fw3_ipt_set_policy(handle, "OUTPUT", FW3_FLAG_ACCEPT);
 		fw3_ipt_set_policy(handle, "FORWARD", FW3_FLAG_ACCEPT);
 	}
 
diff --git a/defaults.h b/defaults.h
index 3611e46..7356485 100644
--- a/defaults.h
+++ b/defaults.h
@@ -27,18 +27,18 @@ extern const struct fw3_option fw3_flag_opts[];
 void fw3_load_defaults(struct fw3_state *state, struct uci_package *p);
 
 void fw3_print_default_chains(struct fw3_ipt_handle *handle,
-                              struct fw3_state *state, bool reload);
+			      struct fw3_state *state, bool reload);
 
 void fw3_print_default_head_rules(struct fw3_ipt_handle *handle,
-                                  struct fw3_state *state, bool reload);
+				  struct fw3_state *state, bool reload);
 
 void fw3_print_default_tail_rules(struct fw3_ipt_handle *handle,
-                                  struct fw3_state *state, bool reload);
+				  struct fw3_state *state, bool reload);
 
 void fw3_set_defaults(struct fw3_state *state);
 
 void fw3_flush_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                     bool reload);
+		     bool reload);
 
 void fw3_flush_all(struct fw3_ipt_handle *handle);
 
diff --git a/forwards.c b/forwards.c
index b554b60..6b9cb96 100644
--- a/forwards.c
+++ b/forwards.c
@@ -18,48 +18,46 @@
 
 #include "forwards.h"
 
-
 const struct fw3_option fw3_forward_opts[] = {
-	FW3_OPT("enabled",             bool,     forward,     enabled),
+	FW3_OPT("enabled", bool, forward, enabled),
 
-	FW3_OPT("name",                string,   forward,     name),
-	FW3_OPT("family",              family,   forward,     family),
+	FW3_OPT("name", string, forward, name),
+	FW3_OPT("family", family, forward, family),
 
-	FW3_OPT("src",                 device,   forward,     src),
-	FW3_OPT("dest",                device,   forward,     dest),
+	FW3_OPT("src", device, forward, src),
+	FW3_OPT("dest", device, forward, dest),
 
-	{ }
+	{}
 };
 
-static bool
-check_forward(struct fw3_state *state, struct fw3_forward *forward, struct uci_element *e)
+static bool check_forward(struct fw3_state *state, struct fw3_forward *forward,
+			  struct uci_element *e)
 {
 	if (!forward->enabled)
 		return false;
 
-	if (forward->src.invert || forward->dest.invert)
-	{
-		warn_section("forward", forward, e, "must not have inverted 'src' or 'dest' options");
+	if (forward->src.invert || forward->dest.invert) {
+		warn_section("forward", forward, e,
+			     "must not have inverted 'src' or 'dest' options");
 		return false;
-	}
-	else if (forward->src.set && !forward->src.any &&
-		 !(forward->_src = fw3_lookup_zone(state, forward->src.name)))
-	{
-		warn_section("forward", forward, e, "refers to not existing zone '%s'",
-				forward->src.name);
+	} else if (forward->src.set && !forward->src.any &&
+		   !(forward->_src =
+			     fw3_lookup_zone(state, forward->src.name))) {
+		warn_section("forward", forward, e,
+			     "refers to not existing zone '%s'",
+			     forward->src.name);
 		return false;
-	}
-	else if (forward->dest.set && !forward->dest.any &&
-		 !(forward->_dest = fw3_lookup_zone(state, forward->dest.name)))
-	{
-		warn_section("forward", forward, e, "refers to not existing zone '%s'",
-				forward->dest.name);
+	} else if (forward->dest.set && !forward->dest.any &&
+		   !(forward->_dest =
+			     fw3_lookup_zone(state, forward->dest.name))) {
+		warn_section("forward", forward, e,
+			     "refers to not existing zone '%s'",
+			     forward->dest.name);
 		return false;
 	}
 
 	/* NB: forward family... */
-	if (forward->_dest)
-	{
+	if (forward->_dest) {
 		fw3_setbit(forward->_dest->flags[0], FW3_FLAG_ACCEPT);
 		fw3_setbit(forward->_dest->flags[1], FW3_FLAG_ACCEPT);
 	}
@@ -67,8 +65,7 @@ check_forward(struct fw3_state *state, struct fw3_forward *forward, struct uci_e
 	return true;
 }
 
-static struct fw3_forward *
-fw3_alloc_forward(struct fw3_state *state)
+static struct fw3_forward *fw3_alloc_forward(struct fw3_state *state)
 {
 	struct fw3_forward *forward;
 
@@ -83,9 +80,8 @@ fw3_alloc_forward(struct fw3_state *state)
 	return forward;
 }
 
-void
-fw3_load_forwards(struct fw3_state *state, struct uci_package *p,
-		struct blob_attr *a)
+void fw3_load_forwards(struct fw3_state *state, struct uci_package *p,
+		       struct blob_attr *a)
 {
 	struct uci_section *s;
 	struct uci_element *e;
@@ -110,9 +106,10 @@ fw3_load_forwards(struct fw3_state *state, struct uci_package *p,
 		if (!forward)
 			continue;
 
-		if (!fw3_parse_blob_options(forward, fw3_forward_opts, entry, name))
-		{
-			warn_section("forward", forward, NULL, "skipped due to invalid options");
+		if (!fw3_parse_blob_options(forward, fw3_forward_opts, entry,
+					    name)) {
+			warn_section("forward", forward, NULL,
+				     "skipped due to invalid options");
 			fw3_free_forward(forward);
 			continue;
 		}
@@ -140,9 +137,7 @@ fw3_load_forwards(struct fw3_state *state, struct uci_package *p,
 	}
 }
 
-
-static void
-append_chain(struct fw3_ipt_rule *r, struct fw3_forward *forward)
+static void append_chain(struct fw3_ipt_rule *r, struct fw3_forward *forward)
 {
 	if (forward->src.any || !forward->src.set)
 		fw3_ipt_rule_append(r, "FORWARD");
@@ -155,11 +150,12 @@ static void set_target(struct fw3_ipt_rule *r, struct fw3_forward *forward)
 	if (forward->dest.any || !forward->dest.set)
 		fw3_ipt_rule_target(r, "ACCEPT");
 	else
-		fw3_ipt_rule_target(r, "zone_%s_dest_ACCEPT", forward->dest.name);
+		fw3_ipt_rule_target(r, "zone_%s_dest_ACCEPT",
+				    forward->dest.name);
 }
 
-static void
-print_forward(struct fw3_ipt_handle *handle, struct fw3_forward *forward)
+static void print_forward(struct fw3_ipt_handle *handle,
+			  struct fw3_forward *forward)
 {
 	const char *s, *d;
 	struct fw3_ipt_rule *r;
@@ -170,14 +166,13 @@ print_forward(struct fw3_ipt_handle *handle, struct fw3_forward *forward)
 	if (!fw3_is_family(forward, handle->family))
 		return;
 
-	s = forward->_src  ? forward->_src->name  : "*";
+	s = forward->_src ? forward->_src->name : "*";
 	d = forward->_dest ? forward->_dest->name : "*";
 
 	info("   * Forward '%s' -> '%s'", s, d);
 
 	if (!fw3_is_family(forward->_src, handle->family) ||
-	    !fw3_is_family(forward->_dest, handle->family))
-	{
+	    !fw3_is_family(forward->_dest, handle->family)) {
 		info("     ! Skipping due to different family of zone");
 		return;
 	}
@@ -188,11 +183,10 @@ print_forward(struct fw3_ipt_handle *handle, struct fw3_forward *forward)
 	append_chain(r, forward);
 }
 
-void
-fw3_print_forwards(struct fw3_ipt_handle *handle, struct fw3_state *state)
+void fw3_print_forwards(struct fw3_ipt_handle *handle, struct fw3_state *state)
 {
 	struct fw3_forward *forward;
 
-	list_for_each_entry(forward, &state->forwards, list)
+	list_for_each_entry (forward, &state->forwards, list)
 		print_forward(handle, forward);
 }
diff --git a/forwards.h b/forwards.h
index 06d3e06..18a2df0 100644
--- a/forwards.h
+++ b/forwards.h
@@ -26,7 +26,8 @@
 
 extern const struct fw3_option fw3_forward_opts[];
 
-void fw3_load_forwards(struct fw3_state *state, struct uci_package *p, struct blob_attr *a);
+void fw3_load_forwards(struct fw3_state *state, struct uci_package *p,
+		       struct blob_attr *a);
 void fw3_print_forwards(struct fw3_ipt_handle *handle, struct fw3_state *state);
 
 static inline void fw3_free_forward(struct fw3_forward *forward)
diff --git a/helpers.c b/helpers.c
index 36317d2..73f1a84 100644
--- a/helpers.c
+++ b/helpers.c
@@ -18,22 +18,19 @@
 
 #include "helpers.h"
 
-
 const struct fw3_option fw3_cthelper_opts[] = {
-	FW3_OPT("enabled",     bool,     cthelper, enabled),
-	FW3_OPT("name",        string,   cthelper, name),
-	FW3_OPT("module",      string,   cthelper, module),
-	FW3_OPT("description", string,   cthelper, description),
-	FW3_OPT("family",      family,   cthelper, family),
-	FW3_LIST("proto",      protocol, cthelper, proto),
-	FW3_OPT("port",        port,     cthelper, port),
-
-	{ }
+	FW3_OPT("enabled", bool, cthelper, enabled),
+	FW3_OPT("name", string, cthelper, name),
+	FW3_OPT("module", string, cthelper, module),
+	FW3_OPT("description", string, cthelper, description),
+	FW3_OPT("family", family, cthelper, family),
+	FW3_LIST("proto", protocol, cthelper, proto),
+	FW3_OPT("port", port, cthelper, port),
+
+	{}
 };
 
-
-static bool
-test_module(struct fw3_cthelper *helper)
+static bool test_module(struct fw3_cthelper *helper)
 {
 	struct stat s;
 	char path[sizeof("/sys/module/nf_conntrack_xxxxxxxxxxxxxxxx")];
@@ -46,16 +43,14 @@ test_module(struct fw3_cthelper *helper)
 	return true;
 }
 
-static bool
-check_cthelper_proto(const struct fw3_cthelper *helper)
+static bool check_cthelper_proto(const struct fw3_cthelper *helper)
 {
-	struct fw3_protocol	*proto;
+	struct fw3_protocol *proto;
 
 	if (list_empty(&helper->proto))
 		return false;
 
-	list_for_each_entry(proto, &helper->proto, list)
-	{
+	list_for_each_entry (proto, &helper->proto, list) {
 		if (!proto->protocol || proto->any || proto->invert)
 			return false;
 	}
@@ -63,35 +58,27 @@ check_cthelper_proto(const struct fw3_cthelper *helper)
 	return true;
 }
 
-static bool
-check_cthelper(struct fw3_state *state, struct fw3_cthelper *helper, struct uci_element *e)
+static bool check_cthelper(struct fw3_state *state, struct fw3_cthelper *helper,
+			   struct uci_element *e)
 {
-	if (!helper->name || !*helper->name)
-	{
+	if (!helper->name || !*helper->name) {
 		warn_section("helper", helper, e, "must have a name assigned");
-	}
-	else if (!helper->module || !*helper->module)
-	{
-		warn_section("helper", helper, e, "must have a module assigned");
-	}
-	else if (!check_cthelper_proto(helper))
-	{
+	} else if (!helper->module || !*helper->module) {
+		warn_section("helper", helper, e,
+			     "must have a module assigned");
+	} else if (!check_cthelper_proto(helper)) {
 		warn_section("helper", helper, e, "must specify a protocol");
-	}
-	else if (helper->port.set && helper->port.invert)
-	{
-		warn_section("helper", helper, e, "must not specify negated ports");
-	}
-	else
-	{
+	} else if (helper->port.set && helper->port.invert) {
+		warn_section("helper", helper, e,
+			     "must not specify negated ports");
+	} else {
 		return true;
 	}
 
 	return false;
 }
 
-static struct fw3_cthelper *
-fw3_alloc_cthelper(struct fw3_state *state)
+static struct fw3_cthelper *fw3_alloc_cthelper(struct fw3_state *state)
 {
 	struct fw3_cthelper *helper;
 
@@ -100,7 +87,7 @@ fw3_alloc_cthelper(struct fw3_state *state)
 		return NULL;
 
 	helper->enabled = true;
-	helper->family  = FW3_FAMILY_ANY;
+	helper->family = FW3_FAMILY_ANY;
 	INIT_LIST_HEAD(&helper->proto);
 
 	list_add_tail(&helper->list, &state->cthelpers);
@@ -108,8 +95,7 @@ fw3_alloc_cthelper(struct fw3_state *state)
 	return helper;
 }
 
-static void
-load_cthelpers(struct fw3_state *state, struct uci_package *p)
+static void load_cthelpers(struct fw3_state *state, struct uci_package *p)
 {
 	struct fw3_cthelper *helper;
 	struct uci_section *s;
@@ -135,8 +121,7 @@ load_cthelpers(struct fw3_state *state, struct uci_package *p)
 	}
 }
 
-void
-fw3_load_cthelpers(struct fw3_state *state, struct uci_package *p)
+void fw3_load_cthelpers(struct fw3_state *state, struct uci_package *p)
 {
 	struct uci_package *hp = NULL;
 	FILE *fp;
@@ -156,16 +141,15 @@ fw3_load_cthelpers(struct fw3_state *state, struct uci_package *p)
 	load_cthelpers(state, p);
 }
 
-struct fw3_cthelper *
-fw3_lookup_cthelper(struct fw3_state *state, const char *name)
+struct fw3_cthelper *fw3_lookup_cthelper(struct fw3_state *state,
+					 const char *name)
 {
 	struct fw3_cthelper *h;
 
 	if (list_empty(&state->cthelpers))
 		return NULL;
 
-	list_for_each_entry(h, &state->cthelpers, list)
-	{
+	list_for_each_entry (h, &state->cthelpers, list) {
 		if (strcasecmp(h->name, name))
 			continue;
 
@@ -175,13 +159,12 @@ fw3_lookup_cthelper(struct fw3_state *state, const char *name)
 	return NULL;
 }
 
-bool
-fw3_cthelper_check_proto(const struct fw3_cthelper *h, const struct fw3_protocol *proto)
+bool fw3_cthelper_check_proto(const struct fw3_cthelper *h,
+			      const struct fw3_protocol *proto)
 {
-	struct fw3_protocol	*p;
+	struct fw3_protocol *p;
 
-	list_for_each_entry(p, &h->proto, list)
-	{
+	list_for_each_entry (p, &h->proto, list) {
 		if (p->protocol == proto->protocol)
 			return true;
 	}
@@ -191,8 +174,8 @@ fw3_cthelper_check_proto(const struct fw3_cthelper *h, const struct fw3_protocol
 
 struct fw3_cthelper *
 fw3_lookup_cthelper_by_proto_port(struct fw3_state *state,
-                                  struct fw3_protocol *proto,
-                                  struct fw3_port *port)
+				  struct fw3_protocol *proto,
+				  struct fw3_port *port)
 {
 	struct fw3_cthelper *h;
 
@@ -205,8 +188,7 @@ fw3_lookup_cthelper_by_proto_port(struct fw3_state *state,
 	if (port && port->invert)
 		return NULL;
 
-	list_for_each_entry(h, &state->cthelpers, list)
-	{
+	list_for_each_entry (h, &state->cthelpers, list) {
 		if (!h->enabled)
 			continue;
 
@@ -222,15 +204,15 @@ fw3_lookup_cthelper_by_proto_port(struct fw3_state *state,
 		if (h->port.set && port && port->set &&
 		    h->port.port_min <= port->port_min &&
 		    h->port.port_max >= port->port_max)
-		    return h;
+			return h;
 	}
 
 	return NULL;
 }
 
-static void
-print_helper_rule(struct fw3_ipt_handle *handle, struct fw3_cthelper *helper,
-                  struct fw3_zone *zone, struct fw3_protocol *proto)
+static void print_helper_rule(struct fw3_ipt_handle *handle,
+			      struct fw3_cthelper *helper,
+			      struct fw3_zone *zone, struct fw3_protocol *proto)
 {
 	struct fw3_ipt_rule *r;
 
@@ -247,19 +229,18 @@ print_helper_rule(struct fw3_ipt_handle *handle, struct fw3_cthelper *helper,
 	fw3_ipt_rule_replace(r, "zone_%s_helper", zone->name);
 }
 
-static void
-expand_helper_rule(struct fw3_ipt_handle *handle, struct fw3_cthelper *helper,
-                  struct fw3_zone *zone)
+static void expand_helper_rule(struct fw3_ipt_handle *handle,
+			       struct fw3_cthelper *helper,
+			       struct fw3_zone *zone)
 {
 	struct fw3_protocol *proto;
 
-	list_for_each_entry(proto, &helper->proto, list)
+	list_for_each_entry (proto, &helper->proto, list)
 		print_helper_rule(handle, helper, zone, proto);
 }
 
-void
-fw3_print_cthelpers(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                    struct fw3_zone *zone)
+void fw3_print_cthelpers(struct fw3_ipt_handle *handle, struct fw3_state *state,
+			 struct fw3_zone *zone)
 {
 	struct fw3_cthelper *helper;
 	struct fw3_cthelpermatch *match;
@@ -270,8 +251,7 @@ fw3_print_cthelpers(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	if (!fw3_is_family(zone, handle->family))
 		return;
 
-	if (list_empty(&zone->cthelpers))
-	{
+	if (list_empty(&zone->cthelpers)) {
 		if (zone->masq || !zone->auto_helper)
 			return;
 
@@ -280,8 +260,7 @@ fw3_print_cthelpers(struct fw3_ipt_handle *handle, struct fw3_state *state,
 
 		info("     - Using automatic conntrack helper attachment");
 
-		list_for_each_entry(helper, &state->cthelpers, list)
-		{
+		list_for_each_entry (helper, &state->cthelpers, list) {
 			if (!helper || !helper->enabled)
 				continue;
 
@@ -293,11 +272,8 @@ fw3_print_cthelpers(struct fw3_ipt_handle *handle, struct fw3_state *state,
 
 			expand_helper_rule(handle, helper, zone);
 		}
-	}
-	else
-	{
-		list_for_each_entry(match, &zone->cthelpers, list)
-		{
+	} else {
+		list_for_each_entry (match, &zone->cthelpers, list) {
 			helper = match->ptr;
 
 			if (!helper || !helper->enabled)
@@ -306,8 +282,7 @@ fw3_print_cthelpers(struct fw3_ipt_handle *handle, struct fw3_state *state,
 			if (!fw3_is_family(helper, handle->family))
 				continue;
 
-			if (!test_module(helper))
-			{
+			if (!test_module(helper)) {
 				info("     ! Conntrack module '%s' for helper '%s' is not loaded",
 				     helper->module, helper->name);
 				continue;
diff --git a/helpers.h b/helpers.h
index e2a99cd..4ec7db9 100644
--- a/helpers.h
+++ b/helpers.h
@@ -23,26 +23,23 @@
 #include "utils.h"
 #include "iptables.h"
 
-
 extern const struct fw3_option fw3_cthelper_opts[];
 
-void
-fw3_load_cthelpers(struct fw3_state *state, struct uci_package *p);
+void fw3_load_cthelpers(struct fw3_state *state, struct uci_package *p);
 
-struct fw3_cthelper *
-fw3_lookup_cthelper(struct fw3_state *state, const char *name);
+struct fw3_cthelper *fw3_lookup_cthelper(struct fw3_state *state,
+					 const char *name);
 
 struct fw3_cthelper *
 fw3_lookup_cthelper_by_proto_port(struct fw3_state *state,
-                                  struct fw3_protocol *proto,
-                                  struct fw3_port *port);
+				  struct fw3_protocol *proto,
+				  struct fw3_port *port);
 
-void
-fw3_print_cthelpers(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                    struct fw3_zone *zone);
+void fw3_print_cthelpers(struct fw3_ipt_handle *handle, struct fw3_state *state,
+			 struct fw3_zone *zone);
 
-bool
-fw3_cthelper_check_proto(const struct fw3_cthelper *h, const struct fw3_protocol *proto);
+bool fw3_cthelper_check_proto(const struct fw3_cthelper *h,
+			      const struct fw3_protocol *proto);
 
 static inline void fw3_free_cthelper(struct fw3_cthelper *helper)
 {
diff --git a/icmp_codes.h b/icmp_codes.h
index 063f829..dffd93d 100644
--- a/icmp_codes.h
+++ b/icmp_codes.h
@@ -19,89 +19,88 @@
 #ifndef __FW3_ICMP_CODES_H
 #define __FW3_ICMP_CODES_H
 
-
 struct fw3_icmptype_entry {
-        const char *name;
-        uint8_t type;
-        uint8_t code_min;
-		uint8_t code_max;
+	const char *name;
+	uint8_t type;
+	uint8_t code_min;
+	uint8_t code_max;
 };
 
 /* taken from iptables extensions/libipt_icmp.c */
 static const struct fw3_icmptype_entry fw3_icmptype_list_v4[] = {
-        { "any", 0xFF, 0, 0xFF },
-        { "echo-reply", 0, 0, 0xFF },
-        /* Alias */ { "pong", 0, 0, 0xFF },
-
-        { "destination-unreachable", 3, 0, 0xFF },
-        {   "network-unreachable", 3, 0, 0 },
-        {   "host-unreachable", 3, 1, 1 },
-        {   "protocol-unreachable", 3, 2, 2 },
-        {   "port-unreachable", 3, 3, 3 },
-        {   "fragmentation-needed", 3, 4, 4 },
-        {   "source-route-failed", 3, 5, 5 },
-        {   "network-unknown", 3, 6, 6 },
-        {   "host-unknown", 3, 7, 7 },
-        {   "network-prohibited", 3, 9, 9 },
-        {   "host-prohibited", 3, 10, 10 },
-        {   "TOS-network-unreachable", 3, 11, 11 },
-        {   "TOS-host-unreachable", 3, 12, 12 },
-        {   "communication-prohibited", 3, 13, 13 },
-        {   "host-precedence-violation", 3, 14, 14 },
-        {   "precedence-cutoff", 3, 15, 15 },
-
-        { "source-quench", 4, 0, 0xFF },
-
-        { "redirect", 5, 0, 0xFF },
-        {   "network-redirect", 5, 0, 0 },
-        {   "host-redirect", 5, 1, 1 },
-        {   "TOS-network-redirect", 5, 2, 2 },
-        {   "TOS-host-redirect", 5, 3, 3 },
-
-        { "echo-request", 8, 0, 0xFF },
-        /* Alias */ { "ping", 8, 0, 0xFF },
-
-        { "router-advertisement", 9, 0, 0xFF },
-
-        { "router-solicitation", 10, 0, 0xFF },
-
-        { "time-exceeded", 11, 0, 0xFF },
-        /* Alias */ { "ttl-exceeded", 11, 0, 0xFF },
-        {   "ttl-zero-during-transit", 11, 0, 0 },
-        {   "ttl-zero-during-reassembly", 11, 1, 1 },
-
-        { "parameter-problem", 12, 0, 0xFF },
-        {   "ip-header-bad", 12, 0, 0 },
-        {   "required-option-missing", 12, 1, 1 },
-
-        { "timestamp-request", 13, 0, 0xFF },
-
-        { "timestamp-reply", 14, 0, 0xFF },
-
-        { "address-mask-request", 17, 0, 0xFF },
-
-        { "address-mask-reply", 18, 0, 0xFF }
+	{ "any", 0xFF, 0, 0xFF },
+	{ "echo-reply", 0, 0, 0xFF },
+	/* Alias */ { "pong", 0, 0, 0xFF },
+
+	{ "destination-unreachable", 3, 0, 0xFF },
+	{ "network-unreachable", 3, 0, 0 },
+	{ "host-unreachable", 3, 1, 1 },
+	{ "protocol-unreachable", 3, 2, 2 },
+	{ "port-unreachable", 3, 3, 3 },
+	{ "fragmentation-needed", 3, 4, 4 },
+	{ "source-route-failed", 3, 5, 5 },
+	{ "network-unknown", 3, 6, 6 },
+	{ "host-unknown", 3, 7, 7 },
+	{ "network-prohibited", 3, 9, 9 },
+	{ "host-prohibited", 3, 10, 10 },
+	{ "TOS-network-unreachable", 3, 11, 11 },
+	{ "TOS-host-unreachable", 3, 12, 12 },
+	{ "communication-prohibited", 3, 13, 13 },
+	{ "host-precedence-violation", 3, 14, 14 },
+	{ "precedence-cutoff", 3, 15, 15 },
+
+	{ "source-quench", 4, 0, 0xFF },
+
+	{ "redirect", 5, 0, 0xFF },
+	{ "network-redirect", 5, 0, 0 },
+	{ "host-redirect", 5, 1, 1 },
+	{ "TOS-network-redirect", 5, 2, 2 },
+	{ "TOS-host-redirect", 5, 3, 3 },
+
+	{ "echo-request", 8, 0, 0xFF },
+	/* Alias */ { "ping", 8, 0, 0xFF },
+
+	{ "router-advertisement", 9, 0, 0xFF },
+
+	{ "router-solicitation", 10, 0, 0xFF },
+
+	{ "time-exceeded", 11, 0, 0xFF },
+	/* Alias */ { "ttl-exceeded", 11, 0, 0xFF },
+	{ "ttl-zero-during-transit", 11, 0, 0 },
+	{ "ttl-zero-during-reassembly", 11, 1, 1 },
+
+	{ "parameter-problem", 12, 0, 0xFF },
+	{ "ip-header-bad", 12, 0, 0 },
+	{ "required-option-missing", 12, 1, 1 },
+
+	{ "timestamp-request", 13, 0, 0xFF },
+
+	{ "timestamp-reply", 14, 0, 0xFF },
+
+	{ "address-mask-request", 17, 0, 0xFF },
+
+	{ "address-mask-reply", 18, 0, 0xFF }
 };
 
 /* taken from iptables extensions/libip6t_icmp6.c */
 static const struct fw3_icmptype_entry fw3_icmptype_list_v6[] = {
 	{ "destination-unreachable", 1, 0, 0xFF },
-	{   "no-route", 1, 0, 0 },
-	{   "communication-prohibited", 1, 1, 1 },
-	{   "address-unreachable", 1, 3, 3 },
-	{   "port-unreachable", 1, 4, 4 },
+	{ "no-route", 1, 0, 0 },
+	{ "communication-prohibited", 1, 1, 1 },
+	{ "address-unreachable", 1, 3, 3 },
+	{ "port-unreachable", 1, 4, 4 },
 
 	{ "packet-too-big", 2, 0, 0xFF },
 
 	{ "time-exceeded", 3, 0, 0xFF },
 	/* Alias */ { "ttl-exceeded", 3, 0, 0xFF },
-	{   "ttl-zero-during-transit", 3, 0, 0 },
-	{   "ttl-zero-during-reassembly", 3, 1, 1 },
+	{ "ttl-zero-during-transit", 3, 0, 0 },
+	{ "ttl-zero-during-reassembly", 3, 1, 1 },
 
 	{ "parameter-problem", 4, 0, 0xFF },
-	{   "bad-header", 4, 0, 0 },
-	{   "unknown-header-type", 4, 1, 1 },
-	{   "unknown-option", 4, 2, 2 },
+	{ "bad-header", 4, 0, 0 },
+	{ "unknown-header-type", 4, 1, 1 },
+	{ "unknown-option", 4, 2, 2 },
 
 	{ "echo-request", 128, 0, 0xFF },
 	/* Alias */ { "ping", 128, 0, 0xFF },
diff --git a/includes.c b/includes.c
index 8639210..d2d6f6b 100644
--- a/includes.c
+++ b/includes.c
@@ -18,39 +18,38 @@
 
 #include "includes.h"
 
-
 const struct fw3_option fw3_include_opts[] = {
-	FW3_OPT("enabled",             bool,           include,     enabled),
+	FW3_OPT("enabled", bool, include, enabled),
 
-	FW3_OPT("path",                string,         include,     path),
-	FW3_OPT("type",                include_type,   include,     type),
-	FW3_OPT("family",              family,         include,     family),
-	FW3_OPT("reload",              bool,           include,     reload),
+	FW3_OPT("path", string, include, path),
+	FW3_OPT("type", include_type, include, type),
+	FW3_OPT("family", family, include, family),
+	FW3_OPT("reload", bool, include, reload),
 
-	{ }
+	{}
 };
 
-static bool
-check_include(struct fw3_state *state, struct fw3_include *include, struct uci_element *e)
+static bool check_include(struct fw3_state *state, struct fw3_include *include,
+			  struct uci_element *e)
 {
 	if (!include->enabled)
 		return false;
 
-	if (!include->path)
-	{
+	if (!include->path) {
 		warn_section("include", include, e, "must specify a path");
 		return false;
 	}
 
 	if (include->type == FW3_INC_TYPE_RESTORE && !include->family)
-		warn_section("include", include, e, "does not specify a family, include will get"
-				"loaded with both iptables-restore and ip6tables-restore!");
+		warn_section(
+			"include", include, e,
+			"does not specify a family, include will get"
+			"loaded with both iptables-restore and ip6tables-restore!");
 
 	return true;
 }
 
-static struct fw3_include *
-fw3_alloc_include(struct fw3_state *state)
+static struct fw3_include *fw3_alloc_include(struct fw3_state *state)
 {
 	struct fw3_include *include;
 
@@ -65,9 +64,8 @@ fw3_alloc_include(struct fw3_state *state)
 	return include;
 }
 
-void
-fw3_load_includes(struct fw3_state *state, struct uci_package *p,
-		struct blob_attr *a)
+void fw3_load_includes(struct fw3_state *state, struct uci_package *p,
+		       struct blob_attr *a)
 {
 	struct uci_section *s;
 	struct uci_element *e;
@@ -92,9 +90,10 @@ fw3_load_includes(struct fw3_state *state, struct uci_package *p,
 		if (!include)
 			continue;
 
-		if (!fw3_parse_blob_options(include, fw3_include_opts, entry, name))
-		{
-			warn_section("include", include, NULL, "skipped due to invalid options");
+		if (!fw3_parse_blob_options(include, fw3_include_opts, entry,
+					    name)) {
+			warn_section("include", include, NULL,
+				     "skipped due to invalid options");
 			fw3_free_include(include);
 			continue;
 		}
@@ -124,17 +123,14 @@ fw3_load_includes(struct fw3_state *state, struct uci_package *p,
 	}
 }
 
-
-static void
-print_include(struct fw3_include *include)
+static void print_include(struct fw3_include *include)
 {
 	FILE *f;
 	char line[1024];
 
 	info(" * Loading include '%s'", include->path);
 
-	if (!(f = fopen(include->path, "r")))
-	{
+	if (!(f = fopen(include->path, "r"))) {
 		info("   ! Skipping due to open error: %s", strerror(errno));
 		return;
 	}
@@ -145,8 +141,8 @@ print_include(struct fw3_include *include)
 	fclose(f);
 }
 
-void
-fw3_print_includes(struct fw3_state *state, enum fw3_family family, bool reload)
+void fw3_print_includes(struct fw3_state *state, enum fw3_family family,
+			bool reload)
 {
 	struct fw3_include *include;
 
@@ -156,8 +152,7 @@ fw3_print_includes(struct fw3_state *state, enum fw3_family family, bool reload)
 	if (family == FW3_FAMILY_V6)
 		restore = "ip6tables-restore";
 
-	list_for_each_entry(include, &state->includes, list)
-	{
+	list_for_each_entry (include, &state->includes, list) {
 		if (reload && !include->reload)
 			continue;
 
@@ -167,8 +162,7 @@ fw3_print_includes(struct fw3_state *state, enum fw3_family family, bool reload)
 		if (!fw3_is_family(include, family))
 			continue;
 
-		if (!exec)
-		{
+		if (!exec) {
 			exec = fw3_command_pipe(false, restore, "--noflush");
 
 			if (!exec)
@@ -182,24 +176,21 @@ fw3_print_includes(struct fw3_state *state, enum fw3_family family, bool reload)
 		fw3_command_close();
 }
 
-
-static void
-run_include(struct fw3_include *include)
+static void run_include(struct fw3_include *include)
 {
 	int rv;
 	struct stat s;
 	const char *tmpl =
 		"config() { "
-			"echo \"You cannot use UCI in firewall includes!\" >&2; "
-			"exit 1; "
+		"echo \"You cannot use UCI in firewall includes!\" >&2; "
+		"exit 1; "
 		"}; . %s";
 
 	char buf[PATH_MAX + sizeof(tmpl)];
 
 	info(" * Running script '%s'", include->path);
 
-	if (stat(include->path, &s))
-	{
+	if (stat(include->path, &s)) {
 		info("   ! Skipping due to path error: %s", strerror(errno));
 		return;
 	}
@@ -211,13 +202,11 @@ run_include(struct fw3_include *include)
 		info("   ! Failed with exit code %u", WEXITSTATUS(rv));
 }
 
-void
-fw3_run_includes(struct fw3_state *state, bool reload)
+void fw3_run_includes(struct fw3_state *state, bool reload)
 {
 	struct fw3_include *include;
 
-	list_for_each_entry(include, &state->includes, list)
-	{
+	list_for_each_entry (include, &state->includes, list) {
 		if (reload && !include->reload)
 			continue;
 
diff --git a/includes.h b/includes.h
index 3a0af1b..7a20905 100644
--- a/includes.h
+++ b/includes.h
@@ -24,10 +24,11 @@
 
 extern const struct fw3_option fw3_include_opts[];
 
-void fw3_load_includes(struct fw3_state *state, struct uci_package *p, struct blob_attr *a);
+void fw3_load_includes(struct fw3_state *state, struct uci_package *p,
+		       struct blob_attr *a);
 
 void fw3_print_includes(struct fw3_state *state, enum fw3_family family,
-                        bool reload);
+			bool reload);
 
 void fw3_run_includes(struct fw3_state *state, bool reload);
 
diff --git a/ipsets.c b/ipsets.c
index b73c3d2..bdbc4ef 100644
--- a/ipsets.c
+++ b/ipsets.c
@@ -18,44 +18,46 @@
 
 #include "ipsets.h"
 
-
 const struct fw3_option fw3_ipset_opts[] = {
-	FW3_OPT("enabled",       bool,           ipset,     enabled),
+	FW3_OPT("enabled", bool, ipset, enabled),
 
-	FW3_OPT("name",          string,         ipset,     name),
-	FW3_OPT("family",        family,         ipset,     family),
+	FW3_OPT("name", string, ipset, name),
+	FW3_OPT("family", family, ipset, family),
 
-	FW3_OPT("storage",       ipset_method,   ipset,     method),
-	FW3_LIST("match",        ipset_datatype, ipset,     datatypes),
+	FW3_OPT("storage", ipset_method, ipset, method),
+	FW3_LIST("match", ipset_datatype, ipset, datatypes),
 
-	FW3_OPT("iprange",       address,        ipset,     iprange),
-	FW3_OPT("portrange",     port,           ipset,     portrange),
+	FW3_OPT("iprange", address, ipset, iprange),
+	FW3_OPT("portrange", port, ipset, portrange),
 
-	FW3_OPT("netmask",       int,            ipset,     netmask),
-	FW3_OPT("maxelem",       int,            ipset,     maxelem),
-	FW3_OPT("hashsize",      int,            ipset,     hashsize),
-	FW3_OPT("timeout",       int,            ipset,     timeout),
+	FW3_OPT("netmask", int, ipset, netmask),
+	FW3_OPT("maxelem", int, ipset, maxelem),
+	FW3_OPT("hashsize", int, ipset, hashsize),
+	FW3_OPT("timeout", int, ipset, timeout),
 
-	FW3_OPT("external",      string,         ipset,     external),
+	FW3_OPT("external", string, ipset, external),
 
-	FW3_LIST("entry",        setentry,       ipset,     entries),
-	FW3_OPT("loadfile",      string,         ipset,     loadfile),
+	FW3_LIST("entry", setentry, ipset, entries),
+	FW3_OPT("loadfile", string, ipset, loadfile),
 
-	{ }
+	{}
 };
 
-#define T(m, t1, t2, t3, r, o) \
-	{ FW3_IPSET_METHOD_##m, \
-	  FW3_IPSET_TYPE_##t1 | (FW3_IPSET_TYPE_##t2 << 8) | (FW3_IPSET_TYPE_##t3 << 16), \
-	  r, o }
+#define T(m, t1, t2, t3, r, o)                                                 \
+	{                                                                      \
+		FW3_IPSET_METHOD_##m,                                          \
+			FW3_IPSET_TYPE_##t1 | (FW3_IPSET_TYPE_##t2 << 8) |     \
+				(FW3_IPSET_TYPE_##t3 << 16),                   \
+			r, o                                                   \
+	}
 
 enum ipset_optflag {
-	OPT_IPRANGE   = (1 << 0),
+	OPT_IPRANGE = (1 << 0),
 	OPT_PORTRANGE = (1 << 1),
-	OPT_NETMASK   = (1 << 2),
-	OPT_HASHSIZE  = (1 << 3),
-	OPT_MAXELEM   = (1 << 4),
-	OPT_FAMILY    = (1 << 5),
+	OPT_NETMASK = (1 << 2),
+	OPT_HASHSIZE = (1 << 3),
+	OPT_MAXELEM = (1 << 4),
+	OPT_FAMILY = (1 << 5),
 };
 
 struct ipset_type {
@@ -66,39 +68,33 @@ struct ipset_type {
 };
 
 static struct ipset_type ipset_types[] = {
-	T(BITMAP, IP,   UNSPEC, UNSPEC, OPT_IPRANGE, OPT_NETMASK),
-	T(BITMAP, IP,   MAC,    UNSPEC, OPT_IPRANGE, 0),
+	T(BITMAP, IP, UNSPEC, UNSPEC, OPT_IPRANGE, OPT_NETMASK),
+	T(BITMAP, IP, MAC, UNSPEC, OPT_IPRANGE, 0),
 	T(BITMAP, PORT, UNSPEC, UNSPEC, OPT_PORTRANGE, 0),
 
-	T(HASH,   IP,   UNSPEC, UNSPEC, 0,
+	T(HASH, IP, UNSPEC, UNSPEC, 0,
 	  OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM | OPT_NETMASK),
-	T(HASH,   NET,  UNSPEC, UNSPEC, 0,
-	  OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
-	T(HASH,   IP,   PORT,   UNSPEC, 0,
-	  OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
-	T(HASH,   NET,  PORT,   UNSPEC, 0,
-	  OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
-	T(HASH,   IP,   PORT,   IP,     0,
-	  OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
-	T(HASH,   IP,   PORT,   NET,    0,
+	T(HASH, NET, UNSPEC, UNSPEC, 0,
 	  OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
+	T(HASH, IP, PORT, UNSPEC, 0, OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
+	T(HASH, NET, PORT, UNSPEC, 0, OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
+	T(HASH, IP, PORT, IP, 0, OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
+	T(HASH, IP, PORT, NET, 0, OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
 
-	T(LIST,   SET,  UNSPEC, UNSPEC, 0, OPT_MAXELEM),
+	T(LIST, SET, UNSPEC, UNSPEC, 0, OPT_MAXELEM),
 };
 
-
-static bool
-check_types(struct uci_element *e, struct fw3_ipset *ipset)
+static bool check_types(struct uci_element *e, struct fw3_ipset *ipset)
 {
 	int i = 0;
 	uint32_t typelist = 0;
 	struct fw3_ipset_datatype *type;
 
-	list_for_each_entry(type, &ipset->datatypes, list)
-	{
-		if (i >= 3)
-		{
-			warn_section("ipset", ipset, e, "must not have more than 3 datatypes assigned");
+	list_for_each_entry (type, &ipset->datatypes, list) {
+		if (i >= 3) {
+			warn_section(
+				"ipset", ipset, e,
+				"must not have more than 3 datatypes assigned");
 			return false;
 		}
 
@@ -106,20 +102,19 @@ check_types(struct uci_element *e, struct fw3_ipset *ipset)
 	}
 
 	/* find a suitable storage method if none specified */
-	if (ipset->method == FW3_IPSET_METHOD_UNSPEC)
-	{
-		for (i = 0; i < ARRAY_SIZE(ipset_types); i++)
-		{
+	if (ipset->method == FW3_IPSET_METHOD_UNSPEC) {
+		for (i = 0; i < ARRAY_SIZE(ipset_types); i++) {
 			/* skip type for v6 if it does not support family */
 			if (ipset->family != FW3_FAMILY_V4 &&
 			    !(ipset_types[i].optional & OPT_FAMILY))
 				continue;
 
-			if (ipset_types[i].types == typelist)
-			{
+			if (ipset_types[i].types == typelist) {
 				ipset->method = ipset_types[i].method;
 
-				warn_section("ipset", ipset, e, "defines no storage method, assuming '%s'",
+				warn_section(
+					"ipset", ipset, e,
+					"defines no storage method, assuming '%s'",
 					fw3_ipset_method_names[ipset->method]);
 
 				break;
@@ -129,66 +124,64 @@ check_types(struct uci_element *e, struct fw3_ipset *ipset)
 
 	//typelist |= ipset->method;
 
-	for (i = 0; i < ARRAY_SIZE(ipset_types); i++)
-	{
+	for (i = 0; i < ARRAY_SIZE(ipset_types); i++) {
 		if (ipset_types[i].method == ipset->method &&
-		    ipset_types[i].types == typelist)
-		{
-			if (!ipset->external)
-			{
+		    ipset_types[i].types == typelist) {
+			if (!ipset->external) {
 				if ((ipset_types[i].required & OPT_IPRANGE) &&
-					!ipset->iprange.set)
-				{
-					warn_section("ipset", ipset, e, "requires an ip range");
+				    !ipset->iprange.set) {
+					warn_section("ipset", ipset, e,
+						     "requires an ip range");
 					return false;
 				}
 
 				if ((ipset_types[i].required & OPT_PORTRANGE) &&
-				    !ipset->portrange.set)
-				{
-					warn_section("ipset", ipset, e, "requires a port range");
+				    !ipset->portrange.set) {
+					warn_section("ipset", ipset, e,
+						     "requires a port range");
 					return false;
 				}
 
 				if (!(ipset_types[i].required & OPT_IPRANGE) &&
-				    ipset->iprange.set)
-				{
-					warn_section("ipset", ipset, e, "iprange ignored");
+				    ipset->iprange.set) {
+					warn_section("ipset", ipset, e,
+						     "iprange ignored");
 					ipset->iprange.set = false;
 				}
 
-				if (!(ipset_types[i].required & OPT_PORTRANGE) &&
-				    ipset->portrange.set)
-				{
-					warn_section("ipset", ipset, e, "portrange ignored");
+				if (!(ipset_types[i].required &
+				      OPT_PORTRANGE) &&
+				    ipset->portrange.set) {
+					warn_section("ipset", ipset, e,
+						     "portrange ignored");
 					ipset->portrange.set = false;
 				}
 
 				if (!(ipset_types[i].optional & OPT_NETMASK) &&
-				    ipset->netmask > 0)
-				{
-					warn_section("ipset", ipset, e, "netmask ignored");
+				    ipset->netmask > 0) {
+					warn_section("ipset", ipset, e,
+						     "netmask ignored");
 					ipset->netmask = 0;
 				}
 
 				if (!(ipset_types[i].optional & OPT_HASHSIZE) &&
-				    ipset->hashsize > 0)
-				{
-					warn_section("ipset", ipset, e, "hashsize ignored");
+				    ipset->hashsize > 0) {
+					warn_section("ipset", ipset, e,
+						     "hashsize ignored");
 					ipset->hashsize = 0;
 				}
 
 				if (!(ipset_types[i].optional & OPT_MAXELEM) &&
-				    ipset->maxelem > 0)
-				{
-					warn_section("ipset", ipset, e, "maxelem ignored");
+				    ipset->maxelem > 0) {
+					warn_section("ipset", ipset, e,
+						     "maxelem ignored");
 					ipset->maxelem = 0;
 				}
 
 				if (!(ipset_types[i].optional & OPT_FAMILY) &&
-				    ipset->family != FW3_FAMILY_V4)
-				{
-					warn_section("ipset", ipset, e, "family ignored");
+				    ipset->family != FW3_FAMILY_V4) {
+					warn_section("ipset", ipset, e,
+						     "family ignored");
 					ipset->family = FW3_FAMILY_V4;
 				}
 			}
@@ -197,51 +190,46 @@ check_types(struct uci_element *e, struct fw3_ipset *ipset)
 		}
 	}
 
-	warn_section("ipset", ipset, e, "has an invalid combination of storage method and matches");
+	warn_section(
+		"ipset", ipset, e,
+		"has an invalid combination of storage method and matches");
 	return false;
 }
 
-static bool
-check_ipset(struct fw3_state *state, struct fw3_ipset *ipset, struct uci_element *e)
+static bool check_ipset(struct fw3_state *state, struct fw3_ipset *ipset,
+			struct uci_element *e)
 {
-	if (ipset->external)
-	{
+	if (ipset->external) {
 		if (!*ipset->external)
 			ipset->external = NULL;
 		else if (!ipset->name)
 			ipset->name = ipset->external;
 	}
 
-	if (!ipset->name || !*ipset->name)
-	{
-		warn_section("ipset", ipset, e, "ipset must have a name assigned");
+	if (!ipset->name || !*ipset->name) {
+		warn_section("ipset", ipset, e,
+			     "ipset must have a name assigned");
 	}
 	//else if (fw3_lookup_ipset(state, ipset->name) != NULL)
 	//{
 	//	warn_section("ipset", ipset, e, "has duplicated set name", ipset->name);
 	//}
-	else if (ipset->family == FW3_FAMILY_ANY)
-	{
+	else if (ipset->family == FW3_FAMILY_ANY) {
 		warn_section("ipset", ipset, e, "must not have family 'any'");
-	}
-	else if (ipset->iprange.set && ipset->family != ipset->iprange.family)
-	{
-		warn_section("ipset", ipset, e, "has iprange of wrong address family");
-	}
-	else if (list_empty(&ipset->datatypes))
-	{
+	} else if (ipset->iprange.set &&
+		   ipset->family != ipset->iprange.family) {
+		warn_section("ipset", ipset, e,
+			     "has iprange of wrong address family");
+	} else if (list_empty(&ipset->datatypes)) {
 		warn_section("ipset", ipset, e, "has no datatypes assigned");
-	}
-	else if (check_types(e, ipset))
-	{
+	} else if (check_types(e, ipset)) {
 		return true;
 	}
 
 	return false;
 }
 
-static struct fw3_ipset *
-fw3_alloc_ipset(struct fw3_state *state)
+static struct fw3_ipset *fw3_alloc_ipset(struct fw3_state *state)
 {
 	struct fw3_ipset *ipset;
 
@@ -253,16 +241,15 @@ fw3_alloc_ipset(struct fw3_state *state)
 	INIT_LIST_HEAD(&ipset->entries);
 
 	ipset->enabled = true;
-	ipset->family  = FW3_FAMILY_V4;
+	ipset->family = FW3_FAMILY_V4;
 
 	list_add_tail(&ipset->list, &state->ipsets);
 
 	return ipset;
 }
 
-void
-fw3_load_ipsets(struct fw3_state *state, struct uci_package *p,
-		struct blob_attr *a)
+void fw3_load_ipsets(struct fw3_state *state, struct uci_package *p,
+		     struct blob_attr *a)
 {
 	struct uci_section *s;
 	struct uci_element *e;
@@ -290,9 +277,10 @@ fw3_load_ipsets(struct fw3_state *state, struct uci_package *p,
 		if (!ipset)
 			continue;
 
-		if (!fw3_parse_blob_options(ipset, fw3_ipset_opts, entry, name))
-		{
-			warn_section("ipset", ipset, NULL, "skipped due to invalid options");
+		if (!fw3_parse_blob_options(ipset, fw3_ipset_opts, entry,
+					    name)) {
+			warn_section("ipset", ipset, NULL,
+				     "skipped due to invalid options");
 			fw3_free_ipset(ipset);
 			continue;
 		}
@@ -321,9 +309,7 @@ fw3_load_ipsets(struct fw3_state *state, struct uci_package *p,
 	}
 }
 
-
-static void
-load_file(struct fw3_ipset *ipset)
+static void load_file(struct fw3_ipset *ipset)
 {
 	FILE *f;
 	char line[128];
@@ -346,8 +332,7 @@ load_file(struct fw3_ipset *ipset)
 	fclose(f);
 }
 
-static void
-create_ipset(struct fw3_ipset *ipset, struct fw3_state *state)
+static void create_ipset(struct fw3_ipset *ipset, struct fw3_state *state)
 {
 	bool first = true;
 	struct fw3_setentry *entry;
@@ -356,25 +341,25 @@ create_ipset(struct fw3_ipset *ipset, struct fw3_state *state)
 	info(" * Creating ipset %s", ipset->name);
 
 	first = true;
-	fw3_pr("create %s %s", ipset->name, fw3_ipset_method_names[ipset->method]);
+	fw3_pr("create %s %s", ipset->name,
+	       fw3_ipset_method_names[ipset->method]);
 
-	list_for_each_entry(type, &ipset->datatypes, list)
-	{
-		fw3_pr("%c%s", first ? ':' : ',', fw3_ipset_type_names[type->type]);
+	list_for_each_entry (type, &ipset->datatypes, list) {
+		fw3_pr("%c%s", first ? ':' : ',',
+		       fw3_ipset_type_names[type->type]);
 		first = false;
 	}
 
 	if (ipset->method == FW3_IPSET_METHOD_HASH)
-		fw3_pr(" family inet%s", (ipset->family == FW3_FAMILY_V4) ? "" : "6");
-
-	if (ipset->iprange.set)
-	{
-		fw3_pr(" range %s", fw3_address_to_string(&ipset->iprange, false, true));
-	}
-	else if (ipset->portrange.set)
-	{
-		fw3_pr(" range %u-%u",
-		       ipset->portrange.port_min, ipset->portrange.port_max);
+		fw3_pr(" family inet%s",
+		       (ipset->family == FW3_FAMILY_V4) ? "" : "6");
+
+	if (ipset->iprange.set) {
+		fw3_pr(" range %s",
+		       fw3_address_to_string(&ipset->iprange, false, true));
+	} else if (ipset->portrange.set) {
+		fw3_pr(" range %u-%u", ipset->portrange.port_min,
+		       ipset->portrange.port_max);
 	}
 
 	if (ipset->timeout > 0)
@@ -391,14 +376,13 @@ create_ipset(struct fw3_ipset *ipset, struct fw3_state *state)
 
 	fw3_pr("\n");
 
-	list_for_each_entry(entry, &ipset->entries, list)
+	list_for_each_entry (entry, &ipset->entries, list)
 		fw3_pr("add %s %s\n", ipset->name, entry->value);
 
 	load_file(ipset);
 }
 
-void
-fw3_create_ipsets(struct fw3_state *state)
+void fw3_create_ipsets(struct fw3_state *state)
 {
 	int tries;
 	bool exec = false;
@@ -408,13 +392,11 @@ fw3_create_ipsets(struct fw3_state *state)
 		return;
 
 	/* spawn ipsets */
-	list_for_each_entry(ipset, &state->ipsets, list)
-	{
+	list_for_each_entry (ipset, &state->ipsets, list) {
 		if (ipset->external)
 			continue;
 
-		if (!exec)
-		{
+		if (!exec) {
 			exec = fw3_command_pipe(false, "ipset", "-exist", "-");
 
 			if (!exec)
@@ -424,15 +406,13 @@ fw3_create_ipsets(struct fw3_state *state)
 		create_ipset(ipset, state);
 	}
 
-	if (exec)
-	{
+	if (exec) {
 		fw3_pr("quit\n");
 		fw3_command_close();
 	}
 
 	/* wait for ipsets to appear */
-	list_for_each_entry(ipset, &state->ipsets, list)
-	{
+	list_for_each_entry (ipset, &state->ipsets, list) {
 		if (ipset->external)
 			continue;
 
@@ -441,18 +421,15 @@ fw3_create_ipsets(struct fw3_state *state)
 	}
 }
 
-void
-fw3_destroy_ipsets(struct fw3_state *state)
+void fw3_destroy_ipsets(struct fw3_state *state)
 {
 	int tries;
 	bool exec = false;
 	struct fw3_ipset *ipset;
 
 	/* destroy ipsets */
-	list_for_each_entry(ipset, &state->ipsets, list)
-	{
-		if (!exec)
-		{
+	list_for_each_entry (ipset, &state->ipsets, list) {
+		if (!exec) {
 			exec = fw3_command_pipe(false, "ipset", "-exist", "-");
 
 			if (!exec)
@@ -465,15 +442,13 @@ fw3_destroy_ipsets(struct fw3_state *state)
 		fw3_pr("destroy %s\n", ipset->name);
 	}
 
-	if (exec)
-	{
+	if (exec) {
 		fw3_pr("quit\n");
 		fw3_command_close();
 	}
 
 	/* wait for ipsets to disappear */
-	list_for_each_entry(ipset, &state->ipsets, list)
-	{
+	list_for_each_entry (ipset, &state->ipsets, list) {
 		if (ipset->external)
 			continue;
 
@@ -482,16 +457,14 @@ fw3_destroy_ipsets(struct fw3_state *state)
 	}
 }
 
-struct fw3_ipset *
-fw3_lookup_ipset(struct fw3_state *state, const char *name)
+struct fw3_ipset *fw3_lookup_ipset(struct fw3_state *state, const char *name)
 {
 	struct fw3_ipset *s;
 
 	if (list_empty(&state->ipsets))
 		return NULL;
 
-	list_for_each_entry(s, &state->ipsets, list)
-	{
+	list_for_each_entry (s, &state->ipsets, list) {
 		if (strcmp(s->name, name))
 			continue;
 
@@ -501,8 +474,7 @@ fw3_lookup_ipset(struct fw3_state *state, const char *name)
 	return NULL;
 }
 
-bool
-fw3_check_ipset(struct fw3_ipset *set)
+bool fw3_check_ipset(struct fw3_ipset *set)
 {
 	bool rv = false;
 
@@ -524,12 +496,13 @@ fw3_check_ipset(struct fw3_ipset *set)
 	req_name.op = IP_SET_OP_GET_BYNAME;
 	req_name.version = req_ver.version;
 	snprintf(req_name.set.name, IPSET_MAXNAMELEN - 1, "%s",
-	         set->external ? set->external : set->name);
+		 set->external ? set->external : set->name);
 
 	if (getsockopt(s, SOL_IP, SO_IP_SET, &req_name, &sz))
 		goto out;
 
-	rv = ((sz == sizeof(req_name)) && (req_name.set.index != IPSET_INVALID_ID));
+	rv = ((sz == sizeof(req_name)) &&
+	      (req_name.set.index != IPSET_INVALID_ID));
 
 out:
 	if (s >= 0)
diff --git a/ipsets.h b/ipsets.h
index 2ba862d..10af007 100644
--- a/ipsets.h
+++ b/ipsets.h
@@ -24,14 +24,14 @@
 #include "options.h"
 #include "utils.h"
 
-
 extern const struct fw3_option fw3_ipset_opts[];
 
-void fw3_load_ipsets(struct fw3_state *state, struct uci_package *p, struct blob_attr *a);
+void fw3_load_ipsets(struct fw3_state *state, struct uci_package *p,
+		     struct blob_attr *a);
 void fw3_create_ipsets(struct fw3_state *state);
 void fw3_destroy_ipsets(struct fw3_state *state);
 
-struct fw3_ipset * fw3_lookup_ipset(struct fw3_state *state, const char *name);
+struct fw3_ipset *fw3_lookup_ipset(struct fw3_state *state, const char *name);
 
 bool fw3_check_ipset(struct fw3_ipset *set);
 
@@ -43,26 +43,26 @@ static inline void fw3_free_ipset(struct fw3_ipset *ipset)
 
 #ifndef SO_IP_SET
 
-#define SO_IP_SET           83
-#define IPSET_MAXNAMELEN    32
-#define IPSET_INVALID_ID    65535
+#define SO_IP_SET 83
+#define IPSET_MAXNAMELEN 32
+#define IPSET_INVALID_ID 65535
 
 union ip_set_name_index {
-    char name[IPSET_MAXNAMELEN];
-    uint16_t index;
+	char name[IPSET_MAXNAMELEN];
+	uint16_t index;
 };
 
-#define IP_SET_OP_GET_BYNAME    0x00000006
+#define IP_SET_OP_GET_BYNAME 0x00000006
 struct ip_set_req_get_set {
-    uint32_t op;
-    uint32_t version;
-    union ip_set_name_index set;
+	uint32_t op;
+	uint32_t version;
+	union ip_set_name_index set;
 };
 
-#define IP_SET_OP_VERSION       0x00000100
+#define IP_SET_OP_VERSION 0x00000100
 struct ip_set_req_version {
-    uint32_t op;
-    uint32_t version;
+	uint32_t op;
+	uint32_t version;
 };
 
 #endif /* SO_IP_SET */
diff --git a/iptables.c b/iptables.c
index a095621..99f7c17 100644
--- a/iptables.c
+++ b/iptables.c
@@ -46,16 +46,15 @@
 
 /* xtables interface */
 #if (XTABLES_VERSION_CODE >= 10)
-# include "xtables-10.h"
+#include "xtables-10.h"
 #elif (XTABLES_VERSION_CODE == 5)
-# include "xtables-5.h"
+#include "xtables-5.h"
 #else
-# error "Unsupported xtables version"
+#error "Unsupported xtables version"
 #endif
 
 #include "iptables.h"
 
-
 struct fw3_ipt_rule {
 	struct fw3_ipt_handle *h;
 
@@ -75,21 +74,19 @@ struct fw3_ipt_rule {
 };
 
 static struct option base_opts[] = {
-	{ .name = "match",         .has_arg = 1, .val = 'm' },
-	{ .name = "jump",          .has_arg = 1, .val = 'j' },
-	{ .name = "in-interface",  .has_arg = 1, .val = 'i' },
+	{ .name = "match", .has_arg = 1, .val = 'm' },
+	{ .name = "jump", .has_arg = 1, .val = 'j' },
+	{ .name = "in-interface", .has_arg = 1, .val = 'i' },
 	{ .name = "out-interface", .has_arg = 1, .val = 'o' },
-	{ .name = "source",        .has_arg = 1, .val = 's' },
-	{ .name = "destination",   .has_arg = 1, .val = 'd' },
+	{ .name = "source", .has_arg = 1, .val = 's' },
+	{ .name = "destination", .has_arg = 1, .val = 'd' },
 	{ NULL }
 };
 
-
 static jmp_buf fw3_ipt_error_jmp;
 
-static __attribute__((noreturn))
-void fw3_ipt_error_handler(enum xtables_exittype status,
-                           const char *fmt, ...)
+static __attribute__((noreturn)) void
+fw3_ipt_error_handler(enum xtables_exittype status, const char *fmt, ...)
 {
 	va_list args;
 
@@ -131,12 +128,10 @@ static struct {
 	void (*register_target)(struct xtables_target *);
 } xext;
 
-
 /* Required by certain extensions like SNAT and DNAT */
 int kernel_version = 0;
 
-void
-get_kernel_version(void)
+void get_kernel_version(void)
 {
 	static struct utsname uts;
 	int x = 0, y = 0, z = 0;
@@ -158,8 +153,8 @@ static void fw3_init_extensions(void)
 #endif
 }
 
-struct fw3_ipt_handle *
-fw3_ipt_open(enum fw3_family family, enum fw3_table table)
+struct fw3_ipt_handle *fw3_ipt_open(enum fw3_family family,
+				    enum fw3_table table)
 {
 	int i;
 	struct fw3_ipt_handle *h;
@@ -168,29 +163,25 @@ fw3_ipt_open(enum fw3_family family, enum fw3_table table)
 
 	xtables_init();
 
-	if (family == FW3_FAMILY_V6)
-	{
+	if (family == FW3_FAMILY_V6) {
 #ifndef DISABLE_IPV6
 		h->family = FW3_FAMILY_V6;
-		h->table  = table;
+		h->table = table;
 		h->handle = ip6tc_init(fw3_flag_names[table]);
 
 		xtables_set_params(&xtg6);
 		xtables_set_nfproto(NFPROTO_IPV6);
 #endif
-	}
-	else
-	{
+	} else {
 		h->family = FW3_FAMILY_V4;
-		h->table  = table;
+		h->table = table;
 		h->handle = iptc_init(fw3_flag_names[table]);
 
 		xtables_set_params(&xtg);
 		xtables_set_nfproto(NFPROTO_IPV4);
 	}
 
-	if (!h->handle)
-	{
+	if (!h->handle) {
 		free(h);
 		return NULL;
 	}
@@ -209,36 +200,35 @@ fw3_ipt_open(enum fw3_family family, enum fw3_table table)
 	return h;
 }
 
-static void
-debug(struct fw3_ipt_handle *h, const char *fmt, ...)
+static void debug(struct fw3_ipt_handle *h, const char *fmt, ...)
 {
 	va_list ap;
 
-	printf("%s -t %s ", (h->family == FW3_FAMILY_V6) ? "ip6tables" : "iptables",
-	                    fw3_flag_names[h->table]);
+	printf("%s -t %s ",
+	       (h->family == FW3_FAMILY_V6) ? "ip6tables" : "iptables",
+	       fw3_flag_names[h->table]);
 
 	va_start(ap, fmt);
 	vprintf(fmt, ap);
 	va_end(ap);
 }
 
-void
-fw3_ipt_set_policy(struct fw3_ipt_handle *h, const char *chain,
-                   enum fw3_flag policy)
+void fw3_ipt_set_policy(struct fw3_ipt_handle *h, const char *chain,
+			enum fw3_flag policy)
 {
 	if (fw3_pr_debug)
 		debug(h, "-P %s %s\n", chain, fw3_flag_names[policy]);
 
 #ifndef DISABLE_IPV6
 	if (h->family == FW3_FAMILY_V6)
-		ip6tc_set_policy(chain, fw3_flag_names[policy], NULL, h->handle);
+		ip6tc_set_policy(chain, fw3_flag_names[policy], NULL,
+				 h->handle);
 	else
 #endif
 		iptc_set_policy(chain, fw3_flag_names[policy], NULL, h->handle);
 }
 
-void
-fw3_ipt_flush_chain(struct fw3_ipt_handle *h, const char *chain)
+void fw3_ipt_flush_chain(struct fw3_ipt_handle *h, const char *chain)
 {
 	if (fw3_pr_debug)
 		debug(h, "-F %s\n", chain);
@@ -251,8 +241,7 @@ fw3_ipt_flush_chain(struct fw3_ipt_handle *h, const char *chain)
 		iptc_flush_entries(chain, h->handle);
 }
 
-static void
-delete_rules(struct fw3_ipt_handle *h, const char *target)
+static void delete_rules(struct fw3_ipt_handle *h, const char *target)
 {
 	unsigned int num;
 	const struct ipt_entry *e;
@@ -261,57 +250,53 @@ delete_rules(struct fw3_ipt_handle *h, const char *target)
 	bool found;
 
 #ifndef DISABLE_IPV6
-	if (h->family == FW3_FAMILY_V6)
-	{
-		for (chain = ip6tc_first_chain(h->handle);
-		     chain != NULL;
-		     chain = ip6tc_next_chain(h->handle))
-		{
+	if (h->family == FW3_FAMILY_V6) {
+		for (chain = ip6tc_first_chain(h->handle); chain != NULL;
+		     chain = ip6tc_next_chain(h->handle)) {
 			do {
 				found = false;
 
 				const struct ip6t_entry *e6;
-				for (num = 0, e6 = ip6tc_first_rule(chain, h->handle);
-					 e6 != NULL;
-					 num++, e6 = ip6tc_next_rule(e6, h->handle))
-				{
+				for (num = 0,
+				    e6 = ip6tc_first_rule(chain, h->handle);
+				     e6 != NULL; num++,
+				    e6 = ip6tc_next_rule(e6, h->handle)) {
 					t = ip6tc_get_target(e6, h->handle);
 
-					if (*t && !strcmp(t, target))
-					{
+					if (*t && !strcmp(t, target)) {
 						if (fw3_pr_debug)
-							debug(h, "-D %s %u\n", chain, num + 1);
+							debug(h, "-D %s %u\n",
+							      chain, num + 1);
 
-						ip6tc_delete_num_entry(chain, num, h->handle);
+						ip6tc_delete_num_entry(
+							chain, num, h->handle);
 						found = true;
 						break;
 					}
 				}
 			} while (found);
 		}
-	}
-	else
+	} else
 #endif
 	{
-		for (chain = iptc_first_chain(h->handle);
-		     chain != NULL;
-		     chain = iptc_next_chain(h->handle))
-		{
+		for (chain = iptc_first_chain(h->handle); chain != NULL;
+		     chain = iptc_next_chain(h->handle)) {
 			do {
 				found = false;
 
-				for (num = 0, e = iptc_first_rule(chain, h->handle);
+				for (num = 0,
+				    e = iptc_first_rule(chain, h->handle);
 				     e != NULL;
-					 num++, e = iptc_next_rule(e, h->handle))
-				{
+				     num++, e = iptc_next_rule(e, h->handle)) {
 					t = iptc_get_target(e, h->handle);
 
-					if (*t && !strcmp(t, target))
-					{
+					if (*t && !strcmp(t, target)) {
 						if (fw3_pr_debug)
-							debug(h, "-D %s %u\n", chain, num + 1);
+							debug(h, "-D %s %u\n",
+							      chain, num + 1);
 
-						iptc_delete_num_entry(chain, num, h->handle);
+						iptc_delete_num_entry(
+							chain, num, h->handle);
 						found = true;
 						break;
 					}
@@ -321,8 +306,7 @@ delete_rules(struct fw3_ipt_handle *h, const char *target)
 	}
 }
 
-void
-fw3_ipt_delete_chain(struct fw3_ipt_handle *h, const char *chain)
+void fw3_ipt_delete_chain(struct fw3_ipt_handle *h, const char *chain)
 {
 	delete_rules(h, chain);
 
@@ -337,14 +321,12 @@ fw3_ipt_delete_chain(struct fw3_ipt_handle *h, const char *chain)
 		iptc_delete_chain(chain, h->handle);
 }
 
-static bool
-has_rule_tag(const void *base, unsigned int start, unsigned int end)
+static bool has_rule_tag(const void *base, unsigned int start, unsigned int end)
 {
 	unsigned int i;
 	const struct xt_entry_match *em;
 
-	for (i = start; i < end; i += em->u.match_size)
-	{
+	for (i = start; i < end; i += em->u.match_size) {
 		em = base + i;
 
 		if (strcmp(em->u.user.name, "comment"))
@@ -357,16 +339,14 @@ has_rule_tag(const void *base, unsigned int start, unsigned int end)
 	return false;
 }
 
-void
-fw3_ipt_delete_id_rules(struct fw3_ipt_handle *h, const char *chain)
+void fw3_ipt_delete_id_rules(struct fw3_ipt_handle *h, const char *chain)
 {
 	unsigned int num;
 	const struct ipt_entry *e;
 	bool found;
 
 #ifndef DISABLE_IPV6
-	if (h->family == FW3_FAMILY_V6)
-	{
+	if (h->family == FW3_FAMILY_V6) {
 		if (!ip6tc_is_chain(chain, h->handle))
 			return;
 
@@ -375,22 +355,22 @@ fw3_ipt_delete_id_rules(struct fw3_ipt_handle *h, const char *chain)
 
 			const struct ip6t_entry *e6;
 			for (num = 0, e6 = ip6tc_first_rule(chain, h->handle);
-				 e6 != NULL;
-				 num++, e6 = ip6tc_next_rule(e6, h->handle))
-			{
-				if (has_rule_tag(e6, sizeof(*e6), e6->target_offset))
-				{
+			     e6 != NULL;
+			     num++, e6 = ip6tc_next_rule(e6, h->handle)) {
+				if (has_rule_tag(e6, sizeof(*e6),
+						 e6->target_offset)) {
 					if (fw3_pr_debug)
-						debug(h, "-D %s %u\n", chain, num + 1);
+						debug(h, "-D %s %u\n", chain,
+						      num + 1);
 
-					ip6tc_delete_num_entry(chain, num, h->handle);
+					ip6tc_delete_num_entry(chain, num,
+							       h->handle);
 					found = true;
 					break;
 				}
 			}
 		} while (found);
-	}
-	else
+	} else
 #endif
 	{
 		if (!iptc_is_chain(chain, h->handle))
@@ -400,15 +380,16 @@ fw3_ipt_delete_id_rules(struct fw3_ipt_handle *h, const char *chain)
 			found = false;
 
 			for (num = 0, e = iptc_first_rule(chain, h->handle);
-				 e != NULL;
-				 num++, e = iptc_next_rule(e, h->handle))
-			{
-				if (has_rule_tag(e, sizeof(*e), e->target_offset))
-				{
+			     e != NULL;
+			     num++, e = iptc_next_rule(e, h->handle)) {
+				if (has_rule_tag(e, sizeof(*e),
+						 e->target_offset)) {
 					if (fw3_pr_debug)
-						debug(h, "-D %s %u\n", chain, num + 1);
+						debug(h, "-D %s %u\n", chain,
+						      num + 1);
 
-					iptc_delete_num_entry(chain, num, h->handle);
+					iptc_delete_num_entry(chain, num,
+							      h->handle);
 					found = true;
 					break;
 				}
@@ -417,8 +398,7 @@ fw3_ipt_delete_id_rules(struct fw3_ipt_handle *h, const char *chain)
 	}
 }
 
-void
-fw3_ipt_create_chain(struct fw3_ipt_handle *h, const char *fmt, ...)
+void fw3_ipt_create_chain(struct fw3_ipt_handle *h, const char *fmt, ...)
 {
 	char buf[32];
 	va_list ap;
@@ -433,76 +413,61 @@ fw3_ipt_create_chain(struct fw3_ipt_handle *h, const char *fmt, ...)
 	iptc_create_chain(buf, h->handle);
 }
 
-void
-fw3_ipt_flush(struct fw3_ipt_handle *h)
+void fw3_ipt_flush(struct fw3_ipt_handle *h)
 {
 	const char *chain;
 
 #ifndef DISABLE_IPV6
-	if (h->family == FW3_FAMILY_V6)
-	{
-		for (chain = ip6tc_first_chain(h->handle);
-		     chain != NULL;
-		     chain = ip6tc_next_chain(h->handle))
-		{
+	if (h->family == FW3_FAMILY_V6) {
+		for (chain = ip6tc_first_chain(h->handle); chain != NULL;
+		     chain = ip6tc_next_chain(h->handle)) {
 			ip6tc_flush_entries(chain, h->handle);
 		}
 
-		for (chain = ip6tc_first_chain(h->handle);
-		     chain != NULL;
-		     chain = ip6tc_next_chain(h->handle))
-		{
+		for (chain = ip6tc_first_chain(h->handle); chain != NULL;
+		     chain = ip6tc_next_chain(h->handle)) {
 			ip6tc_delete_chain(chain, h->handle);
 		}
-	}
-	else
+	} else
 #endif
 	{
-		for (chain = iptc_first_chain(h->handle);
-		     chain != NULL;
-		     chain = iptc_next_chain(h->handle))
-		{
+		for (chain = iptc_first_chain(h->handle); chain != NULL;
+		     chain = iptc_next_chain(h->handle)) {
 			iptc_flush_entries(chain, h->handle);
 		}
 
-		for (chain = iptc_first_chain(h->handle);
-		     chain != NULL;
-		     chain = iptc_next_chain(h->handle))
-		{
+		for (chain = iptc_first_chain(h->handle); chain != NULL;
+		     chain = iptc_next_chain(h->handle)) {
 			iptc_delete_chain(chain, h->handle);
 		}
 	}
 }
 
-static bool
-chain_is_empty(struct fw3_ipt_handle *h, const char *chain)
+static bool chain_is_empty(struct fw3_ipt_handle *h, const char *chain)
 {
 #ifndef DISABLE_IPV6
 	if (h->family == FW3_FAMILY_V6)
 		return (!ip6tc_builtin(chain, h->handle) &&
-		        !ip6tc_first_rule(chain, h->handle));
+			!ip6tc_first_rule(chain, h->handle));
 #endif
 
 	return (!iptc_builtin(chain, h->handle) &&
-	        !iptc_first_rule(chain, h->handle));
+		!iptc_first_rule(chain, h->handle));
 }
 
-void
-fw3_ipt_gc(struct fw3_ipt_handle *h)
+void fw3_ipt_gc(struct fw3_ipt_handle *h)
 {
 	const char *chain;
 	bool found;
 
 #ifndef DISABLE_IPV6
-	if (h->family == FW3_FAMILY_V6)
-	{
+	if (h->family == FW3_FAMILY_V6) {
 		do {
 			found = false;
 
 			for (chain = ip6tc_first_chain(h->handle);
-				 chain != NULL;
-				 chain = ip6tc_next_chain(h->handle))
-			{
+			     chain != NULL;
+			     chain = ip6tc_next_chain(h->handle)) {
 				if (!chain_is_empty(h, chain))
 					continue;
 
@@ -510,18 +475,15 @@ fw3_ipt_gc(struct fw3_ipt_handle *h)
 				found = true;
 				break;
 			}
-		} while(found);
-	}
-	else
+		} while (found);
+	} else
 #endif
 	{
 		do {
 			found = false;
 
-			for (chain = iptc_first_chain(h->handle);
-				 chain != NULL;
-				 chain = iptc_next_chain(h->handle))
-			{
+			for (chain = iptc_first_chain(h->handle); chain != NULL;
+			     chain = iptc_next_chain(h->handle)) {
 				warn("C=%s\n", chain);
 
 				if (!chain_is_empty(h, chain))
@@ -537,19 +499,16 @@ fw3_ipt_gc(struct fw3_ipt_handle *h)
 	}
 }
 
-void
-fw3_ipt_commit(struct fw3_ipt_handle *h)
+void fw3_ipt_commit(struct fw3_ipt_handle *h)
 {
 	int rv;
 
 #ifndef DISABLE_IPV6
-	if (h->family == FW3_FAMILY_V6)
-	{
+	if (h->family == FW3_FAMILY_V6) {
 		rv = ip6tc_commit(h->handle);
 		if (!rv)
 			warn("ip6tc_commit(): %s", ip6tc_strerror(errno));
-	}
-	else
+	} else
 #endif
 	{
 		rv = iptc_commit(h->handle);
@@ -558,14 +517,12 @@ fw3_ipt_commit(struct fw3_ipt_handle *h)
 	}
 }
 
-void
-fw3_ipt_close(struct fw3_ipt_handle *h)
+void fw3_ipt_close(struct fw3_ipt_handle *h)
 {
 	free(h);
 }
 
-struct fw3_ipt_rule *
-fw3_ipt_rule_new(struct fw3_ipt_handle *h)
+struct fw3_ipt_rule *fw3_ipt_rule_new(struct fw3_ipt_handle *h)
 {
 	struct fw3_ipt_rule *r;
 
@@ -578,9 +535,7 @@ fw3_ipt_rule_new(struct fw3_ipt_handle *h)
 	return r;
 }
 
-
-static bool
-is_chain(struct fw3_ipt_handle *h, const char *name)
+static bool is_chain(struct fw3_ipt_handle *h, const char *name)
 {
 #ifndef DISABLE_IPV6
 	if (h->family == FW3_FAMILY_V6)
@@ -590,8 +545,7 @@ is_chain(struct fw3_ipt_handle *h, const char *name)
 		return iptc_is_chain(name, h->handle);
 }
 
-static char *
-get_protoname(struct fw3_ipt_rule *r)
+static char *get_protoname(struct fw3_ipt_rule *r)
 {
 	const struct xtables_pprot *pp;
 
@@ -603,8 +557,8 @@ get_protoname(struct fw3_ipt_rule *r)
 	return NULL;
 }
 
-static struct xtables_match *
-find_match(struct fw3_ipt_rule *r, const char *name)
+static struct xtables_match *find_match(struct fw3_ipt_rule *r,
+					const char *name)
 {
 	struct xtables_match *m;
 
@@ -615,8 +569,8 @@ find_match(struct fw3_ipt_rule *r, const char *name)
 	return m;
 }
 
-static void
-init_match(struct fw3_ipt_rule *r, struct xtables_match *m, bool no_clone)
+static void init_match(struct fw3_ipt_rule *r, struct xtables_match *m,
+		       bool no_clone)
 {
 	size_t s;
 	struct xtables_globals *g;
@@ -648,8 +602,7 @@ init_match(struct fw3_ipt_rule *r, struct xtables_match *m, bool no_clone)
 	fw3_xt_merge_match_options(g, m);
 }
 
-static bool
-need_protomatch(struct fw3_ipt_rule *r, const char *pname)
+static bool need_protomatch(struct fw3_ipt_rule *r, const char *pname)
 {
 	if (!pname)
 		return false;
@@ -660,8 +613,7 @@ need_protomatch(struct fw3_ipt_rule *r, const char *pname)
 	return !r->protocol_loaded;
 }
 
-static struct xtables_match *
-load_protomatch(struct fw3_ipt_rule *r)
+static struct xtables_match *load_protomatch(struct fw3_ipt_rule *r)
 {
 	const char *pname = get_protoname(r);
 
@@ -671,8 +623,8 @@ load_protomatch(struct fw3_ipt_rule *r)
 	return find_match(r, pname);
 }
 
-static struct xtables_target *
-find_target(struct fw3_ipt_rule *r, const char *name)
+static struct xtables_target *find_target(struct fw3_ipt_rule *r,
+					  const char *name)
 {
 	struct xtables_target *t;
 
@@ -688,8 +640,8 @@ find_target(struct fw3_ipt_rule *r, const char *name)
 	return t;
 }
 
-static struct xtables_target *
-get_target(struct fw3_ipt_rule *r, const char *name)
+static struct xtables_target *get_target(struct fw3_ipt_rule *r,
+					 const char *name)
 {
 	size_t s;
 	struct xtables_target *t;
@@ -723,8 +675,7 @@ get_target(struct fw3_ipt_rule *r, const char *name)
 	return t;
 }
 
-void
-fw3_ipt_rule_proto(struct fw3_ipt_rule *r, struct fw3_protocol *proto)
+void fw3_ipt_rule_proto(struct fw3_ipt_rule *r, struct fw3_protocol *proto)
 {
 	uint32_t pr;
 
@@ -734,8 +685,7 @@ fw3_ipt_rule_proto(struct fw3_ipt_rule *r, struct fw3_protocol *proto)
 	pr = proto->protocol;
 
 #ifndef DISABLE_IPV6
-	if (r->h->family == FW3_FAMILY_V6)
-	{
+	if (r->h->family == FW3_FAMILY_V6) {
 		if (pr == 1)
 			pr = 58;
 
@@ -744,8 +694,7 @@ fw3_ipt_rule_proto(struct fw3_ipt_rule *r, struct fw3_protocol *proto)
 
 		if (proto->invert)
 			r->e6.ipv6.invflags |= XT_INV_PROTO;
-	}
-	else
+	} else
 #endif
 	{
 		r->e.ip.proto = pr;
@@ -757,47 +706,40 @@ fw3_ipt_rule_proto(struct fw3_ipt_rule *r, struct fw3_protocol *proto)
 	r->protocol = pr;
 }
 
-void
-fw3_ipt_rule_in_out(struct fw3_ipt_rule *r,
-                    struct fw3_device *in, struct fw3_device *out)
+void fw3_ipt_rule_in_out(struct fw3_ipt_rule *r, struct fw3_device *in,
+			 struct fw3_device *out)
 {
 #ifndef DISABLE_IPV6
-	if (r->h->family == FW3_FAMILY_V6)
-	{
-		if (in && !in->any)
-		{
+	if (r->h->family == FW3_FAMILY_V6) {
+		if (in && !in->any) {
 			xtables_parse_interface(in->name, r->e6.ipv6.iniface,
-			                                  r->e6.ipv6.iniface_mask);
+						r->e6.ipv6.iniface_mask);
 
 			if (in->invert)
 				r->e6.ipv6.invflags |= IP6T_INV_VIA_IN;
 		}
 
-		if (out && !out->any)
-		{
+		if (out && !out->any) {
 			xtables_parse_interface(out->name, r->e6.ipv6.outiface,
-			                                   r->e6.ipv6.outiface_mask);
+						r->e6.ipv6.outiface_mask);
 
 			if (out->invert)
 				r->e6.ipv6.invflags |= IP6T_INV_VIA_OUT;
 		}
-	}
-	else
+	} else
 #endif
 	{
-		if (in && !in->any)
-		{
+		if (in && !in->any) {
 			xtables_parse_interface(in->name, r->e.ip.iniface,
-			                                  r->e.ip.iniface_mask);
+						r->e.ip.iniface_mask);
 
 			if (in->invert)
 				r->e.ip.invflags |= IPT_INV_VIA_IN;
 		}
 
-		if (out && !out->any)
-		{
+		if (out && !out->any) {
 			xtables_parse_interface(out->name, r->e.ip.outiface,
-			                                   r->e.ip.outiface_mask);
+						r->e.ip.outiface_mask);
 
 			if (out->invert)
 				r->e.ip.invflags |= IPT_INV_VIA_OUT;
@@ -805,39 +747,34 @@ fw3_ipt_rule_in_out(struct fw3_ipt_rule *r,
 	}
 }
 
-
-void
-fw3_ipt_rule_src_dest(struct fw3_ipt_rule *r,
-                      struct fw3_address *src, struct fw3_address *dest)
+void fw3_ipt_rule_src_dest(struct fw3_ipt_rule *r, struct fw3_address *src,
+			   struct fw3_address *dest)
 {
-	if ((src && src->range) || (dest && dest->range))
-	{
+	if ((src && src->range) || (dest && dest->range)) {
 		fw3_ipt_rule_addarg(r, false, "-m", "iprange");
 	}
 
-	if (src && src->set)
-	{
-		if (src->range)
-		{
+	if (src && src->set) {
+		if (src->range) {
 			fw3_ipt_rule_addarg(r, src->invert, "--src-range",
-			                    fw3_address_to_string(src, false, false));
+					    fw3_address_to_string(src, false,
+								  false));
 		}
 #ifndef DISABLE_IPV6
-		else if (r->h->family == FW3_FAMILY_V6)
-		{
+		else if (r->h->family == FW3_FAMILY_V6) {
 			r->e6.ipv6.src = src->address.v6;
 			r->e6.ipv6.smsk = src->mask.v6;
 
 			int i;
 			for (i = 0; i < 4; i++)
-				r->e6.ipv6.src.s6_addr32[i] &= r->e6.ipv6.smsk.s6_addr32[i];
+				r->e6.ipv6.src.s6_addr32[i] &=
+					r->e6.ipv6.smsk.s6_addr32[i];
 
 			if (src->invert)
 				r->e6.ipv6.invflags |= IP6T_INV_SRCIP;
 		}
 #endif
-		else
-		{
+		else {
 			r->e.ip.src = src->address.v4;
 			r->e.ip.smsk = src->mask.v4;
 
@@ -848,29 +785,27 @@ fw3_ipt_rule_src_dest(struct fw3_ipt_rule *r,
 		}
 	}
 
-	if (dest && dest->set)
-	{
-		if (dest->range)
-		{
+	if (dest && dest->set) {
+		if (dest->range) {
 			fw3_ipt_rule_addarg(r, dest->invert, "--dst-range",
-			                    fw3_address_to_string(dest, false, false));
+					    fw3_address_to_string(dest, false,
+								  false));
 		}
 #ifndef DISABLE_IPV6
-		else if (r->h->family == FW3_FAMILY_V6)
-		{
+		else if (r->h->family == FW3_FAMILY_V6) {
 			r->e6.ipv6.dst = dest->address.v6;
 			r->e6.ipv6.dmsk = dest->mask.v6;
 
 			int i;
 			for (i = 0; i < 4; i++)
-				r->e6.ipv6.dst.s6_addr32[i] &= r->e6.ipv6.dmsk.s6_addr32[i];
+				r->e6.ipv6.dst.s6_addr32[i] &=
+					r->e6.ipv6.dmsk.s6_addr32[i];
 
 			if (dest->invert)
 				r->e6.ipv6.invflags |= IP6T_INV_DSTIP;
 		}
 #endif
-		else
-		{
+		else {
 			r->e.ip.dst = dest->address.v4;
 			r->e.ip.dmsk = dest->mask.v4;
 
@@ -882,9 +817,8 @@ fw3_ipt_rule_src_dest(struct fw3_ipt_rule *r,
 	}
 }
 
-void
-fw3_ipt_rule_sport_dport(struct fw3_ipt_rule *r,
-                         struct fw3_port *sp, struct fw3_port *dp)
+void fw3_ipt_rule_sport_dport(struct fw3_ipt_rule *r, struct fw3_port *sp,
+			      struct fw3_port *dp)
 {
 	char buf[sizeof("65535:65535\0")];
 
@@ -894,39 +828,38 @@ fw3_ipt_rule_sport_dport(struct fw3_ipt_rule *r,
 	if (!get_protoname(r))
 		return;
 
-	if (sp && sp->set)
-	{
+	if (sp && sp->set) {
 		if (sp->port_min == sp->port_max)
 			sprintf(buf, "%u", sp->port_min);
 		else
-			snprintf(buf, sizeof(buf), "%u:%u", sp->port_min, sp->port_max);
+			snprintf(buf, sizeof(buf), "%u:%u", sp->port_min,
+				 sp->port_max);
 
 		fw3_ipt_rule_addarg(r, sp->invert, "--sport", buf);
 	}
 
-	if (dp && dp->set)
-	{
+	if (dp && dp->set) {
 		if (dp->port_min == dp->port_max)
 			sprintf(buf, "%u", dp->port_min);
 		else
-			snprintf(buf, sizeof(buf), "%u:%u", dp->port_min, dp->port_max);
+			snprintf(buf, sizeof(buf), "%u:%u", dp->port_min,
+				 dp->port_max);
 
 		fw3_ipt_rule_addarg(r, dp->invert, "--dport", buf);
 	}
 }
 
-void
-fw3_ipt_rule_device(struct fw3_ipt_rule *r, const char *device, bool out)
+void fw3_ipt_rule_device(struct fw3_ipt_rule *r, const char *device, bool out)
 {
 	if (device) {
 		struct fw3_device dev = { .any = false };
 		strncpy(dev.name, device, sizeof(dev.name) - 1);
-		fw3_ipt_rule_in_out(r, (out) ? NULL : &dev, (out) ? &dev : NULL);
+		fw3_ipt_rule_in_out(r, (out) ? NULL : &dev,
+				    (out) ? &dev : NULL);
 	}
 }
 
-void
-fw3_ipt_rule_mac(struct fw3_ipt_rule *r, struct fw3_mac *mac)
+void fw3_ipt_rule_mac(struct fw3_ipt_rule *r, struct fw3_mac *mac)
 {
 	char buf[sizeof("ff:ff:ff:ff:ff:ff\0")];
 	uint8_t *addr = mac->mac.ether_addr_octet;
@@ -934,15 +867,14 @@ fw3_ipt_rule_mac(struct fw3_ipt_rule *r, struct fw3_mac *mac)
 	if (!mac)
 		return;
 
-	sprintf(buf, "%02x:%02x:%02x:%02x:%02x:%02x",
-	        addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]);
+	sprintf(buf, "%02x:%02x:%02x:%02x:%02x:%02x", addr[0], addr[1], addr[2],
+		addr[3], addr[4], addr[5]);
 
 	fw3_ipt_rule_addarg(r, false, "-m", "mac");
 	fw3_ipt_rule_addarg(r, mac->invert, "--mac-source", buf);
 }
 
-void
-fw3_ipt_rule_icmptype(struct fw3_ipt_rule *r, struct fw3_icmptype *icmp)
+void fw3_ipt_rule_icmptype(struct fw3_ipt_rule *r, struct fw3_icmptype *icmp)
 {
 	char buf[sizeof("255/255\0")];
 
@@ -950,29 +882,28 @@ fw3_ipt_rule_icmptype(struct fw3_ipt_rule *r, struct fw3_icmptype *icmp)
 		return;
 
 #ifndef DISABLE_IPV6
-	if (r->h->family == FW3_FAMILY_V6)
-	{
+	if (r->h->family == FW3_FAMILY_V6) {
 		if (icmp->code6_min == 0 && icmp->code6_max == 0xFF)
 			sprintf(buf, "%u", icmp->type6);
 		else
-			snprintf(buf, sizeof(buf), "%u/%u", icmp->type6, icmp->code6_min);
+			snprintf(buf, sizeof(buf), "%u/%u", icmp->type6,
+				 icmp->code6_min);
 
 		fw3_ipt_rule_addarg(r, icmp->invert, "--icmpv6-type", buf);
-	}
-	else
+	} else
 #endif
 	{
 		if (icmp->code_min == 0 && icmp->code_max == 0xFF)
 			sprintf(buf, "%u", icmp->type);
 		else
-			snprintf(buf, sizeof(buf), "%u/%u", icmp->type, icmp->code_min);
+			snprintf(buf, sizeof(buf), "%u/%u", icmp->type,
+				 icmp->code_min);
 
 		fw3_ipt_rule_addarg(r, icmp->invert, "--icmp-type", buf);
 	}
 }
 
-void
-fw3_ipt_rule_limit(struct fw3_ipt_rule *r, struct fw3_limit *limit)
+void fw3_ipt_rule_limit(struct fw3_ipt_rule *r, struct fw3_limit *limit)
 {
 	char buf[sizeof("-4294967296/second\0")];
 
@@ -984,15 +915,13 @@ fw3_ipt_rule_limit(struct fw3_ipt_rule *r, struct fw3_limit *limit)
 	sprintf(buf, "%u/%s", limit->rate, fw3_limit_units[limit->unit]);
 	fw3_ipt_rule_addarg(r, limit->invert, "--limit", buf);
 
-	if (limit->burst > 0)
-	{
+	if (limit->burst > 0) {
 		sprintf(buf, "%u", limit->burst);
 		fw3_ipt_rule_addarg(r, limit->invert, "--limit-burst", buf);
 	}
 }
 
-void
-fw3_ipt_rule_ipset(struct fw3_ipt_rule *r, struct fw3_setmatch *match)
+void fw3_ipt_rule_ipset(struct fw3_ipt_rule *r, struct fw3_setmatch *match)
 {
 	char buf[sizeof("dst,dst,dst\0")];
 	char *p = buf;
@@ -1005,28 +934,28 @@ fw3_ipt_rule_ipset(struct fw3_ipt_rule *r, struct fw3_setmatch *match)
 		return;
 
 	set = match->ptr;
-	list_for_each_entry(type, &set->datatypes, list)
-	{
+	list_for_each_entry (type, &set->datatypes, list) {
 		if (i >= 3)
 			break;
 
 		if (p > buf)
 			*p++ = ',';
 
-		p += sprintf(p, "%s", match->dir[i] ? match->dir[i] : type->dir);
+		p += sprintf(p, "%s",
+			     match->dir[i] ? match->dir[i] : type->dir);
 		i++;
 	}
 
 	fw3_ipt_rule_addarg(r, false, "-m", "set");
 
 	fw3_ipt_rule_addarg(r, match->invert, "--match-set",
-	                    set->external ? set->external : set->name);
+			    set->external ? set->external : set->name);
 
 	fw3_ipt_rule_addarg(r, false, buf, NULL);
 }
 
-void
-fw3_ipt_rule_helper(struct fw3_ipt_rule *r, struct fw3_cthelpermatch *match)
+void fw3_ipt_rule_helper(struct fw3_ipt_rule *r,
+			 struct fw3_cthelpermatch *match)
 {
 	if (!match || !match->set || !match->ptr)
 		return;
@@ -1035,8 +964,7 @@ fw3_ipt_rule_helper(struct fw3_ipt_rule *r, struct fw3_cthelpermatch *match)
 	fw3_ipt_rule_addarg(r, match->invert, "--helper", match->ptr->name);
 }
 
-void
-fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
+void fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
 {
 	int i;
 	struct tm empty = { 0 };
@@ -1048,8 +976,7 @@ fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
 	bool d2 = memcmp(&time->datestop, &empty, sizeof(empty));
 
 	if (!d1 && !d2 && !time->timestart && !time->timestop &&
-	    !(time->monthdays & 0xFFFFFFFE) && !(time->weekdays & 0xFE))
-	{
+	    !(time->monthdays & 0xFFFFFFFE) && !(time->weekdays & 0xFE)) {
 		return;
 	}
 
@@ -1058,44 +985,35 @@ fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
 	if (!time->utc)
 		fw3_ipt_rule_addarg(r, false, "--kerneltz", NULL);
 
-	if (d1)
-	{
-		strftime(buf, sizeof(buf), "%Y-%m-%dT%H:%M:%S", &time->datestart);
+	if (d1) {
+		strftime(buf, sizeof(buf), "%Y-%m-%dT%H:%M:%S",
+			 &time->datestart);
 		fw3_ipt_rule_addarg(r, false, "--datestart", buf);
 	}
 
-	if (d2)
-	{
-		strftime(buf, sizeof(buf), "%Y-%m-%dT%H:%M:%S", &time->datestop);
+	if (d2) {
+		strftime(buf, sizeof(buf), "%Y-%m-%dT%H:%M:%S",
+			 &time->datestop);
 		fw3_ipt_rule_addarg(r, false, "--datestop", buf);
 	}
 
-	if (time->timestart)
-	{
-		sprintf(buf, "%02d:%02d:%02d",
-		        time->timestart / 3600,
-		        time->timestart % 3600 / 60,
-		        time->timestart % 60);
+	if (time->timestart) {
+		sprintf(buf, "%02d:%02d:%02d", time->timestart / 3600,
+			time->timestart % 3600 / 60, time->timestart % 60);
 
 		fw3_ipt_rule_addarg(r, false, "--timestart", buf);
 	}
 
-	if (time->timestop)
-	{
-		sprintf(buf, "%02d:%02d:%02d",
-		        time->timestop / 3600,
-		        time->timestop % 3600 / 60,
-		        time->timestop % 60);
+	if (time->timestop) {
+		sprintf(buf, "%02d:%02d:%02d", time->timestop / 3600,
+			time->timestop % 3600 / 60, time->timestop % 60);
 
 		fw3_ipt_rule_addarg(r, false, "--timestop", buf);
 	}
 
-	if (time->monthdays & 0xFFFFFFFE)
-	{
-		for (i = 1, p = buf; i < 32; i++)
-		{
-			if (fw3_hasbit(time->monthdays, i))
-			{
+	if (time->monthdays & 0xFFFFFFFE) {
+		for (i = 1, p = buf; i < 32; i++) {
+			if (fw3_hasbit(time->monthdays, i)) {
 				if (p > buf)
 					*p++ = ',';
 
@@ -1103,15 +1021,13 @@ fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
 			}
 		}
 
-		fw3_ipt_rule_addarg(r, fw3_hasbit(time->monthdays, 0), "--monthdays", buf);
+		fw3_ipt_rule_addarg(r, fw3_hasbit(time->monthdays, 0),
+				    "--monthdays", buf);
 	}
 
-	if (time->weekdays & 0xFE)
-	{
-		for (i = 1, p = buf; i < 8; i++)
-		{
-			if (fw3_hasbit(time->weekdays, i))
-			{
+	if (time->weekdays & 0xFE) {
+		for (i = 1, p = buf; i < 8; i++) {
+			if (fw3_hasbit(time->weekdays, i)) {
 				if (p > buf)
 					*p++ = ',';
 
@@ -1119,12 +1035,12 @@ fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
 			}
 		}
 
-		fw3_ipt_rule_addarg(r, fw3_hasbit(time->weekdays, 0), "--weekdays", buf);
+		fw3_ipt_rule_addarg(r, fw3_hasbit(time->weekdays, 0),
+				    "--weekdays", buf);
 	}
 }
 
-void
-fw3_ipt_rule_mark(struct fw3_ipt_rule *r, struct fw3_mark *mark)
+void fw3_ipt_rule_mark(struct fw3_ipt_rule *r, struct fw3_mark *mark)
 {
 	char buf[sizeof("0xFFFFFFFF/0xFFFFFFFF\0")];
 
@@ -1140,8 +1056,7 @@ fw3_ipt_rule_mark(struct fw3_ipt_rule *r, struct fw3_mark *mark)
 	fw3_ipt_rule_addarg(r, mark->invert, "--mark", buf);
 }
 
-void
-fw3_ipt_rule_dscp(struct fw3_ipt_rule *r, struct fw3_dscp *dscp)
+void fw3_ipt_rule_dscp(struct fw3_ipt_rule *r, struct fw3_dscp *dscp)
 {
 	char buf[sizeof("0xFF\0")];
 
@@ -1154,8 +1069,7 @@ fw3_ipt_rule_dscp(struct fw3_ipt_rule *r, struct fw3_dscp *dscp)
 	fw3_ipt_rule_addarg(r, dscp->invert, "--dscp", buf);
 }
 
-void
-fw3_ipt_rule_comment(struct fw3_ipt_rule *r, const char *fmt, ...)
+void fw3_ipt_rule_comment(struct fw3_ipt_rule *r, const char *fmt, ...)
 {
 	va_list ap;
 	char buf[256];
@@ -1171,8 +1085,7 @@ fw3_ipt_rule_comment(struct fw3_ipt_rule *r, const char *fmt, ...)
 	fw3_ipt_rule_addarg(r, false, "--comment", buf);
 }
 
-void
-fw3_ipt_rule_extra(struct fw3_ipt_rule *r, const char *extra)
+void fw3_ipt_rule_extra(struct fw3_ipt_rule *r, const char *extra)
 {
 	char *p, **tmp, *s;
 
@@ -1181,8 +1094,7 @@ fw3_ipt_rule_extra(struct fw3_ipt_rule *r, const char *extra)
 
 	s = fw3_strdup(extra);
 
-	for (p = strtok(s, " \t"); p; p = strtok(NULL, " \t"))
-	{
+	for (p = strtok(s, " \t"); p; p = strtok(NULL, " \t")) {
 		tmp = realloc(r->argv, (r->argc + 1) * sizeof(*r->argv));
 
 		if (!tmp)
@@ -1196,14 +1108,12 @@ fw3_ipt_rule_extra(struct fw3_ipt_rule *r, const char *extra)
 }
 
 #ifndef DISABLE_IPV6
-static void
-rule_print6(struct ip6t_entry *e)
+static void rule_print6(struct ip6t_entry *e)
 {
 	char buf1[INET6_ADDRSTRLEN], buf2[INET6_ADDRSTRLEN];
 	char *pname;
 
-	if (e->ipv6.flags & IP6T_F_PROTO)
-	{
+	if (e->ipv6.flags & IP6T_F_PROTO) {
 		if (e->ipv6.invflags & XT_INV_PROTO)
 			printf(" !");
 
@@ -1215,24 +1125,21 @@ rule_print6(struct ip6t_entry *e)
 			printf(" -p %u", e->ipv6.proto);
 	}
 
-	if (e->ipv6.iniface[0])
-	{
+	if (e->ipv6.iniface[0]) {
 		if (e->ipv6.invflags & IP6T_INV_VIA_IN)
 			printf(" !");
 
 		printf(" -i %s", e->ipv6.iniface);
 	}
 
-	if (e->ipv6.outiface[0])
-	{
+	if (e->ipv6.outiface[0]) {
 		if (e->ipv6.invflags & IP6T_INV_VIA_OUT)
 			printf(" !");
 
 		printf(" -o %s", e->ipv6.outiface);
 	}
 
-	if (memcmp(&e->ipv6.src, &in6addr_any, sizeof(struct in6_addr)))
-	{
+	if (memcmp(&e->ipv6.src, &in6addr_any, sizeof(struct in6_addr))) {
 		if (e->ipv6.invflags & IP6T_INV_SRCIP)
 			printf(" !");
 
@@ -1241,8 +1148,7 @@ rule_print6(struct ip6t_entry *e)
 		       inet_ntop(AF_INET6, &e->ipv6.smsk, buf2, sizeof(buf2)));
 	}
 
-	if (memcmp(&e->ipv6.dst, &in6addr_any, sizeof(struct in6_addr)))
-	{
+	if (memcmp(&e->ipv6.dst, &in6addr_any, sizeof(struct in6_addr))) {
 		if (e->ipv6.invflags & IP6T_INV_DSTIP)
 			printf(" !");
 
@@ -1253,15 +1159,14 @@ rule_print6(struct ip6t_entry *e)
 }
 #endif
 
-static void
-rule_print4(struct ipt_entry *e)
+static void rule_print4(struct ipt_entry *e)
 {
 	struct in_addr in_zero = { 0 };
-	char buf1[sizeof("255.255.255.255\0")], buf2[sizeof("255.255.255.255\0")];
+	char buf1[sizeof("255.255.255.255\0")],
+		buf2[sizeof("255.255.255.255\0")];
 	char *pname;
 
-	if (e->ip.proto)
-	{
+	if (e->ip.proto) {
 		if (e->ip.invflags & XT_INV_PROTO)
 			printf(" !");
 
@@ -1273,24 +1178,21 @@ rule_print4(struct ipt_entry *e)
 			printf(" -p %u", e->ip.proto);
 	}
 
-	if (e->ip.iniface[0])
-	{
+	if (e->ip.iniface[0]) {
 		if (e->ip.invflags & IPT_INV_VIA_IN)
 			printf(" !");
 
 		printf(" -i %s", e->ip.iniface);
 	}
 
-	if (e->ip.outiface[0])
-	{
+	if (e->ip.outiface[0]) {
 		if (e->ip.invflags & IPT_INV_VIA_OUT)
 			printf(" !");
 
 		printf(" -o %s", e->ip.outiface);
 	}
 
-	if (memcmp(&e->ip.src, &in_zero, sizeof(struct in_addr)))
-	{
+	if (memcmp(&e->ip.src, &in_zero, sizeof(struct in_addr))) {
 		if (e->ip.invflags & IPT_INV_SRCIP)
 			printf(" !");
 
@@ -1299,8 +1201,7 @@ rule_print4(struct ipt_entry *e)
 		       inet_ntop(AF_INET, &e->ip.smsk, buf2, sizeof(buf2)));
 	}
 
-	if (memcmp(&e->ip.dst, &in_zero, sizeof(struct in_addr)))
-	{
+	if (memcmp(&e->ip.dst, &in_zero, sizeof(struct in_addr))) {
 		if (e->ip.invflags & IPT_INV_DSTIP)
 			printf(" !");
 
@@ -1310,8 +1211,8 @@ rule_print4(struct ipt_entry *e)
 	}
 }
 
-static void
-rule_print(struct fw3_ipt_rule *r, const char *prefix, const char *chain)
+static void rule_print(struct fw3_ipt_rule *r, const char *prefix,
+		       const char *chain)
 {
 	debug(r->h, "%s %s", prefix, chain);
 
@@ -1328,31 +1229,28 @@ rule_print(struct fw3_ipt_rule *r, const char *prefix, const char *chain)
 	printf("\n");
 }
 
-static bool
-parse_option(struct fw3_ipt_rule *r, int optc, bool inv)
+static bool parse_option(struct fw3_ipt_rule *r, int optc, bool inv)
 {
 	struct xtables_rule_match *m;
 	struct xtables_match *em;
 
 	/* is a target option */
 	if (r->target && fw3_xt_has_target_parse(r->target) &&
-		optc >= r->target->option_offset &&
-		optc < (r->target->option_offset + 256))
-	{
+	    optc >= r->target->option_offset &&
+	    optc < (r->target->option_offset + 256)) {
 		xtables_option_tpcall(optc, r->argv, inv, r->target, &r->e);
 		return false;
 	}
 
 	/* try to dispatch argument to one of the match parsers */
-	for (m = r->matches; m; m = m->next)
-	{
+	for (m = r->matches; m; m = m->next) {
 		em = m->match;
 
 		if (m->completed || !fw3_xt_has_match_parse(em))
 			continue;
 
 		if (optc < em->option_offset ||
-			optc >= (em->option_offset + 256))
+		    optc >= (em->option_offset + 256))
 			continue;
 
 		xtables_option_mpcall(optc, r->argv, inv, em, &r->e);
@@ -1360,8 +1258,7 @@ parse_option(struct fw3_ipt_rule *r, int optc, bool inv)
 	}
 
 	/* unhandled option, might belong to a protocol match */
-	if ((em = load_protomatch(r)) != NULL)
-	{
+	if ((em = load_protomatch(r)) != NULL) {
 		init_match(r, em, false);
 
 		r->protocol_loaded = true;
@@ -1371,17 +1268,18 @@ parse_option(struct fw3_ipt_rule *r, int optc, bool inv)
 	}
 
 	if (optc == ':')
-		warn("parse_option(): option '%s' needs argument", r->argv[optind-1]);
+		warn("parse_option(): option '%s' needs argument",
+		     r->argv[optind - 1]);
 
 	if (optc == '?')
-		warn("parse_option(): unknown option '%s'", r->argv[optind-1]);
+		warn("parse_option(): unknown option '%s'",
+		     r->argv[optind - 1]);
 
 	return false;
 }
 
-void
-fw3_ipt_rule_addarg(struct fw3_ipt_rule *r, bool inv,
-                    const char *k, const char *v)
+void fw3_ipt_rule_addarg(struct fw3_ipt_rule *r, bool inv, const char *k,
+			 const char *v)
 {
 	int n;
 	char **tmp;
@@ -1406,8 +1304,7 @@ fw3_ipt_rule_addarg(struct fw3_ipt_rule *r, bool inv,
 		r->argv[r->argc++] = fw3_strdup(v);
 }
 
-static unsigned char *
-rule_mask(struct fw3_ipt_rule *r)
+static unsigned char *rule_mask(struct fw3_ipt_rule *r)
 {
 	size_t s;
 	unsigned char *p, *mask = NULL;
@@ -1416,8 +1313,7 @@ rule_mask(struct fw3_ipt_rule *r)
 #define SZ(x) XT_ALIGN(sizeof(struct x))
 
 #ifndef DISABLE_IPV6
-	if (r->h->family == FW3_FAMILY_V6)
-	{
+	if (r->h->family == FW3_FAMILY_V6) {
 		s = SZ(ip6t_entry);
 
 		for (m = r->matches; m; m = m->next)
@@ -1431,15 +1327,16 @@ rule_mask(struct fw3_ipt_rule *r)
 		memset(mask, 0xFF, SZ(ip6t_entry));
 		p = mask + SZ(ip6t_entry);
 
-		for (m = r->matches; m; m = m->next)
-		{
-			memset(p, 0xFF, SZ(ip6t_entry_match) + m->match->userspacesize);
+		for (m = r->matches; m; m = m->next) {
+			memset(p, 0xFF,
+			       SZ(ip6t_entry_match) + m->match->userspacesize);
 			p += SZ(ip6t_entry_match) + m->match->size;
 		}
 
-		memset(p, 0xFF, SZ(ip6t_entry_target) + (r->target ? r->target->userspacesize : 0));
-	}
-	else
+		memset(p, 0xFF,
+		       SZ(ip6t_entry_target) +
+			       (r->target ? r->target->userspacesize : 0));
+	} else
 #endif
 	{
 		s = SZ(ipt_entry);
@@ -1455,27 +1352,27 @@ rule_mask(struct fw3_ipt_rule *r)
 		memset(mask, 0xFF, SZ(ipt_entry));
 		p = mask + SZ(ipt_entry);
 
-		for (m = r->matches; m; m = m->next)
-		{
-			memset(p, 0xFF, SZ(ipt_entry_match) + m->match->userspacesize);
+		for (m = r->matches; m; m = m->next) {
+			memset(p, 0xFF,
+			       SZ(ipt_entry_match) + m->match->userspacesize);
 			p += SZ(ipt_entry_match) + m->match->size;
 		}
 
-		memset(p, 0xFF, SZ(ipt_entry_target) + (r->target ? r->target->userspacesize : 0));
+		memset(p, 0xFF,
+		       SZ(ipt_entry_target) +
+			       (r->target ? r->target->userspacesize : 0));
 	}
 
 	return mask;
 }
 
-static void *
-rule_build(struct fw3_ipt_rule *r)
+static void *rule_build(struct fw3_ipt_rule *r)
 {
 	size_t s, target_size = (r->target) ? r->target->t->u.target_size : 0;
 	struct xtables_rule_match *m;
 
 #ifndef DISABLE_IPV6
-	if (r->h->family == FW3_FAMILY_V6)
-	{
+	if (r->h->family == FW3_FAMILY_V6) {
 		struct ip6t_entry *e6;
 
 		s = XT_ALIGN(sizeof(struct ip6t_entry));
@@ -1492,9 +1389,9 @@ rule_build(struct fw3_ipt_rule *r)
 
 		s = 0;
 
-		for (m = r->matches; m; m = m->next)
-		{
-			memcpy(e6->elems + s, m->match->m, m->match->m->u.match_size);
+		for (m = r->matches; m; m = m->next) {
+			memcpy(e6->elems + s, m->match->m,
+			       m->match->m->u.match_size);
 			s += m->match->m->u.match_size;
 		}
 
@@ -1502,8 +1399,7 @@ rule_build(struct fw3_ipt_rule *r)
 			memcpy(e6->elems + s, r->target->t, target_size);
 
 		return e6;
-	}
-	else
+	} else
 #endif
 	{
 		struct ipt_entry *e;
@@ -1522,9 +1418,9 @@ rule_build(struct fw3_ipt_rule *r)
 
 		s = 0;
 
-		for (m = r->matches; m; m = m->next)
-		{
-			memcpy(e->elems + s, m->match->m, m->match->m->u.match_size);
+		for (m = r->matches; m; m = m->next) {
+			memcpy(e->elems + s, m->match->m,
+			       m->match->m->u.match_size);
 			s += m->match->m->u.match_size;
 		}
 
@@ -1535,8 +1431,7 @@ rule_build(struct fw3_ipt_rule *r)
 	}
 }
 
-static void
-set_rule_tag(struct fw3_ipt_rule *r)
+static void set_rule_tag(struct fw3_ipt_rule *r)
 {
 	int i;
 	char *p, **tmp;
@@ -1544,8 +1439,7 @@ set_rule_tag(struct fw3_ipt_rule *r)
 
 	for (i = 0; i < r->argc; i++)
 		if (!strcmp(r->argv[i], "--comment") && (i + 1) < r->argc)
-			if (asprintf(&p, "%s: %s", tag, r->argv[i + 1]) > 0)
-			{
+			if (asprintf(&p, "%s: %s", tag, r->argv[i + 1]) > 0) {
 				free(r->argv[i + 1]);
 				r->argv[i + 1] = p;
 				return;
@@ -1553,8 +1447,7 @@ set_rule_tag(struct fw3_ipt_rule *r)
 
 	tmp = realloc(r->argv, (r->argc + 4) * sizeof(*r->argv));
 
-	if (tmp)
-	{
+	if (tmp) {
 		r->argv = tmp;
 		r->argv[r->argc++] = fw3_strdup("-m");
 		r->argv[r->argc++] = fw3_strdup("comment");
@@ -1563,8 +1456,8 @@ set_rule_tag(struct fw3_ipt_rule *r)
 	}
 }
 
-void
-__fw3_ipt_rule_append(struct fw3_ipt_rule *r, bool repl, const char *fmt, ...)
+void __fw3_ipt_rule_append(struct fw3_ipt_rule *r, bool repl, const char *fmt,
+			   ...)
 {
 	void *rule;
 	unsigned char *mask;
@@ -1596,25 +1489,23 @@ __fw3_ipt_rule_append(struct fw3_ipt_rule *r, bool repl, const char *fmt, ...)
 
 	status = setjmp(fw3_ipt_error_jmp);
 
-	if (status > 0)
-	{
-		info("     ! Skipping due to previous exception (code %u)", status);
+	if (status > 0) {
+		info("     ! Skipping due to previous exception (code %u)",
+		     status);
 		goto free;
 	}
 
 	set_rule_tag(r);
 
 	while ((optc = getopt_long(r->argc, r->argv, "-:m:j:i:o:s:d:", g->opts,
-	                           NULL)) != -1)
-	{
-		switch (optc)
-		{
+				   NULL)) != -1) {
+		switch (optc) {
 		case 'm':
 			em = find_match(r, optarg);
 
-			if (!em)
-			{
-				warn("fw3_ipt_rule_append(): Can't find match '%s'", optarg);
+			if (!em) {
+				warn("fw3_ipt_rule_append(): Can't find match '%s'",
+				     optarg);
 				goto free;
 			}
 
@@ -1624,9 +1515,9 @@ __fw3_ipt_rule_append(struct fw3_ipt_rule *r, bool repl, const char *fmt, ...)
 		case 'j':
 			et = get_target(r, optarg);
 
-			if (!et)
-			{
-				warn("fw3_ipt_rule_append(): Can't find target '%s'", optarg);
+			if (!et) {
+				warn("fw3_ipt_rule_append(): Can't find target '%s'",
+				     optarg);
 				goto free;
 			}
 
@@ -1634,41 +1525,41 @@ __fw3_ipt_rule_append(struct fw3_ipt_rule *r, bool repl, const char *fmt, ...)
 
 		case 'i':
 		case 'o':
-			if (!fw3_parse_device(&dev, optarg, false) ||
-			    dev.any || dev.invert || *dev.network)
-			{
-				warn("fw3_ipt_rule_append(): Bad argument '%s'", optarg);
+			if (!fw3_parse_device(&dev, optarg, false) || dev.any ||
+			    dev.invert || *dev.network) {
+				warn("fw3_ipt_rule_append(): Bad argument '%s'",
+				     optarg);
 				goto free;
 			}
 
 			dev.invert = inv;
 			fw3_ipt_rule_in_out(r, (optc == 'i') ? &dev : NULL,
-			                       (optc == 'o') ? &dev : NULL);
+					    (optc == 'o') ? &dev : NULL);
 			break;
 
 		case 's':
 		case 'd':
 			if (!fw3_parse_address(&addr, optarg, false) ||
-			    addr.range || addr.invert)
-			{
-				warn("fw3_ipt_rule_append(): Bad argument '%s'", optarg);
+			    addr.range || addr.invert) {
+				warn("fw3_ipt_rule_append(): Bad argument '%s'",
+				     optarg);
 				goto free;
 			}
 
 			addr.invert = inv;
 			fw3_ipt_rule_src_dest(r, (optc == 's') ? &addr : NULL,
-			                         (optc == 'd') ? &addr : NULL);
+					      (optc == 'd') ? &addr : NULL);
 			break;
 
 		case 1:
-			if ((optarg[0] == '!') && (optarg[1] == '\0'))
-			{
+			if ((optarg[0] == '!') && (optarg[1] == '\0')) {
 				optarg[0] = '\0';
 				inv = true;
 				continue;
 			}
 
-			warn("fw3_ipt_rule_append(): Bad argument '%s'", optarg);
+			warn("fw3_ipt_rule_append(): Bad argument '%s'",
+			     optarg);
 			goto free;
 
 		default:
@@ -1689,13 +1580,12 @@ __fw3_ipt_rule_append(struct fw3_ipt_rule *r, bool repl, const char *fmt, ...)
 	rule = rule_build(r);
 
 #ifndef DISABLE_IPV6
-	if (r->h->family == FW3_FAMILY_V6)
-	{
-		if (repl)
-		{
+	if (r->h->family == FW3_FAMILY_V6) {
+		if (repl) {
 			mask = rule_mask(r);
 
-			while (ip6tc_delete_entry(buf, rule, mask, r->h->handle))
+			while (ip6tc_delete_entry(buf, rule, mask,
+						  r->h->handle))
 				if (fw3_pr_debug)
 					rule_print(r, "-D", buf);
 
@@ -1707,12 +1597,10 @@ __fw3_ipt_rule_append(struct fw3_ipt_rule *r, bool repl, const char *fmt, ...)
 
 		if (!ip6tc_append_entry(buf, rule, r->h->handle))
 			warn("ip6tc_append_entry(): %s", ip6tc_strerror(errno));
-	}
-	else
+	} else
 #endif
 	{
-		if (repl)
-		{
+		if (repl) {
 			mask = rule_mask(r);
 
 			while (iptc_delete_entry(buf, rule, mask, r->h->handle))
@@ -1748,8 +1636,7 @@ free:
 	for (em = xtables_matches; em; em = em->next)
 		em->mflags = 0;
 
-	for (et = xtables_targets; et; et = et->next)
-	{
+	for (et = xtables_targets; et; et = et->next) {
 		et->tflags = 0;
 		et->used = 0;
 	}
@@ -1759,8 +1646,8 @@ free:
 
 struct fw3_ipt_rule *
 fw3_ipt_rule_create(struct fw3_ipt_handle *handle, struct fw3_protocol *proto,
-                    struct fw3_device *in, struct fw3_device *out,
-                    struct fw3_address *src, struct fw3_address *dest)
+		    struct fw3_device *in, struct fw3_device *out,
+		    struct fw3_address *src, struct fw3_address *dest)
 {
 	struct fw3_ipt_rule *r;
 
@@ -1773,22 +1660,21 @@ fw3_ipt_rule_create(struct fw3_ipt_handle *handle, struct fw3_protocol *proto,
 	return r;
 }
 
-void
-xtables_register_match(struct xtables_match *me)
+void xtables_register_match(struct xtables_match *me)
 {
 	int i;
 	static struct xtables_match **tmp;
 
 	if (!xext.register_match)
-		xext.register_match = dlsym(RTLD_NEXT, "xtables_register_match");
+		xext.register_match =
+			dlsym(RTLD_NEXT, "xtables_register_match");
 
 	if (!xext.register_match)
 		return;
 
 	xext.register_match(me);
 
-	if (xext.retain)
-	{
+	if (xext.retain) {
 		for (i = 0; i < xext.mcount; i++)
 			if (xext.matches[i] == me)
 				return;
@@ -1803,22 +1689,21 @@ xtables_register_match(struct xtables_match *me)
 	}
 }
 
-void
-xtables_register_target(struct xtables_target *me)
+void xtables_register_target(struct xtables_target *me)
 {
 	int i;
 	static struct xtables_target **tmp;
 
 	if (!xext.register_target)
-		xext.register_target = dlsym(RTLD_NEXT, "xtables_register_target");
+		xext.register_target =
+			dlsym(RTLD_NEXT, "xtables_register_target");
 
 	if (!xext.register_target)
 		return;
 
 	xext.register_target(me);
 
-	if (xext.retain)
-	{
+	if (xext.retain) {
 		for (i = 0; i < xext.tcount; i++)
 			if (xext.targets[i] == me)
 				return;
diff --git a/iptables.h b/iptables.h
index fb4a899..132b18f 100644
--- a/iptables.h
+++ b/iptables.h
@@ -25,9 +25,15 @@ extern void init_extensions(void);
 extern void init_extensions4(void);
 extern void init_extensions6(void);
 #else
-static inline void init_extensions(void) { }
-static inline void init_extensions4(void) { }
-static inline void init_extensions6(void) { }
+static inline void init_extensions(void)
+{
+}
+static inline void init_extensions4(void)
+{
+}
+static inline void init_extensions6(void)
+{
+}
 #endif
 
 /* Required by certain extensions like SNAT and DNAT */
@@ -43,11 +49,10 @@ struct fw3_ipt_handle {
 struct fw3_ipt_rule;
 
 struct fw3_ipt_handle *fw3_ipt_open(enum fw3_family family,
-                                    enum fw3_table table);
+				    enum fw3_table table);
 
 void fw3_ipt_set_policy(struct fw3_ipt_handle *h, const char *chain,
-                        enum fw3_flag policy);
-
+			enum fw3_flag policy);
 
 void fw3_ipt_flush_chain(struct fw3_ipt_handle *h, const char *chain);
 void fw3_ipt_delete_chain(struct fw3_ipt_handle *h, const char *chain);
@@ -68,14 +73,14 @@ struct fw3_ipt_rule *fw3_ipt_rule_new(struct fw3_ipt_handle *h);
 
 void fw3_ipt_rule_proto(struct fw3_ipt_rule *r, struct fw3_protocol *proto);
 
-void fw3_ipt_rule_in_out(struct fw3_ipt_rule *r,
-                         struct fw3_device *in, struct fw3_device *out);
+void fw3_ipt_rule_in_out(struct fw3_ipt_rule *r, struct fw3_device *in,
+			 struct fw3_device *out);
 
-void fw3_ipt_rule_src_dest(struct fw3_ipt_rule *r,
-                           struct fw3_address *src, struct fw3_address *dest);
+void fw3_ipt_rule_src_dest(struct fw3_ipt_rule *r, struct fw3_address *src,
+			   struct fw3_address *dest);
 
-void fw3_ipt_rule_sport_dport(struct fw3_ipt_rule *r,
-                              struct fw3_port *sp, struct fw3_port *dp);
+void fw3_ipt_rule_sport_dport(struct fw3_ipt_rule *r, struct fw3_port *sp,
+			      struct fw3_port *dp);
 
 void fw3_ipt_rule_device(struct fw3_ipt_rule *r, const char *device, bool out);
 
@@ -87,7 +92,8 @@ void fw3_ipt_rule_limit(struct fw3_ipt_rule *r, struct fw3_limit *limit);
 
 void fw3_ipt_rule_ipset(struct fw3_ipt_rule *r, struct fw3_setmatch *match);
 
-void fw3_ipt_rule_helper(struct fw3_ipt_rule *r, struct fw3_cthelpermatch *match);
+void fw3_ipt_rule_helper(struct fw3_ipt_rule *r,
+			 struct fw3_cthelpermatch *match);
 
 void fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time);
 
@@ -99,27 +105,25 @@ void fw3_ipt_rule_comment(struct fw3_ipt_rule *r, const char *fmt, ...);
 
 void fw3_ipt_rule_extra(struct fw3_ipt_rule *r, const char *extra);
 
-void fw3_ipt_rule_addarg(struct fw3_ipt_rule *r, bool inv,
-                         const char *k, const char *v);
+void fw3_ipt_rule_addarg(struct fw3_ipt_rule *r, bool inv, const char *k,
+			 const char *v);
 
-struct fw3_ipt_rule * fw3_ipt_rule_create(struct fw3_ipt_handle *handle,
-                                          struct fw3_protocol *proto,
-                                          struct fw3_device *in,
-                                          struct fw3_device *out,
-                                          struct fw3_address *src,
-                                          struct fw3_address *dest);
+struct fw3_ipt_rule *
+fw3_ipt_rule_create(struct fw3_ipt_handle *handle, struct fw3_protocol *proto,
+		    struct fw3_device *in, struct fw3_device *out,
+		    struct fw3_address *src, struct fw3_address *dest);
 
-void __fw3_ipt_rule_append(struct fw3_ipt_rule *r, bool repl,
-                           const char *fmt, ...);
+void __fw3_ipt_rule_append(struct fw3_ipt_rule *r, bool repl, const char *fmt,
+			   ...);
 
-#define fw3_ipt_rule_append(rule, ...) \
+#define fw3_ipt_rule_append(rule, ...)                                         \
 	__fw3_ipt_rule_append(rule, false, __VA_ARGS__)
 
-#define fw3_ipt_rule_replace(rule, ...) \
+#define fw3_ipt_rule_replace(rule, ...)                                        \
 	__fw3_ipt_rule_append(rule, true, __VA_ARGS__)
 
-static inline void
-fw3_ipt_rule_target(struct fw3_ipt_rule *r, const char *fmt, ...)
+static inline void fw3_ipt_rule_target(struct fw3_ipt_rule *r, const char *fmt,
+				       ...)
 {
 	va_list ap;
 	char buf[32];
diff --git a/main.c b/main.c
index 1410fef..e343b66 100644
--- a/main.c
+++ b/main.c
@@ -32,15 +32,12 @@
 #include "iptables.h"
 #include "helpers.h"
 
-
 static enum fw3_family print_family = FW3_FAMILY_ANY;
 
 static struct fw3_state *run_state = NULL;
 static struct fw3_state *cfg_state = NULL;
 
-
-static bool
-build_state(bool runtime)
+static bool build_state(bool runtime)
 {
 	struct fw3_state *state = NULL;
 	struct uci_package *p = NULL;
@@ -55,18 +52,15 @@ build_state(bool runtime)
 	if (!state->uci)
 		error("Out of memory");
 
-	if (runtime)
-	{
+	if (runtime) {
 		sf = fopen(FW3_STATEFILE, "r");
 
-		if (sf)
-		{
+		if (sf) {
 			uci_import(state->uci, sf, "fw3_state", &p, true);
 			fclose(sf);
 		}
 
-		if (!p)
-		{
+		if (!p) {
 			uci_free_context(state->uci);
 			free(state);
 
@@ -76,20 +70,16 @@ build_state(bool runtime)
 		state->statefile = true;
 
 		run_state = state;
-	}
-	else
-	{
+	} else {
 		if (!fw3_ubus_connect())
 			warn("Failed to connect to ubus");
 
-		if (uci_load(state->uci, "firewall", &p))
-		{
+		if (uci_load(state->uci, "firewall", &p)) {
 			uci_perror(state->uci, NULL);
 			error("Failed to load /etc/config/firewall");
 		}
 
-		if (!fw3_find_command("ipset"))
-		{
+		if (!fw3_find_command("ipset")) {
 			warn("Unable to locate ipset utility, disabling ipset support");
 			state->disable_ipsets = true;
 		}
@@ -97,8 +87,7 @@ build_state(bool runtime)
 		cfg_state = state;
 	}
 
-
-	struct blob_buf b = {NULL, NULL, 0, NULL};
+	struct blob_buf b = { NULL, NULL, 0, NULL };
 	fw3_ubus_rules(&b);
 
 	fw3_load_defaults(state, p);
@@ -114,33 +103,32 @@ build_state(bool runtime)
 	return true;
 }
 
-static void
-free_state(struct fw3_state *state)
+static void free_state(struct fw3_state *state)
 {
 	struct list_head *cur, *tmp;
 
-	list_for_each_safe(cur, tmp, &state->zones)
+	list_for_each_safe (cur, tmp, &state->zones)
 		fw3_free_zone((struct fw3_zone *)cur);
 
-	list_for_each_safe(cur, tmp, &state->rules)
+	list_for_each_safe (cur, tmp, &state->rules)
 		fw3_free_rule((struct fw3_rule *)cur);
 
-	list_for_each_safe(cur, tmp, &state->redirects)
+	list_for_each_safe (cur, tmp, &state->redirects)
 		fw3_free_redirect((struct fw3_redirect *)cur);
 
-	list_for_each_safe(cur, tmp, &state->snats)
+	list_for_each_safe (cur, tmp, &state->snats)
 		fw3_free_snat((struct fw3_snat *)cur);
 
-	list_for_each_safe(cur, tmp, &state->forwards)
+	list_for_each_safe (cur, tmp, &state->forwards)
 		fw3_free_forward((struct fw3_forward *)cur);
 
-	list_for_each_safe(cur, tmp, &state->ipsets)
+	list_for_each_safe (cur, tmp, &state->ipsets)
 		fw3_free_ipset((struct fw3_ipset *)cur);
 
-	list_for_each_safe(cur, tmp, &state->includes)
+	list_for_each_safe (cur, tmp, &state->includes)
 		fw3_free_include((struct fw3_include *)cur);
 
-	list_for_each_safe(cur, tmp, &state->cthelpers)
+	list_for_each_safe (cur, tmp, &state->cthelpers)
 		fw3_free_cthelper((struct fw3_cthelper *)cur);
 
 	uci_free_context(state->uci);
@@ -150,15 +138,13 @@ free_state(struct fw3_state *state)
 	fw3_ubus_disconnect();
 }
 
-
-static bool
-family_running(enum fw3_family family)
+static bool family_running(enum fw3_family family)
 {
 	return (run_state && has(run_state->defaults.flags, family, family));
 }
 
-static void
-family_set(struct fw3_state *state, enum fw3_family family, bool set)
+static void family_set(struct fw3_state *state, enum fw3_family family,
+		       bool set)
 {
 	if (!state)
 		return;
@@ -169,18 +155,16 @@ family_set(struct fw3_state *state, enum fw3_family family, bool set)
 		del(state->defaults.flags, family, family);
 }
 
-static int
-stop(bool complete)
+static int stop(bool complete)
 {
 	int rv = 1;
 	enum fw3_family family;
 	enum fw3_table table;
 	struct fw3_ipt_handle *handle;
 
-	if (!complete && !run_state)
-	{
+	if (!complete && !run_state) {
 		warn("The firewall appears to be stopped. "
-			 "Use the 'flush' command to forcefully purge all rules.");
+		     "Use the 'flush' command to forcefully purge all rules.");
 
 		return rv;
 	}
@@ -188,28 +172,26 @@ stop(bool complete)
 	if (!print_family && run_state)
 		fw3_hotplug_zones(run_state, false);
 
-	for (family = FW3_FAMILY_V4; family <= FW3_FAMILY_V6; family++)
-	{
+	for (family = FW3_FAMILY_V4; family <= FW3_FAMILY_V6; family++) {
 		if (!complete && !family_running(family))
 			continue;
 
-		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW; table++)
-		{
-			if (!fw3_has_table(family == FW3_FAMILY_V6, fw3_flag_names[table]))
+		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW;
+		     table++) {
+			if (!fw3_has_table(family == FW3_FAMILY_V6,
+					   fw3_flag_names[table]))
 				continue;
 
 			if (!(handle = fw3_ipt_open(family, table)))
 				continue;
 
-			info(" * %sing %s %s table", complete ? "Flush" : "Clear",
+			info(" * %sing %s %s table",
+			     complete ? "Flush" : "Clear",
 			     fw3_flag_names[family], fw3_flag_names[table]);
 
-			if (complete)
-			{
+			if (complete) {
 				fw3_flush_all(handle);
-			}
-			else if (run_state)
-			{
+			} else if (run_state) {
 				fw3_flush_rules(handle, run_state, false);
 				fw3_flush_zones(handle, run_state, false);
 			}
@@ -236,8 +218,7 @@ stop(bool complete)
 	return rv;
 }
 
-static int
-start(void)
+static int start(void)
 {
 	int rv = 1;
 	enum fw3_family family;
@@ -247,16 +228,14 @@ start(void)
 	if (!print_family)
 		fw3_create_ipsets(cfg_state);
 
-	for (family = FW3_FAMILY_V4; family <= FW3_FAMILY_V6; family++)
-	{
+	for (family = FW3_FAMILY_V4; family <= FW3_FAMILY_V6; family++) {
 		if (family == FW3_FAMILY_V6 && cfg_state->defaults.disable_ipv6)
 			continue;
 
 		if (print_family && family != print_family)
 			continue;
 
-		if (!print_family && family_running(family))
-		{
+		if (!print_family && family_running(family)) {
 			warn("The %s firewall appears to be started already. "
 			     "If it is indeed empty, remove the %s file and retry.",
 			     fw3_flag_names[family], FW3_STATEFILE);
@@ -264,9 +243,10 @@ start(void)
 			continue;
 		}
 
-		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW; table++)
-		{
-			if (!fw3_has_table(family == FW3_FAMILY_V6, fw3_flag_names[table]))
+		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW;
+		     table++) {
+			if (!fw3_has_table(family == FW3_FAMILY_V6,
+					   fw3_flag_names[table]))
 				continue;
 
 			if (!(handle = fw3_ipt_open(family, table)))
@@ -300,13 +280,11 @@ start(void)
 		rv = 0;
 	}
 
-	if (!rv)
-	{
+	if (!rv) {
 		fw3_flush_conntrack(run_state);
 		fw3_set_defaults(cfg_state);
 
-		if (!print_family)
-		{
+		if (!print_family) {
 			fw3_run_includes(cfg_state, false);
 			fw3_hotplug_zones(cfg_state, true);
 			fw3_write_statefile(cfg_state);
@@ -316,9 +294,7 @@ start(void)
 	return rv;
 }
 
-
-static int
-reload(void)
+static int reload(void)
 {
 	int rv = 1;
 	enum fw3_family family;
@@ -330,21 +306,21 @@ reload(void)
 
 	fw3_hotplug_zones(run_state, false);
 
-	for (family = FW3_FAMILY_V4; family <= FW3_FAMILY_V6; family++)
-	{
+	for (family = FW3_FAMILY_V4; family <= FW3_FAMILY_V6; family++) {
 		if (!family_running(family))
 			goto start;
 
-		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW; table++)
-		{
-			if (!fw3_has_table(family == FW3_FAMILY_V6, fw3_flag_names[table]))
+		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW;
+		     table++) {
+			if (!fw3_has_table(family == FW3_FAMILY_V6,
+					   fw3_flag_names[table]))
 				continue;
 
 			if (!(handle = fw3_ipt_open(family, table)))
 				continue;
 
-			info(" * Clearing %s %s table",
-			     fw3_flag_names[family], fw3_flag_names[table]);
+			info(" * Clearing %s %s table", fw3_flag_names[family],
+			     fw3_flag_names[table]);
 
 			fw3_flush_rules(handle, run_state, true);
 			fw3_flush_zones(handle, run_state, true);
@@ -355,13 +331,14 @@ reload(void)
 		family_set(run_state, family, false);
 		family_set(cfg_state, family, false);
 
-start:
+	start:
 		if (family == FW3_FAMILY_V6 && cfg_state->defaults.disable_ipv6)
 			continue;
 
-		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW; table++)
-		{
-			if (!fw3_has_table(family == FW3_FAMILY_V6, fw3_flag_names[table]))
+		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW;
+		     table++) {
+			if (!fw3_has_table(family == FW3_FAMILY_V6,
+					   fw3_flag_names[table]))
 				continue;
 
 			if (!(handle = fw3_ipt_open(family, table)))
@@ -392,8 +369,7 @@ start:
 		rv = 0;
 	}
 
-	if (!rv)
-	{
+	if (!rv) {
 		fw3_flush_conntrack(run_state);
 
 		fw3_set_defaults(cfg_state);
@@ -405,21 +381,20 @@ start:
 	return rv;
 }
 
-static int
-gc(void)
+static int gc(void)
 {
 	enum fw3_family family;
 	enum fw3_table table;
 	struct fw3_ipt_handle *handle;
 
-	for (family = FW3_FAMILY_V4; family <= FW3_FAMILY_V6; family++)
-	{
+	for (family = FW3_FAMILY_V4; family <= FW3_FAMILY_V6; family++) {
 		if (family == FW3_FAMILY_V6 && cfg_state->defaults.disable_ipv6)
 			continue;
 
-		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW; table++)
-		{
-			if (!fw3_has_table(family == FW3_FAMILY_V6, fw3_flag_names[table]))
+		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW;
+		     table++) {
+			if (!fw3_has_table(family == FW3_FAMILY_V6,
+					   fw3_flag_names[table]))
 				continue;
 
 			if (!(handle = fw3_ipt_open(family, table)))
@@ -434,18 +409,14 @@ gc(void)
 	return 0;
 }
 
-static int
-lookup_network(const char *net)
+static int lookup_network(const char *net)
 {
 	struct fw3_zone *z;
 	struct fw3_device *d;
 
-	list_for_each_entry(z, &cfg_state->zones, list)
-	{
-		list_for_each_entry(d, &z->networks, list)
-		{
-			if (!strcmp(d->name, net))
-			{
+	list_for_each_entry (z, &cfg_state->zones, list) {
+		list_for_each_entry (d, &z->networks, list) {
+			if (!strcmp(d->name, net)) {
 				printf("%s\n", z->name);
 				return 0;
 			}
@@ -455,18 +426,14 @@ lookup_network(const char *net)
 	return 1;
 }
 
-static int
-lookup_device(const char *dev)
+static int lookup_device(const char *dev)
 {
 	struct fw3_zone *z;
 	struct fw3_device *d;
 
-	list_for_each_entry(z, &cfg_state->zones, list)
-	{
-		list_for_each_entry(d, &z->devices, list)
-		{
-			if (!strcmp(d->name, dev))
-			{
+	list_for_each_entry (z, &cfg_state->zones, list) {
+		list_for_each_entry (d, &z->devices, list) {
+			if (!strcmp(d->name, dev)) {
 				printf("%s\n", z->name);
 				return 0;
 			}
@@ -476,19 +443,16 @@ lookup_device(const char *dev)
 	return 1;
 }
 
-static int
-lookup_zone(const char *zone, const char *device)
+static int lookup_zone(const char *zone, const char *device)
 {
 	struct fw3_zone *z;
 	struct fw3_device *d;
 
-	list_for_each_entry(z, &cfg_state->zones, list)
-	{
+	list_for_each_entry (z, &cfg_state->zones, list) {
 		if (strcmp(z->name, zone))
 			continue;
 
-		list_for_each_entry(d, &z->devices, list)
-		{
+		list_for_each_entry (d, &z->devices, list) {
 			if (device && strcmp(device, d->name))
 				continue;
 
@@ -505,8 +469,7 @@ lookup_zone(const char *zone, const char *device)
 	return 1;
 }
 
-static int
-usage(void)
+static int usage(void)
 {
 	fprintf(stderr, "fw3 [-4] [-6] [-q] print\n");
 	fprintf(stderr, "fw3 [-q] {start|stop|flush|reload|restart}\n");
@@ -517,17 +480,14 @@ usage(void)
 	return 1;
 }
 
-
 int main(int argc, char **argv)
 {
 	int ch, rv = 1;
 	enum fw3_family family = FW3_FAMILY_ANY;
 	struct fw3_defaults *defs = NULL;
 
-	while ((ch = getopt(argc, argv, "46dqh")) != -1)
-	{
-		switch (ch)
-		{
+	while ((ch = getopt(argc, argv, "46dqh")) != -1) {
+		switch (ch) {
 		case '4':
 			family = FW3_FAMILY_V4;
 			break;
@@ -541,7 +501,8 @@ int main(int argc, char **argv)
 			break;
 
 		case 'q':
-			if (freopen("/dev/null", "w", stderr)) {}
+			if (freopen("/dev/null", "w", stderr)) {
+			}
 			break;
 
 		case 'h':
@@ -553,20 +514,15 @@ int main(int argc, char **argv)
 	build_state(false);
 	defs = &cfg_state->defaults;
 
-	if (optind >= argc)
-	{
+	if (optind >= argc) {
 		rv = usage();
 		goto out;
 	}
 
-	if (!strcmp(argv[optind], "print"))
-	{
-		if (family == FW3_FAMILY_ANY)
-		{
+	if (!strcmp(argv[optind], "print")) {
+		if (family == FW3_FAMILY_ANY) {
 			family = FW3_FAMILY_V4;
-		}
-		else if (family == FW3_FAMILY_V6)
-		{
+		} else if (family == FW3_FAMILY_V6) {
 			if (defs->disable_ipv6)
 				warn("IPv6 rules globally disabled in configuration");
 #ifdef DISABLE_IPV6
@@ -575,87 +531,61 @@ int main(int argc, char **argv)
 #endif
 		}
 
-		if (freopen("/dev/null", "w", stderr)) {};
+		if (freopen("/dev/null", "w", stderr)) {
+		};
 
 		cfg_state->disable_ipsets = true;
 		print_family = family;
 		fw3_pr_debug = true;
 
-		if (fw3_lock())
-		{
+		if (fw3_lock()) {
 			build_state(true);
 			rv = start();
 			fw3_unlock();
 		}
-	}
-	else if (!strcmp(argv[optind], "start"))
-	{
-		if (fw3_lock())
-		{
+	} else if (!strcmp(argv[optind], "start")) {
+		if (fw3_lock()) {
 			build_state(true);
 			rv = start();
 			fw3_unlock();
 		}
-	}
-	else if (!strcmp(argv[optind], "stop"))
-	{
-		if (fw3_lock())
-		{
+	} else if (!strcmp(argv[optind], "stop")) {
+		if (fw3_lock()) {
 			build_state(true);
 			rv = stop(false);
 			fw3_unlock();
 		}
-	}
-	else if (!strcmp(argv[optind], "flush"))
-	{
-		if (fw3_lock())
-		{
+	} else if (!strcmp(argv[optind], "flush")) {
+		if (fw3_lock()) {
 			build_state(true);
 			rv = stop(true);
 			fw3_unlock();
 		}
-	}
-	else if (!strcmp(argv[optind], "restart"))
-	{
-		if (fw3_lock())
-		{
+	} else if (!strcmp(argv[optind], "restart")) {
+		if (fw3_lock()) {
 			build_state(true);
 			stop(true);
 			rv = start();
 			fw3_unlock();
 		}
-	}
-	else if (!strcmp(argv[optind], "reload"))
-	{
-		if (fw3_lock())
-		{
+	} else if (!strcmp(argv[optind], "reload")) {
+		if (fw3_lock()) {
 			build_state(true);
 			rv = reload();
 			fw3_unlock();
 		}
-	}
-	else if (!strcmp(argv[optind], "gc"))
-	{
-		if (fw3_lock())
-		{
+	} else if (!strcmp(argv[optind], "gc")) {
+		if (fw3_lock()) {
 			rv = gc();
 			fw3_unlock();
 		}
-	}
-	else if (!strcmp(argv[optind], "network") && (optind + 1) < argc)
-	{
+	} else if (!strcmp(argv[optind], "network") && (optind + 1) < argc) {
 		rv = lookup_network(argv[optind + 1]);
-	}
-	else if (!strcmp(argv[optind], "device") && (optind + 1) < argc)
-	{
+	} else if (!strcmp(argv[optind], "device") && (optind + 1) < argc) {
 		rv = lookup_device(argv[optind + 1]);
-	}
-	else if (!strcmp(argv[optind], "zone") && (optind + 1) < argc)
-	{
+	} else if (!strcmp(argv[optind], "zone") && (optind + 1) < argc) {
 		rv = lookup_zone(argv[optind + 1], argv[optind + 2]);
-	}
-	else
-	{
+	} else {
 		rv = usage();
 	}
 
diff --git a/options.c b/options.c
index c763d9e..7e1ac77 100644
--- a/options.c
+++ b/options.c
@@ -19,21 +19,19 @@
 #include "options.h"
 #include "ubus.h"
 
-
-static bool
-put_value(void *ptr, void *val, int elem_size, bool is_list)
+static bool put_value(void *ptr, void *val, int elem_size, bool is_list)
 {
 	void *copy;
 
-	if (is_list)
-	{
+	if (is_list) {
 		copy = malloc(elem_size);
 
 		if (!copy)
 			return false;
 
 		memcpy(copy, val, elem_size);
-		list_add_tail((struct list_head *)copy, (struct list_head *)ptr);
+		list_add_tail((struct list_head *)copy,
+			      (struct list_head *)ptr);
 		return true;
 	}
 
@@ -41,17 +39,14 @@ put_value(void *ptr, void *val, int elem_size, bool is_list)
 	return false;
 }
 
-static bool
-parse_enum(void *ptr, const char *val, const char **values, int min, int max)
+static bool parse_enum(void *ptr, const char *val, const char **values, int min,
+		       int max)
 {
 	int i, l = strlen(val);
 
-	if (l > 0)
-	{
-		for (i = 0; i <= (max - min); i++)
-		{
-			if (!strncasecmp(val, values[i], l))
-			{
+	if (l > 0) {
+		for (i = 0; i <= (max - min); i++) {
+			if (!strncasecmp(val, values[i], l)) {
 				*((int *)ptr) = min + i;
 				return true;
 			}
@@ -61,30 +56,15 @@ parse_enum(void *ptr, const char *val, const char **values, int min, int max)
 	return false;
 }
 
-
 const char *fw3_flag_names[__FW3_FLAG_MAX] = {
-	"filter",
-	"nat",
-	"mangle",
-	"raw",
-
-	"IPv4",
-	"IPv6",
-
-	"ACCEPT",
-	"REJECT",
-	"DROP",
-	"NOTRACK",
-	"HELPER",
-	"MARK",
-	"DSCP",
-	"DNAT",
-	"SNAT",
-	"MASQUERADE",
-
-	"ACCEPT",
-	"REJECT",
-	"DROP",
+	"filter", "nat",    "mangle", "raw",
+
+	"IPv4",   "IPv6",
+
+	"ACCEPT", "REJECT", "DROP",   "NOTRACK", "HELPER",
+	"MARK",   "DSCP",   "DNAT",   "SNAT",    "MASQUERADE",
+
+	"ACCEPT", "REJECT", "DROP",
 };
 
 const char *fw3_reject_code_names[__FW3_REJECT_CODE_MAX] = {
@@ -108,22 +88,12 @@ const char *fw3_ipset_method_names[__FW3_IPSET_METHOD_MAX] = {
 };
 
 const char *fw3_ipset_type_names[__FW3_IPSET_TYPE_MAX] = {
-	"(bug)",
-	"ip",
-	"port",
-	"mac",
-	"net",
-	"set",
+	"(bug)", "ip", "port", "mac", "net", "set",
 };
 
 static const char *weekdays[] = {
-	"monday",
-	"tuesday",
-	"wednesday",
-	"thursday",
-	"friday",
-	"saturday",
-	"sunday",
+	"monday", "tuesday",  "wednesday", "thursday",
+	"friday", "saturday", "sunday",
 };
 
 static const char *include_types[] = {
@@ -136,34 +106,19 @@ static const char *reflection_sources[] = {
 	"external",
 };
 
-static const struct { const char *name; uint8_t dscp; } dscp_classes[] = {
-	{ "CS0",  0x00 },
-	{ "CS1",  0x08 },
-	{ "CS2",  0x10 },
-	{ "CS3",  0x18 },
-	{ "CS4",  0x20 },
-	{ "CS5",  0x28 },
-	{ "CS6",  0x30 },
-	{ "CS7",  0x38 },
-	{ "BE",   0x00 },
-	{ "AF11", 0x0a },
-	{ "AF12", 0x0c },
-	{ "AF13", 0x0e },
-	{ "AF21", 0x12 },
-	{ "AF22", 0x14 },
-	{ "AF23", 0x16 },
-	{ "AF31", 0x1a },
-	{ "AF32", 0x1c },
-	{ "AF33", 0x1e },
-	{ "AF41", 0x22 },
-	{ "AF42", 0x24 },
-	{ "AF43", 0x26 },
-	{ "EF",   0x2e }
-};
-
-
-bool
-fw3_parse_bool(void *ptr, const char *val, bool is_list)
+static const struct {
+	const char *name;
+	uint8_t dscp;
+} dscp_classes[] = { { "CS0", 0x00 },  { "CS1", 0x08 },  { "CS2", 0x10 },
+		     { "CS3", 0x18 },  { "CS4", 0x20 },  { "CS5", 0x28 },
+		     { "CS6", 0x30 },  { "CS7", 0x38 },  { "BE", 0x00 },
+		     { "AF11", 0x0a }, { "AF12", 0x0c }, { "AF13", 0x0e },
+		     { "AF21", 0x12 }, { "AF22", 0x14 }, { "AF23", 0x16 },
+		     { "AF31", 0x1a }, { "AF32", 0x1c }, { "AF33", 0x1e },
+		     { "AF41", 0x22 }, { "AF42", 0x24 }, { "AF43", 0x26 },
+		     { "EF", 0x2e } };
+
+bool fw3_parse_bool(void *ptr, const char *val, bool is_list)
 {
 	if (!strcmp(val, "true") || !strcmp(val, "yes") || !strcmp(val, "1"))
 		*((bool *)ptr) = true;
@@ -173,8 +128,7 @@ fw3_parse_bool(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_int(void *ptr, const char *val, bool is_list)
+bool fw3_parse_int(void *ptr, const char *val, bool is_list)
 {
 	char *e;
 	int n = strtol(val, &e, 0);
@@ -187,39 +141,37 @@ fw3_parse_int(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_string(void *ptr, const char *val, bool is_list)
+bool fw3_parse_string(void *ptr, const char *val, bool is_list)
 {
 	*((char **)ptr) = (char *)val;
 	return true;
 }
 
-bool
-fw3_parse_target(void *ptr, const char *val, bool is_list)
+bool fw3_parse_target(void *ptr, const char *val, bool is_list)
 {
 	return parse_enum(ptr, val, &fw3_flag_names[FW3_FLAG_ACCEPT],
-	                  FW3_FLAG_ACCEPT, FW3_FLAG_MASQUERADE);
+			  FW3_FLAG_ACCEPT, FW3_FLAG_MASQUERADE);
 }
 
-bool
-fw3_parse_reject_code(void *ptr, const char *val, bool is_list)
+bool fw3_parse_reject_code(void *ptr, const char *val, bool is_list)
 {
-	return parse_enum(ptr, val, &fw3_reject_code_names[FW3_REJECT_CODE_TCP_RESET],
-	                  FW3_REJECT_CODE_TCP_RESET, FW3_REJECT_CODE_ADM_PROHIBITED);
+	return parse_enum(ptr, val,
+			  &fw3_reject_code_names[FW3_REJECT_CODE_TCP_RESET],
+			  FW3_REJECT_CODE_TCP_RESET,
+			  FW3_REJECT_CODE_ADM_PROHIBITED);
 }
 
-bool
-fw3_parse_limit(void *ptr, const char *val, bool is_list)
+bool fw3_parse_limit(void *ptr, const char *val, bool is_list)
 {
 	struct fw3_limit *limit = ptr;
 	enum fw3_limit_unit u = FW3_LIMIT_UNIT_SECOND;
 	char *e;
 	int n;
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		limit->invert = true;
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
 	n = strtol(val, &e, 10);
@@ -242,28 +194,25 @@ fw3_parse_limit(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_device(void *ptr, const char *val, bool is_list)
+bool fw3_parse_device(void *ptr, const char *val, bool is_list)
 {
 	char *p;
-	struct fw3_device dev = { };
+	struct fw3_device dev = {};
 
-	if (*val == '*')
-	{
+	if (*val == '*') {
 		dev.set = true;
 		dev.any = true;
 		put_value(ptr, &dev, sizeof(dev), is_list);
 		return true;
 	}
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		dev.invert = true;
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
-	if ((p = strchr(val, '@')) != NULL)
-	{
+	if ((p = strchr(val, '@')) != NULL) {
 		*p++ = 0;
 		snprintf(dev.network, sizeof(dev.network), "%s", p);
 	}
@@ -278,19 +227,18 @@ fw3_parse_device(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_address(void *ptr, const char *val, bool is_list)
+bool fw3_parse_address(void *ptr, const char *val, bool is_list)
 {
-	struct fw3_address addr = { };
+	struct fw3_address addr = {};
 	struct in_addr v4;
 	struct in6_addr v6;
 	char *p = NULL, *m = NULL, *s, *e;
 	int bits = -1;
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		addr.invert = true;
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
 	s = strdup(val);
@@ -303,66 +251,51 @@ fw3_parse_address(void *ptr, const char *val, bool is_list)
 	else if ((p = strchr(s, '-')) != NULL)
 		*p++ = 0;
 
-	if (inet_pton(AF_INET6, s, &v6))
-	{
+	if (inet_pton(AF_INET6, s, &v6)) {
 		addr.family = FW3_FAMILY_V6;
 		addr.address.v6 = v6;
 
-		if (m)
-		{
-			if (!inet_pton(AF_INET6, m, &v6))
-			{
+		if (m) {
+			if (!inet_pton(AF_INET6, m, &v6)) {
 				bits = strtol(m, &e, 10);
 
-				if ((*e != 0) || !fw3_bitlen2netmask(addr.family, bits, &v6))
+				if ((*e != 0) ||
+				    !fw3_bitlen2netmask(addr.family, bits, &v6))
 					goto fail;
 			}
 
 			addr.mask.v6 = v6;
-		}
-		else if (p)
-		{
+		} else if (p) {
 			if (!inet_pton(AF_INET6, p, &addr.mask.v6))
 				goto fail;
 
 			addr.range = true;
-		}
-		else
-		{
+		} else {
 			memset(addr.mask.v6.s6_addr, 0xFF, 16);
 		}
-	}
-	else if (inet_pton(AF_INET, s, &v4))
-	{
+	} else if (inet_pton(AF_INET, s, &v4)) {
 		addr.family = FW3_FAMILY_V4;
 		addr.address.v4 = v4;
 
-		if (m)
-		{
-			if (!inet_pton(AF_INET, m, &v4))
-			{
+		if (m) {
+			if (!inet_pton(AF_INET, m, &v4)) {
 				bits = strtol(m, &e, 10);
 
-				if ((*e != 0) || !fw3_bitlen2netmask(addr.family, bits, &v4))
+				if ((*e != 0) ||
+				    !fw3_bitlen2netmask(addr.family, bits, &v4))
 					goto fail;
 			}
 
 			addr.mask.v4 = v4;
-		}
-		else if (p)
-		{
+		} else if (p) {
 			if (!inet_pton(AF_INET, p, &addr.mask.v4))
 				goto fail;
 
 			addr.range = true;
-		}
-		else
-		{
+		} else {
 			addr.mask.v4.s_addr = 0xFFFFFFFF;
 		}
-	}
-	else
-	{
+	} else {
 		goto fail;
 	}
 
@@ -376,47 +309,42 @@ fail:
 	return false;
 }
 
-bool
-fw3_parse_network(void *ptr, const char *val, bool is_list)
+bool fw3_parse_network(void *ptr, const char *val, bool is_list)
 {
-	struct fw3_device dev = { };
+	struct fw3_device dev = {};
 	struct fw3_address *addr, *tmp;
 	LIST_HEAD(addr_list);
 	int n_addrs;
 
-	if (!fw3_parse_address(ptr, val, is_list))
-	{
+	if (!fw3_parse_address(ptr, val, is_list)) {
 		if (!fw3_parse_device(&dev, val, false))
 			return false;
 
 		n_addrs = fw3_ubus_address(&addr_list, dev.name);
 
-		list_for_each_entry(addr, &addr_list, list)
-		{
+		list_for_each_entry (addr, &addr_list, list) {
 			addr->invert = dev.invert;
 			addr->resolved = true;
 		}
 
 		/* add an empty address member with .set = false, .resolved = true
 		 * to signal resolving failure to callers */
-		if (n_addrs == 0)
-		{
+		if (n_addrs == 0) {
 			tmp = fw3_alloc(sizeof(*tmp));
 			tmp->resolved = true;
 
 			list_add_tail(&tmp->list, &addr_list);
 		}
 
-		if (is_list)
-		{
+		if (is_list) {
 			list_splice_tail(&addr_list, ptr);
-		}
-		else if (!list_empty(&addr_list))
-		{
-			memcpy(ptr, list_first_entry(&addr_list, typeof(*addr), list),
+		} else if (!list_empty(&addr_list)) {
+			memcpy(ptr,
+			       list_first_entry(&addr_list, typeof(*addr),
+						list),
 			       sizeof(*addr));
 
-			list_for_each_entry_safe(addr, tmp, &addr_list, list)
+			list_for_each_entry_safe (addr, tmp, &addr_list, list)
 				free(addr);
 		}
 	}
@@ -424,20 +352,18 @@ fw3_parse_network(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_mac(void *ptr, const char *val, bool is_list)
+bool fw3_parse_mac(void *ptr, const char *val, bool is_list)
 {
-	struct fw3_mac addr = { };
+	struct fw3_mac addr = {};
 	struct ether_addr *mac;
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		addr.invert = true;
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
-	if ((mac = ether_aton(val)) != NULL)
-	{
+	if ((mac = ether_aton(val)) != NULL) {
 		addr.mac = *mac;
 		addr.set = true;
 
@@ -448,18 +374,17 @@ fw3_parse_mac(void *ptr, const char *val, bool is_list)
 	return false;
 }
 
-bool
-fw3_parse_port(void *ptr, const char *val, bool is_list)
+bool fw3_parse_port(void *ptr, const char *val, bool is_list)
 {
-	struct fw3_port range = { };
+	struct fw3_port range = {};
 	uint16_t n;
 	uint16_t m;
 	char *p;
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		range.invert = true;
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
 	n = strtoul(val, &p, 10);
@@ -470,8 +395,7 @@ fw3_parse_port(void *ptr, const char *val, bool is_list)
 	if (*p && *p != '-' && *p != ':')
 		return false;
 
-	if (*p)
-	{
+	if (*p) {
 		m = strtoul(++p, NULL, 10);
 
 		if (errno == ERANGE || errno == EINVAL || m < n)
@@ -479,9 +403,7 @@ fw3_parse_port(void *ptr, const char *val, bool is_list)
 
 		range.port_min = n;
 		range.port_max = m;
-	}
-	else
-	{
+	} else {
 		range.port_min = n;
 		range.port_max = n;
 	}
@@ -491,8 +413,7 @@ fw3_parse_port(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_family(void *ptr, const char *val, bool is_list)
+bool fw3_parse_family(void *ptr, const char *val, bool is_list)
 {
 	if (!strcmp(val, "any") || !strcmp(val, "*"))
 		*((enum fw3_family *)ptr) = FW3_FAMILY_ANY;
@@ -506,20 +427,17 @@ fw3_parse_family(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_icmptype(void *ptr, const char *val, bool is_list)
+bool fw3_parse_icmptype(void *ptr, const char *val, bool is_list)
 {
-	struct fw3_icmptype icmp = { };
+	struct fw3_icmptype icmp = {};
 	bool v4 = false;
 	bool v6 = false;
 	char *p;
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(fw3_icmptype_list_v4); i++)
-	{
-		if (!strcmp(val, fw3_icmptype_list_v4[i].name))
-		{
-			icmp.type     = fw3_icmptype_list_v4[i].type;
+	for (i = 0; i < ARRAY_SIZE(fw3_icmptype_list_v4); i++) {
+		if (!strcmp(val, fw3_icmptype_list_v4[i].name)) {
+			icmp.type = fw3_icmptype_list_v4[i].type;
 			icmp.code_min = fw3_icmptype_list_v4[i].code_min;
 			icmp.code_max = fw3_icmptype_list_v4[i].code_max;
 
@@ -528,11 +446,9 @@ fw3_parse_icmptype(void *ptr, const char *val, bool is_list)
 		}
 	}
 
-	for (i = 0; i < ARRAY_SIZE(fw3_icmptype_list_v6); i++)
-	{
-		if (!strcmp(val, fw3_icmptype_list_v6[i].name))
-		{
-			icmp.type6     = fw3_icmptype_list_v6[i].type;
+	for (i = 0; i < ARRAY_SIZE(fw3_icmptype_list_v6); i++) {
+		if (!strcmp(val, fw3_icmptype_list_v6[i].name)) {
+			icmp.type6 = fw3_icmptype_list_v6[i].type;
 			icmp.code6_min = fw3_icmptype_list_v6[i].code_min;
 			icmp.code6_max = fw3_icmptype_list_v6[i].code_max;
 
@@ -541,8 +457,7 @@ fw3_parse_icmptype(void *ptr, const char *val, bool is_list)
 		}
 	}
 
-	if (!v4 && !v6)
-	{
+	if (!v4 && !v6) {
 		i = strtoul(val, &p, 10);
 
 		if ((p == val) || (*p != '/' && *p != 0) || (i > 0xFF))
@@ -550,8 +465,7 @@ fw3_parse_icmptype(void *ptr, const char *val, bool is_list)
 
 		icmp.type = i;
 
-		if (*p == '/')
-		{
+		if (*p == '/') {
 			val = ++p;
 			i = strtoul(val, &p, 10);
 
@@ -560,14 +474,12 @@ fw3_parse_icmptype(void *ptr, const char *val, bool is_list)
 
 			icmp.code_min = i;
 			icmp.code_max = i;
-		}
-		else
-		{
+		} else {
 			icmp.code_min = 0;
 			icmp.code_max = 0xFF;
 		}
 
-		icmp.type6     = icmp.type;
+		icmp.type6 = icmp.type;
 		icmp.code6_min = icmp.code_max;
 		icmp.code6_max = icmp.code_max;
 
@@ -575,41 +487,34 @@ fw3_parse_icmptype(void *ptr, const char *val, bool is_list)
 		v6 = true;
 	}
 
-	icmp.family = (v4 && v6) ? FW3_FAMILY_ANY
-	                         : (v6 ? FW3_FAMILY_V6 : FW3_FAMILY_V4);
+	icmp.family = (v4 && v6) ? FW3_FAMILY_ANY :
+				   (v6 ? FW3_FAMILY_V6 : FW3_FAMILY_V4);
 
 	put_value(ptr, &icmp, sizeof(icmp), is_list);
 	return true;
 }
 
-bool
-fw3_parse_protocol(void *ptr, const char *val, bool is_list)
+bool fw3_parse_protocol(void *ptr, const char *val, bool is_list)
 {
-	struct fw3_protocol proto = { };
+	struct fw3_protocol proto = {};
 	struct protoent *ent;
 	char *e;
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		proto.invert = true;
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
-	if (!strcmp(val, "all") || !strcmp(val, "any") || !strcmp(val, "*"))
-	{
+	if (!strcmp(val, "all") || !strcmp(val, "any") || !strcmp(val, "*")) {
 		proto.any = true;
 		put_value(ptr, &proto, sizeof(proto), is_list);
 		return true;
-	}
-	else if (!strcmp(val, "icmpv6"))
-	{
+	} else if (!strcmp(val, "icmpv6")) {
 		val = "ipv6-icmp";
-	}
-	else if (!strcmp(val, "tcpudp"))
-	{
+	} else if (!strcmp(val, "tcpudp")) {
 		proto.protocol = 6;
-		if (put_value(ptr, &proto, sizeof(proto), is_list))
-		{
+		if (put_value(ptr, &proto, sizeof(proto), is_list)) {
 			proto.protocol = 17;
 			put_value(ptr, &proto, sizeof(proto), is_list);
 		}
@@ -619,8 +524,7 @@ fw3_parse_protocol(void *ptr, const char *val, bool is_list)
 
 	ent = getprotobyname(val);
 
-	if (ent)
-	{
+	if (ent) {
 		proto.protocol = ent->p_proto;
 		put_value(ptr, &proto, sizeof(proto), is_list);
 		return true;
@@ -635,39 +539,33 @@ fw3_parse_protocol(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_ipset_method(void *ptr, const char *val, bool is_list)
+bool fw3_parse_ipset_method(void *ptr, const char *val, bool is_list)
 {
-	return parse_enum(ptr, val, &fw3_ipset_method_names[FW3_IPSET_METHOD_BITMAP],
-	                  FW3_IPSET_METHOD_BITMAP, FW3_IPSET_METHOD_LIST);
+	return parse_enum(ptr, val,
+			  &fw3_ipset_method_names[FW3_IPSET_METHOD_BITMAP],
+			  FW3_IPSET_METHOD_BITMAP, FW3_IPSET_METHOD_LIST);
 }
 
-bool
-fw3_parse_ipset_datatype(void *ptr, const char *val, bool is_list)
+bool fw3_parse_ipset_datatype(void *ptr, const char *val, bool is_list)
 {
-	struct fw3_ipset_datatype type = { };
+	struct fw3_ipset_datatype type = {};
 
 	type.dir = "src";
 
-	if (!strncmp(val, "dest_", 5))
-	{
+	if (!strncmp(val, "dest_", 5)) {
 		val += 5;
 		type.dir = "dst";
-	}
-	else if (!strncmp(val, "dst_", 4))
-	{
+	} else if (!strncmp(val, "dst_", 4)) {
 		val += 4;
 		type.dir = "dst";
-	}
-	else if (!strncmp(val, "src_", 4))
-	{
+	} else if (!strncmp(val, "src_", 4)) {
 		val += 4;
 		type.dir = "src";
 	}
 
-	if (parse_enum(&type.type, val, &fw3_ipset_type_names[FW3_IPSET_TYPE_IP],
-	               FW3_IPSET_TYPE_IP, FW3_IPSET_TYPE_SET))
-	{
+	if (parse_enum(&type.type, val,
+		       &fw3_ipset_type_names[FW3_IPSET_TYPE_IP],
+		       FW3_IPSET_TYPE_IP, FW3_IPSET_TYPE_SET)) {
 		put_value(ptr, &type, sizeof(type), is_list);
 		return true;
 	}
@@ -675,8 +573,7 @@ fw3_parse_ipset_datatype(void *ptr, const char *val, bool is_list)
 	return false;
 }
 
-bool
-fw3_parse_date(void *ptr, const char *val, bool is_list)
+bool fw3_parse_date(void *ptr, const char *val, bool is_list)
 {
 	unsigned int year = 1970, mon = 1, day = 1, hour = 0, min = 0, sec = 0;
 	struct tm tm = { 0 };
@@ -719,16 +616,15 @@ fw3_parse_date(void *ptr, const char *val, bool is_list)
 
 ret:
 	tm.tm_year = year - 1900;
-	tm.tm_mon  = mon - 1;
+	tm.tm_mon = mon - 1;
 	tm.tm_mday = day;
 	tm.tm_hour = hour;
-	tm.tm_min  = min;
-	tm.tm_sec  = sec;
+	tm.tm_min = min;
+	tm.tm_sec = sec;
 
 	ts = mktime(&tm) - timezone;
 
-	if (ts >= 0)
-	{
+	if (ts >= 0) {
 		gmtime_r(&ts, (struct tm *)ptr);
 		return true;
 	}
@@ -737,8 +633,7 @@ fail:
 	return false;
 }
 
-bool
-fw3_parse_time(void *ptr, const char *val, bool is_list)
+bool fw3_parse_time(void *ptr, const char *val, bool is_list)
 {
 	unsigned int hour = 0, min = 0, sec = 0;
 	char *p;
@@ -765,29 +660,25 @@ fail:
 	return false;
 }
 
-bool
-fw3_parse_weekdays(void *ptr, const char *val, bool is_list)
+bool fw3_parse_weekdays(void *ptr, const char *val, bool is_list)
 {
 	unsigned int w = 0;
 	char *p, *s;
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		fw3_setbit(*(uint8_t *)ptr, 0);
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
 	if (!(s = strdup(val)))
 		return false;
 
-	for (p = strtok(s, " \t"); p; p = strtok(NULL, " \t"))
-	{
-		if (!parse_enum(&w, p, weekdays, 1, 7))
-		{
+	for (p = strtok(s, " \t"); p; p = strtok(NULL, " \t")) {
+		if (!parse_enum(&w, p, weekdays, 1, 7)) {
 			w = strtoul(p, &p, 10);
 
-			if (*p || w < 1 || w > 7)
-			{
+			if (*p || w < 1 || w > 7) {
 				free(s);
 				return false;
 			}
@@ -800,27 +691,24 @@ fw3_parse_weekdays(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_monthdays(void *ptr, const char *val, bool is_list)
+bool fw3_parse_monthdays(void *ptr, const char *val, bool is_list)
 {
 	unsigned int d;
 	char *p, *s;
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		fw3_setbit(*(uint32_t *)ptr, 0);
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
 	if (!(s = strdup(val)))
 		return false;
 
-	for (p = strtok(s, " \t"); p; p = strtok(NULL, " \t"))
-	{
+	for (p = strtok(s, " \t"); p; p = strtok(NULL, " \t")) {
 		d = strtoul(p, &p, 10);
 
-		if (*p || d < 1 || d > 31)
-		{
+		if (*p || d < 1 || d > 31) {
 			free(s);
 			return false;
 		}
@@ -832,31 +720,28 @@ fw3_parse_monthdays(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_include_type(void *ptr, const char *val, bool is_list)
+bool fw3_parse_include_type(void *ptr, const char *val, bool is_list)
 {
-	return parse_enum(ptr, val, include_types,
-	                  FW3_INC_TYPE_SCRIPT, FW3_INC_TYPE_RESTORE);
+	return parse_enum(ptr, val, include_types, FW3_INC_TYPE_SCRIPT,
+			  FW3_INC_TYPE_RESTORE);
 }
 
-bool
-fw3_parse_reflection_source(void *ptr, const char *val, bool is_list)
+bool fw3_parse_reflection_source(void *ptr, const char *val, bool is_list)
 {
-	return parse_enum(ptr, val, reflection_sources,
-	                  FW3_REFLECTION_INTERNAL, FW3_REFLECTION_EXTERNAL);
+	return parse_enum(ptr, val, reflection_sources, FW3_REFLECTION_INTERNAL,
+			  FW3_REFLECTION_EXTERNAL);
 }
 
-bool
-fw3_parse_mark(void *ptr, const char *val, bool is_list)
+bool fw3_parse_mark(void *ptr, const char *val, bool is_list)
 {
 	uint32_t n;
 	char *s, *e;
 	struct fw3_mark *m = ptr;
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		m->invert = true;
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
 	if ((s = strchr(val, '/')) != NULL)
@@ -870,8 +755,7 @@ fw3_parse_mark(void *ptr, const char *val, bool is_list)
 	m->mark = n;
 	m->mask = 0xFFFFFFFF;
 
-	if (s)
-	{
+	if (s) {
 		n = strtoul(s, &e, 0);
 
 		if (e == s || *e)
@@ -884,21 +768,19 @@ fw3_parse_mark(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_dscp(void *ptr, const char *val, bool is_list)
+bool fw3_parse_dscp(void *ptr, const char *val, bool is_list)
 {
 	uint32_t n;
 	char *e;
 	struct fw3_dscp *d = ptr;
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		d->invert = true;
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
-	for (n = 0; n < sizeof(dscp_classes) / sizeof(dscp_classes[0]); n++)
-	{
+	for (n = 0; n < sizeof(dscp_classes) / sizeof(dscp_classes[0]); n++) {
 		if (strcmp(dscp_classes[n].name, val))
 			continue;
 
@@ -917,34 +799,30 @@ fw3_parse_dscp(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_setmatch(void *ptr, const char *val, bool is_list)
+bool fw3_parse_setmatch(void *ptr, const char *val, bool is_list)
 {
 	struct fw3_setmatch *m = ptr;
 	char *p, *s;
 	int i;
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		m->invert = true;
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
 	if (!(s = strdup(val)))
 		return false;
 
-	if (!(p = strtok(s, " \t")))
-	{
+	if (!(p = strtok(s, " \t"))) {
 		free(s);
 		return false;
 	}
 
 	strncpy(m->name, p, sizeof(m->name) - 1);
 
-	for (i = 0, p = strtok(NULL, " \t,");
-	     i < 3 && p != NULL;
-	     i++, p = strtok(NULL, " \t,"))
-	{
+	for (i = 0, p = strtok(NULL, " \t,"); i < 3 && p != NULL;
+	     i++, p = strtok(NULL, " \t,")) {
 		if (!strncmp(p, "dest", 4) || !strncmp(p, "dst", 3))
 			m->dir[i] = "dst";
 		else if (!strncmp(p, "src", 3))
@@ -957,8 +835,7 @@ fw3_parse_setmatch(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-bool
-fw3_parse_direction(void *ptr, const char *val, bool is_list)
+bool fw3_parse_direction(void *ptr, const char *val, bool is_list)
 {
 	bool *is_out = ptr;
 	bool valid = true;
@@ -973,19 +850,17 @@ fw3_parse_direction(void *ptr, const char *val, bool is_list)
 	return valid;
 }
 
-bool
-fw3_parse_cthelper(void *ptr, const char *val, bool is_list)
+bool fw3_parse_cthelper(void *ptr, const char *val, bool is_list)
 {
-	struct fw3_cthelpermatch m = { };
+	struct fw3_cthelpermatch m = {};
 
-	if (*val == '!')
-	{
+	if (*val == '!') {
 		m.invert = true;
-		while (isspace(*++val));
+		while (isspace(*++val))
+			;
 	}
 
-	if (*val)
-	{
+	if (*val) {
 		m.set = true;
 		strncpy(m.name, val, sizeof(m.name) - 1);
 		put_value(ptr, &m, sizeof(m), is_list);
@@ -995,10 +870,9 @@ fw3_parse_cthelper(void *ptr, const char *val, bool is_list)
 	return false;
 }
 
-bool
-fw3_parse_setentry(void *ptr, const char *val, bool is_list)
+bool fw3_parse_setentry(void *ptr, const char *val, bool is_list)
 {
-	struct fw3_setentry e = { };
+	struct fw3_setentry e = {};
 
 	e.value = val;
 	put_value(ptr, &e, sizeof(e), is_list);
@@ -1006,10 +880,8 @@ fw3_parse_setentry(void *ptr, const char *val, bool is_list)
 	return true;
 }
 
-
-bool
-fw3_parse_options(void *s, const struct fw3_option *opts,
-                  struct uci_section *section)
+bool fw3_parse_options(void *s, const struct fw3_option *opts,
+		       struct uci_section *section)
 {
 	char *p, *v;
 	bool known, inv;
@@ -1024,66 +896,63 @@ fw3_parse_options(void *s, const struct fw3_option *opts,
 		o = uci_to_option(e);
 		known = false;
 
-		for (opt = opts; opt->name; opt++)
-		{
+		for (opt = opts; opt->name; opt++) {
 			if (!opt->parse)
 				continue;
 
 			if (strcmp(opt->name, e->name))
 				continue;
 
-			if (o->type == UCI_TYPE_LIST)
-			{
-				if (!opt->elem_size)
-				{
+			if (o->type == UCI_TYPE_LIST) {
+				if (!opt->elem_size) {
 					warn_elem(e, "must not be a list");
 					valid = false;
-				}
-				else
-				{
-					dest = (struct list_head *)((char *)s + opt->offset);
+				} else {
+					dest = (struct list_head *)((char *)s +
+								    opt->offset);
 
 					uci_foreach_element(&o->v.list, l)
 					{
 						if (!l->name)
 							continue;
 
-						if (!opt->parse(dest, l->name, true))
-						{
-							warn_elem(e, "has invalid value '%s'", l->name);
+						if (!opt->parse(dest, l->name,
+								true)) {
+							warn_elem(
+								e,
+								"has invalid value '%s'",
+								l->name);
 							valid = false;
 							continue;
 						}
 					}
 				}
-			}
-			else
-			{
+			} else {
 				v = o->v.string;
 
 				if (!v)
 					continue;
 
-				if (!opt->elem_size)
-				{
-					if (!opt->parse((char *)s + opt->offset, o->v.string, false))
-					{
-						warn_elem(e, "has invalid value '%s'", o->v.string);
+				if (!opt->elem_size) {
+					if (!opt->parse((char *)s + opt->offset,
+							o->v.string, false)) {
+						warn_elem(
+							e,
+							"has invalid value '%s'",
+							o->v.string);
 						valid = false;
 					}
-				}
-				else
-				{
+				} else {
 					inv = false;
-					dest = (struct list_head *)((char *)s + opt->offset);
+					dest = (struct list_head *)((char *)s +
+								    opt->offset);
 
-					for (p = strtok(v, " \t"); p != NULL; p = strtok(NULL, " \t"))
-					{
+					for (p = strtok(v, " \t"); p != NULL;
+					     p = strtok(NULL, " \t")) {
 						/* If we encounter a sole "!" token, assume that it
 						 * is meant to be part of the next token, so silently
 						 * skip it and remember the state... */
-						if (!strcmp(p, "!"))
-						{
+						if (!strcmp(p, "!")) {
 							inv = true;
 							continue;
 						}
@@ -1092,15 +961,17 @@ fw3_parse_options(void *s, const struct fw3_option *opts,
 						 * back by one byte to precede the value with an
 						 * exclamation mark which effectively turns
 						 * ("!", "foo") into ("!foo") */
-						if (inv)
-						{
+						if (inv) {
 							*--p = '!';
 							inv = false;
 						}
 
-						if (!opt->parse(dest, p, true))
-						{
-							warn_elem(e, "has invalid value '%s'", p);
+						if (!opt->parse(dest, p,
+								true)) {
+							warn_elem(
+								e,
+								"has invalid value '%s'",
+								p);
 							valid = false;
 							continue;
 						}
@@ -1108,9 +979,12 @@ fw3_parse_options(void *s, const struct fw3_option *opts,
 
 					/* The last token was a sole "!" without any subsequent
 					 * text, so pass it to the option parser as-is. */
-					if (inv && !opt->parse(dest, "!", true))
-					{
-						warn_elem(e, "has invalid value '%s'", p);
+					if (inv &&
+					    !opt->parse(dest, "!", true)) {
+						warn_elem(
+							e,
+							"has invalid value '%s'",
+							p);
 						valid = false;
 					}
 				}
@@ -1127,10 +1001,8 @@ fw3_parse_options(void *s, const struct fw3_option *opts,
 	return valid;
 }
 
-
-bool
-fw3_parse_blob_options(void *s, const struct fw3_option *opts,
-                       struct blob_attr *a, const char *name)
+bool fw3_parse_blob_options(void *s, const struct fw3_option *opts,
+			    struct blob_attr *a, const char *name)
 {
 	char *p, *v, buf[16];
 	bool known;
@@ -1144,50 +1016,55 @@ fw3_parse_blob_options(void *s, const struct fw3_option *opts,
 	{
 		known = false;
 
-		for (opt = opts; opt->name; opt++)
-		{
+		for (opt = opts; opt->name; opt++) {
 			if (!opt->parse)
 				continue;
 
 			if (strcmp(opt->name, blobmsg_name(o)))
 				continue;
 
-			if (blobmsg_type(o) == BLOBMSG_TYPE_ARRAY)
-			{
-				if (!opt->elem_size)
-				{
-					fprintf(stderr, "%s: '%s' must not be a list\n",
-					        name, opt->name);
+			if (blobmsg_type(o) == BLOBMSG_TYPE_ARRAY) {
+				if (!opt->elem_size) {
+					fprintf(stderr,
+						"%s: '%s' must not be a list\n",
+						name, opt->name);
 
 					valid = false;
-				}
-				else
-				{
-					dest = (struct list_head *)((char *)s + opt->offset);
+				} else {
+					dest = (struct list_head *)((char *)s +
+								    opt->offset);
 
 					blobmsg_for_each_attr(e, o, erem)
 					{
-						if (blobmsg_type(e) == BLOBMSG_TYPE_INT32) {
-							snprintf(buf, sizeof(buf), "%d", blobmsg_get_u32(e));
+						if (blobmsg_type(e) ==
+						    BLOBMSG_TYPE_INT32) {
+							snprintf(
+								buf,
+								sizeof(buf),
+								"%d",
+								blobmsg_get_u32(
+									e));
 							v = buf;
 						} else {
-							v = blobmsg_get_string(e);
+							v = blobmsg_get_string(
+								e);
 						}
 
-						if (!opt->parse(dest, v, true))
-						{
-							fprintf(stderr, "%s: '%s' has invalid value '%s'\n",
-							        name, opt->name, v);
+						if (!opt->parse(dest, v,
+								true)) {
+							fprintf(stderr,
+								"%s: '%s' has invalid value '%s'\n",
+								name, opt->name,
+								v);
 							valid = false;
 							continue;
 						}
 					}
 				}
-			}
-			else
-			{
+			} else {
 				if (blobmsg_type(o) == BLOBMSG_TYPE_INT32) {
-					snprintf(buf, sizeof(buf), "%d", blobmsg_get_u32(o));
+					snprintf(buf, sizeof(buf), "%d",
+						 blobmsg_get_u32(o));
 					v = buf;
 				} else {
 					v = blobmsg_get_string(o);
@@ -1196,25 +1073,26 @@ fw3_parse_blob_options(void *s, const struct fw3_option *opts,
 				if (!v)
 					continue;
 
-				if (!opt->elem_size)
-				{
-					if (!opt->parse((char *)s + opt->offset, v, false))
-					{
-						fprintf(stderr, "%s: '%s' has invalid value '%s'\n",
-						        name, opt->name, v);
+				if (!opt->elem_size) {
+					if (!opt->parse((char *)s + opt->offset,
+							v, false)) {
+						fprintf(stderr,
+							"%s: '%s' has invalid value '%s'\n",
+							name, opt->name, v);
 						valid = false;
 					}
-				}
-				else
-				{
-					dest = (struct list_head *)((char *)s + opt->offset);
-
-					for (p = strtok(v, " \t"); p != NULL; p = strtok(NULL, " \t"))
-					{
-						if (!opt->parse(dest, p, true))
-						{
-							fprintf(stderr, "%s: '%s' has invalid value '%s'\n",
-							        name, opt->name, p);
+				} else {
+					dest = (struct list_head *)((char *)s +
+								    opt->offset);
+
+					for (p = strtok(v, " \t"); p != NULL;
+					     p = strtok(NULL, " \t")) {
+						if (!opt->parse(dest, p,
+								true)) {
+							fprintf(stderr,
+								"%s: '%s' has invalid value '%s'\n",
+								name, opt->name,
+								p);
 							valid = false;
 							continue;
 						}
@@ -1227,15 +1105,15 @@ fw3_parse_blob_options(void *s, const struct fw3_option *opts,
 		}
 
 		if (!known && strcmp(blobmsg_name(o), "type"))
-			fprintf(stderr, "%s: '%s' is unknown\n", name, blobmsg_name(o));
+			fprintf(stderr, "%s: '%s' is unknown\n", name,
+				blobmsg_name(o));
 	}
 
 	return valid;
 }
 
-
-const char *
-fw3_address_to_string(struct fw3_address *address, bool allow_invert, bool as_cidr)
+const char *fw3_address_to_string(struct fw3_address *address,
+				  bool allow_invert, bool as_cidr)
 {
 	char *p, ip[INET6_ADDRSTRLEN];
 	static char buf[INET6_ADDRSTRLEN * 2 + 2];
@@ -1246,28 +1124,24 @@ fw3_address_to_string(struct fw3_address *address, bool allow_invert, bool as_ci
 		p += sprintf(p, "!");
 
 	inet_ntop(address->family == FW3_FAMILY_V4 ? AF_INET : AF_INET6,
-	          &address->address.v4, ip, sizeof(ip));
+		  &address->address.v4, ip, sizeof(ip));
 
 	p += sprintf(p, "%s", ip);
 
-	if (address->range)
-	{
+	if (address->range) {
 		inet_ntop(address->family == FW3_FAMILY_V4 ? AF_INET : AF_INET6,
-		          &address->mask.v4, ip, sizeof(ip));
+			  &address->mask.v4, ip, sizeof(ip));
 
 		p += sprintf(p, "-%s", ip);
-	}
-	else if (!as_cidr)
-	{
+	} else if (!as_cidr) {
 		inet_ntop(address->family == FW3_FAMILY_V4 ? AF_INET : AF_INET6,
-		          &address->mask.v4, ip, sizeof(ip));
+			  &address->mask.v4, ip, sizeof(ip));
 
 		p += sprintf(p, "/%s", ip);
-	}
-	else
-	{
-		p += sprintf(p, "/%u", fw3_netmask2bitlen(address->family,
-		                                          &address->mask.v6));
+	} else {
+		p += sprintf(p, "/%u",
+			     fw3_netmask2bitlen(address->family,
+						&address->mask.v6));
 	}
 
 	return buf;
diff --git a/options.h b/options.h
index a75cfa3..6368a5c 100644
--- a/options.h
+++ b/options.h
@@ -19,7 +19,6 @@
 #ifndef __FW3_OPTIONS_H
 #define __FW3_OPTIONS_H
 
-
 #include <errno.h>
 
 #include <stdlib.h>
@@ -48,51 +47,46 @@
 #include "icmp_codes.h"
 #include "utils.h"
 
-
-enum fw3_table
-{
+enum fw3_table {
 	FW3_TABLE_FILTER = 0,
-	FW3_TABLE_NAT    = 1,
+	FW3_TABLE_NAT = 1,
 	FW3_TABLE_MANGLE = 2,
-	FW3_TABLE_RAW    = 3,
+	FW3_TABLE_RAW = 3,
 };
 
-enum fw3_family
-{
+enum fw3_family {
 	FW3_FAMILY_ANY = 0,
-	FW3_FAMILY_V4  = 4,
-	FW3_FAMILY_V6  = 5,
-};
-
-enum fw3_flag
-{
-	FW3_FLAG_UNSPEC        = 0,
-	FW3_FLAG_ACCEPT        = 6,
-	FW3_FLAG_REJECT        = 7,
-	FW3_FLAG_DROP          = 8,
-	FW3_FLAG_NOTRACK       = 9,
-	FW3_FLAG_HELPER        = 10,
-	FW3_FLAG_MARK          = 11,
-	FW3_FLAG_DSCP          = 12,
-	FW3_FLAG_DNAT          = 13,
-	FW3_FLAG_SNAT          = 14,
-	FW3_FLAG_MASQUERADE    = 15,
-	FW3_FLAG_SRC_ACCEPT    = 16,
-	FW3_FLAG_SRC_REJECT    = 17,
-	FW3_FLAG_SRC_DROP      = 18,
+	FW3_FAMILY_V4 = 4,
+	FW3_FAMILY_V6 = 5,
+};
+
+enum fw3_flag {
+	FW3_FLAG_UNSPEC = 0,
+	FW3_FLAG_ACCEPT = 6,
+	FW3_FLAG_REJECT = 7,
+	FW3_FLAG_DROP = 8,
+	FW3_FLAG_NOTRACK = 9,
+	FW3_FLAG_HELPER = 10,
+	FW3_FLAG_MARK = 11,
+	FW3_FLAG_DSCP = 12,
+	FW3_FLAG_DNAT = 13,
+	FW3_FLAG_SNAT = 14,
+	FW3_FLAG_MASQUERADE = 15,
+	FW3_FLAG_SRC_ACCEPT = 16,
+	FW3_FLAG_SRC_REJECT = 17,
+	FW3_FLAG_SRC_DROP = 18,
 	FW3_FLAG_CUSTOM_CHAINS = 19,
-	FW3_FLAG_SYN_FLOOD     = 20,
-	FW3_FLAG_MTU_FIX       = 21,
-	FW3_FLAG_DROP_INVALID  = 22,
-	FW3_FLAG_HOTPLUG       = 23,
+	FW3_FLAG_SYN_FLOOD = 20,
+	FW3_FLAG_MTU_FIX = 21,
+	FW3_FLAG_DROP_INVALID = 22,
+	FW3_FLAG_HOTPLUG = 23,
 
 	__FW3_FLAG_MAX
 };
 
-enum fw3_reject_code
-{
-	FW3_REJECT_CODE_TCP_RESET      = 0,
-	FW3_REJECT_CODE_PORT_UNREACH   = 1,
+enum fw3_reject_code {
+	FW3_REJECT_CODE_TCP_RESET = 0,
+	FW3_REJECT_CODE_PORT_UNREACH = 1,
 	FW3_REJECT_CODE_ADM_PROHIBITED = 2,
 
 	__FW3_REJECT_CODE_MAX
@@ -100,38 +94,33 @@ enum fw3_reject_code
 
 extern const char *fw3_flag_names[__FW3_FLAG_MAX];
 
-
-enum fw3_limit_unit
-{
+enum fw3_limit_unit {
 	FW3_LIMIT_UNIT_SECOND = 0,
 	FW3_LIMIT_UNIT_MINUTE = 1,
-	FW3_LIMIT_UNIT_HOUR   = 2,
-	FW3_LIMIT_UNIT_DAY    = 3,
+	FW3_LIMIT_UNIT_HOUR = 2,
+	FW3_LIMIT_UNIT_DAY = 3,
 
 	__FW3_LIMIT_UNIT_MAX
 };
 
 extern const char *fw3_limit_units[__FW3_LIMIT_UNIT_MAX];
 
-
-enum fw3_ipset_method
-{
+enum fw3_ipset_method {
 	FW3_IPSET_METHOD_UNSPEC = 0,
 	FW3_IPSET_METHOD_BITMAP = 1,
-	FW3_IPSET_METHOD_HASH   = 2,
-	FW3_IPSET_METHOD_LIST   = 3,
+	FW3_IPSET_METHOD_HASH = 2,
+	FW3_IPSET_METHOD_LIST = 3,
 
 	__FW3_IPSET_METHOD_MAX
 };
 
-enum fw3_ipset_type
-{
+enum fw3_ipset_type {
 	FW3_IPSET_TYPE_UNSPEC = 0,
-	FW3_IPSET_TYPE_IP     = 1,
-	FW3_IPSET_TYPE_PORT   = 2,
-	FW3_IPSET_TYPE_MAC    = 3,
-	FW3_IPSET_TYPE_NET    = 4,
-	FW3_IPSET_TYPE_SET    = 5,
+	FW3_IPSET_TYPE_IP = 1,
+	FW3_IPSET_TYPE_PORT = 2,
+	FW3_IPSET_TYPE_MAC = 3,
+	FW3_IPSET_TYPE_NET = 4,
+	FW3_IPSET_TYPE_SET = 5,
 
 	__FW3_IPSET_TYPE_MAX
 };
@@ -139,28 +128,23 @@ enum fw3_ipset_type
 extern const char *fw3_ipset_method_names[__FW3_IPSET_METHOD_MAX];
 extern const char *fw3_ipset_type_names[__FW3_IPSET_TYPE_MAX];
 
-
-enum fw3_include_type
-{
-	FW3_INC_TYPE_SCRIPT   = 0,
-	FW3_INC_TYPE_RESTORE  = 1,
+enum fw3_include_type {
+	FW3_INC_TYPE_SCRIPT = 0,
+	FW3_INC_TYPE_RESTORE = 1,
 };
 
-enum fw3_reflection_source
-{
+enum fw3_reflection_source {
 	FW3_REFLECTION_INTERNAL = 0,
 	FW3_REFLECTION_EXTERNAL = 1,
 };
 
-struct fw3_ipset_datatype
-{
+struct fw3_ipset_datatype {
 	struct list_head list;
 	enum fw3_ipset_type type;
 	const char *dir;
 };
 
-struct fw3_setmatch
-{
+struct fw3_setmatch {
 	bool set;
 	bool invert;
 	char name[32];
@@ -168,8 +152,7 @@ struct fw3_setmatch
 	struct fw3_ipset *ptr;
 };
 
-struct fw3_device
-{
+struct fw3_device {
 	struct list_head list;
 
 	bool set;
@@ -179,8 +162,7 @@ struct fw3_device
 	char network[32];
 };
 
-struct fw3_address
-{
+struct fw3_address {
 	struct list_head list;
 
 	bool set;
@@ -200,8 +182,7 @@ struct fw3_address
 	} mask;
 };
 
-struct fw3_mac
-{
+struct fw3_mac {
 	struct list_head list;
 
 	bool set;
@@ -209,8 +190,7 @@ struct fw3_mac
 	struct ether_addr mac;
 };
 
-struct fw3_protocol
-{
+struct fw3_protocol {
 	struct list_head list;
 
 	bool any;
@@ -218,8 +198,7 @@ struct fw3_protocol
 	uint32_t protocol;
 };
 
-struct fw3_port
-{
+struct fw3_port {
 	struct list_head list;
 
 	bool set;
@@ -228,8 +207,7 @@ struct fw3_port
 	uint16_t port_max;
 };
 
-struct fw3_icmptype
-{
+struct fw3_icmptype {
 	struct list_head list;
 
 	bool invert;
@@ -242,42 +220,37 @@ struct fw3_icmptype
 	uint8_t code6_max;
 };
 
-struct fw3_limit
-{
+struct fw3_limit {
 	bool invert;
 	int rate;
 	int burst;
 	enum fw3_limit_unit unit;
 };
 
-struct fw3_time
-{
+struct fw3_time {
 	bool utc;
 	struct tm datestart;
 	struct tm datestop;
 	uint32_t timestart;
 	uint32_t timestop;
 	uint32_t monthdays; /* bit 0 is invert + 1 .. 31 */
-	uint8_t weekdays;   /* bit 0 is invert + 1 .. 7 */
+	uint8_t weekdays; /* bit 0 is invert + 1 .. 7 */
 };
 
-struct fw3_mark
-{
+struct fw3_mark {
 	bool set;
 	bool invert;
 	uint32_t mark;
 	uint32_t mask;
 };
 
-struct fw3_dscp
-{
+struct fw3_dscp {
 	bool set;
 	bool invert;
 	uint8_t dscp;
 };
 
-struct fw3_cthelpermatch
-{
+struct fw3_cthelpermatch {
 	struct list_head list;
 
 	bool set;
@@ -286,8 +259,7 @@ struct fw3_cthelpermatch
 	struct fw3_cthelper *ptr;
 };
 
-struct fw3_defaults
-{
+struct fw3_defaults {
 	enum fw3_flag policy_input;
 	enum fw3_flag policy_output;
 	enum fw3_flag policy_forward;
@@ -316,8 +288,7 @@ struct fw3_defaults
 	uint32_t flags[2];
 };
 
-struct fw3_zone
-{
+struct fw3_zone {
 	struct list_head list;
 
 	bool enabled;
@@ -356,8 +327,7 @@ struct fw3_zone
 	struct list_head old_addrs;
 };
 
-struct fw3_rule
-{
+struct fw3_rule {
 	struct list_head list;
 
 	bool enabled;
@@ -401,8 +371,7 @@ struct fw3_rule
 	const char *extra;
 };
 
-struct fw3_redirect
-{
+struct fw3_redirect {
 	struct list_head list;
 
 	bool enabled;
@@ -443,8 +412,7 @@ struct fw3_redirect
 	enum fw3_reflection_source reflection_src;
 };
 
-struct fw3_snat
-{
+struct fw3_snat {
 	struct list_head list;
 
 	bool enabled;
@@ -480,8 +448,7 @@ struct fw3_snat
 	const char *extra;
 };
 
-struct fw3_forward
-{
+struct fw3_forward {
 	struct list_head list;
 
 	bool enabled;
@@ -496,8 +463,7 @@ struct fw3_forward
 	struct fw3_device dest;
 };
 
-struct fw3_ipset
-{
+struct fw3_ipset {
 	struct list_head list;
 
 	bool enabled;
@@ -524,8 +490,7 @@ struct fw3_ipset
 	uint32_t flags[2];
 };
 
-struct fw3_include
-{
+struct fw3_include {
 	struct list_head list;
 
 	bool enabled;
@@ -538,8 +503,7 @@ struct fw3_include
 	bool reload;
 };
 
-struct fw3_cthelper
-{
+struct fw3_cthelper {
 	struct list_head list;
 
 	bool enabled;
@@ -551,14 +515,12 @@ struct fw3_cthelper
 	struct fw3_port port;
 };
 
-struct fw3_setentry
-{
+struct fw3_setentry {
 	struct list_head list;
 	const char *value;
 };
 
-struct fw3_state
-{
+struct fw3_state {
 	struct uci_context *uci;
 	struct fw3_defaults defaults;
 	struct list_head zones;
@@ -581,21 +543,25 @@ struct fw3_chain_spec {
 	const char *format;
 };
 
-
-struct fw3_option
-{
+struct fw3_option {
 	const char *name;
 	bool (*parse)(void *, const char *, bool);
 	uintptr_t offset;
 	size_t elem_size;
 };
 
-#define FW3_OPT(name, parse, structure, member) \
-	{ name, fw3_parse_##parse, offsetof(struct fw3_##structure, member) }
+#define FW3_OPT(name, parse, structure, member)                                \
+	{                                                                      \
+		name, fw3_parse_##parse,                                       \
+			offsetof(struct fw3_##structure, member)               \
+	}
 
-#define FW3_LIST(name, parse, structure, member) \
-	{ name, fw3_parse_##parse, offsetof(struct fw3_##structure, member), \
-	  sizeof(struct fw3_##structure) }
+#define FW3_LIST(name, parse, structure, member)                               \
+	{                                                                      \
+		name, fw3_parse_##parse,                                       \
+			offsetof(struct fw3_##structure, member),              \
+			sizeof(struct fw3_##structure)                         \
+	}
 
 bool fw3_parse_bool(void *ptr, const char *val, bool is_list);
 bool fw3_parse_int(void *ptr, const char *val, bool is_list);
@@ -630,11 +596,11 @@ bool fw3_parse_cthelper(void *ptr, const char *val, bool is_list);
 bool fw3_parse_setentry(void *ptr, const char *val, bool is_list);
 
 bool fw3_parse_options(void *s, const struct fw3_option *opts,
-                       struct uci_section *section);
+		       struct uci_section *section);
 bool fw3_parse_blob_options(void *s, const struct fw3_option *opts,
-                            struct blob_attr *a, const char *name);
+			    struct blob_attr *a, const char *name);
 
-const char * fw3_address_to_string(struct fw3_address *address,
-                                   bool allow_invert, bool as_cidr);
+const char *fw3_address_to_string(struct fw3_address *address,
+				  bool allow_invert, bool as_cidr);
 
 #endif
diff --git a/redirects.c b/redirects.c
index 97529ee..fe2afc5 100644
--- a/redirects.c
+++ b/redirects.c
@@ -18,102 +18,92 @@
 
 #include "redirects.h"
 
-
 const struct fw3_option fw3_redirect_opts[] = {
-	FW3_OPT("enabled",             bool,      redirect,     enabled),
+	FW3_OPT("enabled", bool, redirect, enabled),
 
-	FW3_OPT("name",                string,    redirect,     name),
-	FW3_OPT("family",              family,    redirect,     family),
+	FW3_OPT("name", string, redirect, name),
+	FW3_OPT("family", family, redirect, family),
 
-	FW3_OPT("src",                 device,    redirect,     src),
-	FW3_OPT("dest",                device,    redirect,     dest),
+	FW3_OPT("src", device, redirect, src),
+	FW3_OPT("dest", device, redirect, dest),
 
-	FW3_OPT("ipset",               setmatch,  redirect,     ipset),
-	FW3_OPT("helper",              cthelper,  redirect,     helper),
+	FW3_OPT("ipset", setmatch, redirect, ipset),
+	FW3_OPT("helper", cthelper, redirect, helper),
 
-	FW3_LIST("proto",              protocol,  redirect,     proto),
+	FW3_LIST("proto", protocol, redirect, proto),
 
-	FW3_OPT("src_ip",              network,   redirect,     ip_src),
-	FW3_LIST("src_mac",            mac,       redirect,     mac_src),
-	FW3_OPT("src_port",            port,      redirect,     port_src),
+	FW3_OPT("src_ip", network, redirect, ip_src),
+	FW3_LIST("src_mac", mac, redirect, mac_src),
+	FW3_OPT("src_port", port, redirect, port_src),
 
-	FW3_OPT("src_dip",             network,   redirect,     ip_dest),
-	FW3_OPT("src_dport",           port,      redirect,     port_dest),
+	FW3_OPT("src_dip", network, redirect, ip_dest),
+	FW3_OPT("src_dport", port, redirect, port_dest),
 
-	FW3_OPT("dest_ip",             network,   redirect,     ip_redir),
-	FW3_OPT("dest_port",           port,      redirect,     port_redir),
+	FW3_OPT("dest_ip", network, redirect, ip_redir),
+	FW3_OPT("dest_port", port, redirect, port_redir),
 
-	FW3_OPT("extra",               string,    redirect,     extra),
+	FW3_OPT("extra", string, redirect, extra),
 
-	FW3_OPT("limit",               limit,     redirect,     limit),
-	FW3_OPT("limit_burst",         int,       redirect,     limit.burst),
+	FW3_OPT("limit", limit, redirect, limit),
+	FW3_OPT("limit_burst", int, redirect, limit.burst),
 
-	FW3_OPT("utc_time",            bool,      redirect,     time.utc),
-	FW3_OPT("start_date",          date,      redirect,     time.datestart),
-	FW3_OPT("stop_date",           date,      redirect,     time.datestop),
-	FW3_OPT("start_time",          time,      redirect,     time.timestart),
-	FW3_OPT("stop_time",           time,      redirect,     time.timestop),
-	FW3_OPT("weekdays",            weekdays,  redirect,     time.weekdays),
-	FW3_OPT("monthdays",           monthdays, redirect,     time.monthdays),
+	FW3_OPT("utc_time", bool, redirect, time.utc),
+	FW3_OPT("start_date", date, redirect, time.datestart),
+	FW3_OPT("stop_date", date, redirect, time.datestop),
+	FW3_OPT("start_time", time, redirect, time.timestart),
+	FW3_OPT("stop_time", time, redirect, time.timestop),
+	FW3_OPT("weekdays", weekdays, redirect, time.weekdays),
+	FW3_OPT("monthdays", monthdays, redirect, time.monthdays),
 
-	FW3_OPT("mark",                mark,      redirect,     mark),
+	FW3_OPT("mark", mark, redirect, mark),
 
-	FW3_OPT("reflection",          bool,      redirect,     reflection),
-	FW3_OPT("reflection_src",      reflection_source,
-	                                          redirect,     reflection_src),
+	FW3_OPT("reflection", bool, redirect, reflection),
+	FW3_OPT("reflection_src", reflection_source, redirect, reflection_src),
 
-	FW3_OPT("target",              target,    redirect,     target),
+	FW3_OPT("target", target, redirect, target),
 
-	{ }
+	{}
 };
 
-
-static bool
-check_families(struct uci_element *e, struct fw3_redirect *r)
+static bool check_families(struct uci_element *e, struct fw3_redirect *r)
 {
 	if (r->family == FW3_FAMILY_ANY)
 		return true;
 
-	if (r->_src && r->_src->family && r->_src->family != r->family)
-	{
+	if (r->_src && r->_src->family && r->_src->family != r->family) {
 		warn_elem(e, "refers to source zone with different family");
 		return false;
 	}
 
-	if (r->_dest && r->_dest->family && r->_dest->family != r->family)
-	{
-		warn_elem(e, "refers to destination zone with different family");
+	if (r->_dest && r->_dest->family && r->_dest->family != r->family) {
+		warn_elem(e,
+			  "refers to destination zone with different family");
 		return false;
 	}
 
 	if (r->ipset.ptr && r->ipset.ptr->family &&
-	    r->ipset.ptr->family != r->family)
-	{
+	    r->ipset.ptr->family != r->family) {
 		warn_elem(e, "refers to ipset with different family");
 		return false;
 	}
 
 	if (r->helper.ptr && r->helper.ptr->family &&
-	    r->helper.ptr->family != r->family)
-	{
+	    r->helper.ptr->family != r->family) {
 		warn_elem(e, "refers to CT helper not supporting family");
 		return false;
 	}
 
-	if (r->ip_src.family && r->ip_src.family != r->family)
-	{
+	if (r->ip_src.family && r->ip_src.family != r->family) {
 		warn_elem(e, "uses source ip with different family");
 		return false;
 	}
 
-	if (r->ip_dest.family && r->ip_dest.family != r->family)
-	{
+	if (r->ip_dest.family && r->ip_dest.family != r->family) {
 		warn_elem(e, "uses destination ip with different family");
 		return false;
 	}
 
-	if (r->ip_redir.family && r->ip_redir.family != r->family)
-	{
+	if (r->ip_redir.family && r->ip_redir.family != r->family) {
 		warn_elem(e, "uses redirect ip with different family");
 		return false;
 	}
@@ -121,19 +111,17 @@ check_families(struct uci_element *e, struct fw3_redirect *r)
 	return true;
 }
 
-static bool
-compare_addr(struct fw3_address *a, struct fw3_address *b)
+static bool compare_addr(struct fw3_address *a, struct fw3_address *b)
 {
 	if (a->family != FW3_FAMILY_V4 || b->family != FW3_FAMILY_V4)
 		return false;
 
 	return ((a->address.v4.s_addr & a->mask.v4.s_addr) ==
-	        (b->address.v4.s_addr & a->mask.v4.s_addr));
+		(b->address.v4.s_addr & a->mask.v4.s_addr));
 }
 
-static bool
-resolve_dest(struct uci_element *e, struct fw3_redirect *redir,
-             struct fw3_state *state)
+static bool resolve_dest(struct uci_element *e, struct fw3_redirect *redir,
+			 struct fw3_state *state)
 {
 	struct fw3_zone *zone;
 	struct fw3_address *addr;
@@ -142,19 +130,18 @@ resolve_dest(struct uci_element *e, struct fw3_redirect *redir,
 	if (!redir->ip_redir.set)
 		return false;
 
-	list_for_each_entry(zone, &state->zones, list)
-	{
+	list_for_each_entry (zone, &state->zones, list) {
 		addrs = fw3_resolve_zone_addresses(zone, NULL);
 
 		if (!addrs)
 			continue;
 
-		list_for_each_entry(addr, addrs, list)
-		{
+		list_for_each_entry (addr, addrs, list) {
 			if (!compare_addr(addr, &redir->ip_redir))
 				continue;
 
-			strncpy(redir->dest.name, zone->name, sizeof(redir->dest.name) - 1);
+			strncpy(redir->dest.name, zone->name,
+				sizeof(redir->dest.name) - 1);
 			redir->dest.set = true;
 			redir->_dest = zone;
 
@@ -170,9 +157,8 @@ resolve_dest(struct uci_element *e, struct fw3_redirect *redir,
 	return false;
 }
 
-static bool
-check_local(struct uci_element *e, struct fw3_redirect *redir,
-            struct fw3_state *state)
+static bool check_local(struct uci_element *e, struct fw3_redirect *redir,
+			struct fw3_state *state)
 {
 	if (redir->target != FW3_FLAG_DNAT)
 		return false;
@@ -183,8 +169,7 @@ check_local(struct uci_element *e, struct fw3_redirect *redir,
 	return redir->local;
 }
 
-static void
-select_helper(struct fw3_state *state, struct fw3_redirect *redir)
+static void select_helper(struct fw3_state *state, struct fw3_redirect *redir)
 {
 	struct fw3_protocol *proto;
 	struct fw3_cthelper *helper;
@@ -205,9 +190,9 @@ select_helper(struct fw3_state *state, struct fw3_redirect *redir)
 	if (list_empty(&redir->proto))
 		return;
 
-	list_for_each_entry(proto, &redir->proto, list)
-	{
-		helper = fw3_lookup_cthelper_by_proto_port(state, proto, &redir->port_redir);
+	list_for_each_entry (proto, &redir->proto, list) {
+		helper = fw3_lookup_cthelper_by_proto_port(state, proto,
+							   &redir->port_redir);
 
 		if (helper)
 			n_matches++;
@@ -225,125 +210,132 @@ select_helper(struct fw3_state *state, struct fw3_redirect *redir)
 	set(redir->_src->flags, FW3_FAMILY_V4, FW3_FLAG_HELPER);
 }
 
-static bool
-check_redirect(struct fw3_state *state, struct fw3_redirect *redir, struct uci_element *e)
+static bool check_redirect(struct fw3_state *state, struct fw3_redirect *redir,
+			   struct uci_element *e)
 {
 	bool valid;
 
 	if (!redir->enabled)
 		return false;
 
-	if (redir->src.invert)
-	{
-		warn_section("redirect", redir, e, "must not have an inverted source");
+	if (redir->src.invert) {
+		warn_section("redirect", redir, e,
+			     "must not have an inverted source");
 		return false;
-	}
-	else if (redir->src.set && !redir->src.any &&
-			!(redir->_src = fw3_lookup_zone(state, redir->src.name)))
-	{
-		warn_section("redirect", redir, e, "refers to not existing zone '%s'",
-				redir->src.name);
+	} else if (redir->src.set && !redir->src.any &&
+		   !(redir->_src = fw3_lookup_zone(state, redir->src.name))) {
+		warn_section("redirect", redir, e,
+			     "refers to not existing zone '%s'",
+			     redir->src.name);
 		return false;
-	}
-	else if (redir->dest.set && !redir->dest.any &&
-			!(redir->_dest = fw3_lookup_zone(state, redir->dest.name)))
-	{
-		warn_section("redirect", redir, e, "refers to not existing zone '%s'",
-				redir->dest.name);
+	} else if (redir->dest.set && !redir->dest.any &&
+		   !(redir->_dest = fw3_lookup_zone(state, redir->dest.name))) {
+		warn_section("redirect", redir, e,
+			     "refers to not existing zone '%s'",
+			     redir->dest.name);
 		return false;
-	}
-	else if (redir->ipset.set && state->disable_ipsets)
-	{
-		warn_section("redirect", redir, e, "skipped due to disabled ipset support",
-				redir->name);
+	} else if (redir->ipset.set && state->disable_ipsets) {
+		warn_section("redirect", redir, e,
+			     "skipped due to disabled ipset support",
+			     redir->name);
 		return false;
-	}
-	else if (redir->ipset.set &&
-			!(redir->ipset.ptr = fw3_lookup_ipset(state, redir->ipset.name)))
-	{
-		warn_section("redirect", redir, e, "refers to unknown ipset '%s'", redir->name,
-				redir->ipset.name);
+	} else if (redir->ipset.set && !(redir->ipset.ptr = fw3_lookup_ipset(
+						 state, redir->ipset.name))) {
+		warn_section("redirect", redir, e,
+			     "refers to unknown ipset '%s'", redir->name,
+			     redir->ipset.name);
 		return false;
-	}
-	else if (redir->helper.set &&
-	         !(redir->helper.ptr = fw3_lookup_cthelper(state, redir->helper.name)))
-	{
-		warn_section("redirect", redir, e, "refers to unknown CT helper '%s'",
-		             redir->helper.name);
+	} else if (redir->helper.set &&
+		   !(redir->helper.ptr =
+			     fw3_lookup_cthelper(state, redir->helper.name))) {
+		warn_section("redirect", redir, e,
+			     "refers to unknown CT helper '%s'",
+			     redir->helper.name);
 		return false;
 	}
 
 	if (!check_families(e, redir))
 		return false;
 
-	if (redir->target == FW3_FLAG_UNSPEC)
-	{
-		warn_section("redirect", redir, e, "has no target specified, defaulting to DNAT");
+	if (redir->target == FW3_FLAG_UNSPEC) {
+		warn_section("redirect", redir, e,
+			     "has no target specified, defaulting to DNAT");
 		redir->target = FW3_FLAG_DNAT;
-	}
-	else if (redir->target < FW3_FLAG_DNAT || redir->target > FW3_FLAG_SNAT)
-	{
-		warn_section("redirect", redir, e, "has invalid target specified, defaulting to DNAT");
+	} else if (redir->target < FW3_FLAG_DNAT ||
+		   redir->target > FW3_FLAG_SNAT) {
+		warn_section(
+			"redirect", redir, e,
+			"has invalid target specified, defaulting to DNAT");
 		redir->target = FW3_FLAG_DNAT;
 	}
 
 	valid = false;
 
-	if (redir->target == FW3_FLAG_DNAT)
-	{
+	if (redir->target == FW3_FLAG_DNAT) {
 		if (redir->src.any)
-			warn_section("redirect", redir, e, "must not have source '*' for DNAT target");
+			warn_section(
+				"redirect", redir, e,
+				"must not have source '*' for DNAT target");
 		else if (!redir->_src)
-			warn_section("redirect", redir, e, "has no source specified");
+			warn_section("redirect", redir, e,
+				     "has no source specified");
 		else if (redir->helper.invert)
-			warn_section("redirect", redir, e, "must not use a negated helper match");
-		else
-		{
+			warn_section("redirect", redir, e,
+				     "must not use a negated helper match");
+		else {
 			set(redir->_src->flags, FW3_FAMILY_V4, redir->target);
 			valid = true;
 
 			if (!check_local(e, redir, state) && !redir->dest.set &&
-					resolve_dest(e, redir, state))
-			{
-				warn_section("redirect", redir, e,
-						"does not specify a destination, assuming '%s'",
-						redir->dest.name);
+			    resolve_dest(e, redir, state)) {
+				warn_section(
+					"redirect", redir, e,
+					"does not specify a destination, assuming '%s'",
+					redir->dest.name);
 			}
 
-			if (redir->reflection && redir->_dest && redir->_src->masq)
-			{
-				set(redir->_dest->flags, FW3_FAMILY_V4, FW3_FLAG_ACCEPT);
-				set(redir->_dest->flags, FW3_FAMILY_V4, FW3_FLAG_DNAT);
-				set(redir->_dest->flags, FW3_FAMILY_V4, FW3_FLAG_SNAT);
+			if (redir->reflection && redir->_dest &&
+			    redir->_src->masq) {
+				set(redir->_dest->flags, FW3_FAMILY_V4,
+				    FW3_FLAG_ACCEPT);
+				set(redir->_dest->flags, FW3_FAMILY_V4,
+				    FW3_FLAG_DNAT);
+				set(redir->_dest->flags, FW3_FAMILY_V4,
+				    FW3_FLAG_SNAT);
 			}
 
 			if (redir->helper.ptr)
-				set(redir->_src->flags, FW3_FAMILY_V4, FW3_FLAG_HELPER);
+				set(redir->_src->flags, FW3_FAMILY_V4,
+				    FW3_FLAG_HELPER);
 		}
-	}
-	else
-	{
+	} else {
 		if (redir->dest.any)
-			warn_section("redirect", redir, e,
-					"must not have destination '*' for SNAT target");
+			warn_section(
+				"redirect", redir, e,
+				"must not have destination '*' for SNAT target");
 		else if (!redir->_dest)
-			warn_section("redirect", redir, e, "has no destination specified");
+			warn_section("redirect", redir, e,
+				     "has no destination specified");
 		else if (!redir->ip_dest.set)
-			warn_section("redirect", redir, e, "has no src_dip option specified");
+			warn_section("redirect", redir, e,
+				     "has no src_dip option specified");
 		else if (!list_empty(&redir->mac_src))
-			warn_section("redirect", redir, e, "must not use 'src_mac' option for SNAT target");
+			warn_section(
+				"redirect", redir, e,
+				"must not use 'src_mac' option for SNAT target");
 		else if (redir->helper.set)
-			warn_section("redirect", redir, e, "must not use 'helper' option for SNAT target");
-		else
-		{
+			warn_section(
+				"redirect", redir, e,
+				"must not use 'helper' option for SNAT target");
+		else {
 			set(redir->_dest->flags, FW3_FAMILY_V4, redir->target);
 			valid = true;
 		}
 	}
 
-	if (list_empty(&redir->proto))
-	{
-		warn_section("redirect", redir, e, "does not specify a protocol, assuming TCP+UDP");
+	if (list_empty(&redir->proto)) {
+		warn_section("redirect", redir, e,
+			     "does not specify a protocol, assuming TCP+UDP");
 		fw3_parse_protocol(&redir->proto, "tcpudp", true);
 	}
 
@@ -356,8 +348,7 @@ check_redirect(struct fw3_state *state, struct fw3_redirect *redir, struct uci_e
 	return true;
 }
 
-static struct fw3_redirect *
-fw3_alloc_redirect(struct fw3_state *state)
+static struct fw3_redirect *fw3_alloc_redirect(struct fw3_state *state)
 {
 	struct fw3_redirect *redir;
 
@@ -376,9 +367,8 @@ fw3_alloc_redirect(struct fw3_state *state)
 	return redir;
 }
 
-void
-fw3_load_redirects(struct fw3_state *state, struct uci_package *p,
-		struct blob_attr *a)
+void fw3_load_redirects(struct fw3_state *state, struct uci_package *p,
+			struct blob_attr *a)
 {
 	struct uci_section *s;
 	struct uci_element *e;
@@ -403,9 +393,10 @@ fw3_load_redirects(struct fw3_state *state, struct uci_package *p,
 		if (!redir)
 			continue;
 
-		if (!fw3_parse_blob_options(redir, fw3_redirect_opts, entry, name))
-		{
-			warn_section("redirect", redir, NULL, "skipped due to invalid options");
+		if (!fw3_parse_blob_options(redir, fw3_redirect_opts, entry,
+					    name)) {
+			warn_section("redirect", redir, NULL,
+				     "skipped due to invalid options");
 			fw3_free_redirect(redir);
 			continue;
 		}
@@ -429,8 +420,7 @@ fw3_load_redirects(struct fw3_state *state, struct uci_package *p,
 		if (!redir)
 			continue;
 
-		if (!fw3_parse_options(redir, fw3_redirect_opts, s))
-		{
+		if (!fw3_parse_options(redir, fw3_redirect_opts, s)) {
 			warn_elem(e, "skipped due to invalid options");
 			fw3_free_redirect(redir);
 			continue;
@@ -445,8 +435,7 @@ fw3_load_redirects(struct fw3_state *state, struct uci_package *p,
 	}
 }
 
-static void
-append_chain_nat(struct fw3_ipt_rule *r, struct fw3_redirect *redir)
+static void append_chain_nat(struct fw3_ipt_rule *r, struct fw3_redirect *redir)
 {
 	if (redir->target == FW3_FLAG_DNAT)
 		fw3_ipt_rule_append(r, "zone_%s_prerouting", redir->src.name);
@@ -454,107 +443,96 @@ append_chain_nat(struct fw3_ipt_rule *r, struct fw3_redirect *redir)
 		fw3_ipt_rule_append(r, "zone_%s_postrouting", redir->dest.name);
 }
 
-static void
-set_redirect(struct fw3_ipt_rule *r, struct fw3_port *port)
+static void set_redirect(struct fw3_ipt_rule *r, struct fw3_port *port)
 {
 	char buf[sizeof("65535-65535\0")];
 
 	fw3_ipt_rule_target(r, "REDIRECT");
 
-	if (port && port->set)
-	{
+	if (port && port->set) {
 		if (port->port_min == port->port_max)
 			sprintf(buf, "%u", port->port_min);
 		else
-			snprintf(buf, sizeof(buf), "%u-%u", port->port_min, port->port_max);
+			snprintf(buf, sizeof(buf), "%u-%u", port->port_min,
+				 port->port_max);
 
 		fw3_ipt_rule_addarg(r, false, "--to-ports", buf);
 	}
 }
 
-static void
-set_snat_dnat(struct fw3_ipt_rule *r, enum fw3_flag target,
-              struct fw3_address *addr, struct fw3_port *port)
+static void set_snat_dnat(struct fw3_ipt_rule *r, enum fw3_flag target,
+			  struct fw3_address *addr, struct fw3_port *port)
 {
 	char buf[sizeof("255.255.255.255:65535-65535\0")];
 
 	buf[0] = '\0';
 
-	if (addr && addr->set)
-	{
+	if (addr && addr->set) {
 		inet_ntop(AF_INET, &addr->address.v4, buf, sizeof(buf));
 	}
 
-	if (port && port->set)
-	{
+	if (port && port->set) {
 		if (port->port_min == port->port_max)
 			sprintf(buf + strlen(buf), ":%u", port->port_min);
 		else
-			sprintf(buf + strlen(buf), ":%u-%u",
-			        port->port_min, port->port_max);
+			sprintf(buf + strlen(buf), ":%u-%u", port->port_min,
+				port->port_max);
 	}
 
-	if (target == FW3_FLAG_DNAT)
-	{
+	if (target == FW3_FLAG_DNAT) {
 		fw3_ipt_rule_target(r, "DNAT");
 		fw3_ipt_rule_addarg(r, false, "--to-destination", buf);
-	}
-	else
-	{
+	} else {
 		fw3_ipt_rule_target(r, "SNAT");
 		fw3_ipt_rule_addarg(r, false, "--to-source", buf);
 	}
 }
 
-static void
-set_target_nat(struct fw3_ipt_rule *r, struct fw3_redirect *redir)
+static void set_target_nat(struct fw3_ipt_rule *r, struct fw3_redirect *redir)
 {
 	if (redir->local)
 		set_redirect(r, &redir->port_redir);
 	else if (redir->target == FW3_FLAG_DNAT)
-		set_snat_dnat(r, redir->target, &redir->ip_redir, &redir->port_redir);
+		set_snat_dnat(r, redir->target, &redir->ip_redir,
+			      &redir->port_redir);
 	else
-		set_snat_dnat(r, redir->target, &redir->ip_dest, &redir->port_dest);
+		set_snat_dnat(r, redir->target, &redir->ip_dest,
+			      &redir->port_dest);
 }
 
-static void
-set_comment(struct fw3_ipt_rule *r, const char *name, int num, const char *suffix)
+static void set_comment(struct fw3_ipt_rule *r, const char *name, int num,
+			const char *suffix)
 {
-	if (name)
-	{
+	if (name) {
 		if (suffix)
 			fw3_ipt_rule_comment(r, "%s (%s)", name, suffix);
 		else
 			fw3_ipt_rule_comment(r, name);
-	}
-	else
-	{
+	} else {
 		if (suffix)
-			fw3_ipt_rule_comment(r, "@redirect[%u] (%s)", num, suffix);
+			fw3_ipt_rule_comment(r, "@redirect[%u] (%s)", num,
+					     suffix);
 		else
 			fw3_ipt_rule_comment(r, "@redirect[%u]", num);
 	}
 }
 
-static void
-print_redirect(struct fw3_ipt_handle *h, struct fw3_state *state,
-               struct fw3_redirect *redir, int num,
-               struct fw3_protocol *proto, struct fw3_mac *mac)
+static void print_redirect(struct fw3_ipt_handle *h, struct fw3_state *state,
+			   struct fw3_redirect *redir, int num,
+			   struct fw3_protocol *proto, struct fw3_mac *mac)
 {
 	struct fw3_ipt_rule *r;
 	struct fw3_address *src, *dst;
 	struct fw3_port *spt, *dpt;
 
-	switch (h->table)
-	{
+	switch (h->table) {
 	case FW3_TABLE_NAT:
 		src = &redir->ip_src;
 		dst = &redir->ip_dest;
 		spt = &redir->port_src;
 		dpt = &redir->port_dest;
 
-		if (redir->target == FW3_FLAG_SNAT)
-		{
+		if (redir->target == FW3_FLAG_SNAT) {
 			dst = &redir->ip_redir;
 			dpt = &redir->port_redir;
 		}
@@ -574,12 +552,12 @@ print_redirect(struct fw3_ipt_handle *h, struct fw3_state *state,
 		break;
 
 	case FW3_TABLE_RAW:
-		if (redir->target == FW3_FLAG_DNAT && redir->helper.ptr)
-		{
-			if (!fw3_cthelper_check_proto(redir->helper.ptr, proto))
-			{
+		if (redir->target == FW3_FLAG_DNAT && redir->helper.ptr) {
+			if (!fw3_cthelper_check_proto(redir->helper.ptr,
+						      proto)) {
 				info("     ! Skipping protocol %s since helper '%s' does not support it",
-				     fw3_protoname(proto), redir->helper.ptr->name);
+				     fw3_protoname(proto),
+				     redir->helper.ptr->name);
 				return;
 			}
 
@@ -587,8 +565,11 @@ print_redirect(struct fw3_ipt_handle *h, struct fw3_state *state,
 				info("     - Auto-selected conntrack helper '%s' based on proto/port",
 				     redir->helper.ptr->name);
 
-			r = fw3_ipt_rule_create(h, proto, NULL, NULL, &redir->ip_src, &redir->ip_redir);
-			fw3_ipt_rule_sport_dport(r, &redir->port_src, &redir->port_redir);
+			r = fw3_ipt_rule_create(h, proto, NULL, NULL,
+						&redir->ip_src,
+						&redir->ip_redir);
+			fw3_ipt_rule_sport_dport(r, &redir->port_src,
+						 &redir->port_redir);
 			fw3_ipt_rule_mac(r, mac);
 			fw3_ipt_rule_ipset(r, &redir->ipset);
 			fw3_ipt_rule_limit(r, &redir->limit);
@@ -597,9 +578,11 @@ print_redirect(struct fw3_ipt_handle *h, struct fw3_state *state,
 			fw3_ipt_rule_addarg(r, false, "-m", "conntrack");
 			fw3_ipt_rule_addarg(r, false, "--ctstate", "DNAT");
 			fw3_ipt_rule_target(r, "CT");
-			fw3_ipt_rule_addarg(r, false, "--helper", redir->helper.ptr->name);
+			fw3_ipt_rule_addarg(r, false, "--helper",
+					    redir->helper.ptr->name);
 			set_comment(r, redir->name, num, "CT helper");
-			fw3_ipt_rule_append(r, "zone_%s_helper", redir->_src->name);
+			fw3_ipt_rule_append(r, "zone_%s_helper",
+					    redir->_src->name);
 		}
 		break;
 
@@ -608,32 +591,33 @@ print_redirect(struct fw3_ipt_handle *h, struct fw3_state *state,
 	}
 }
 
-static void
-print_reflection(struct fw3_ipt_handle *h, struct fw3_state *state,
-                 struct fw3_redirect *redir, int num,
-                 struct fw3_protocol *proto, struct fw3_address *ra,
-                 struct fw3_address *ia, struct fw3_address *ea)
+static void print_reflection(struct fw3_ipt_handle *h, struct fw3_state *state,
+			     struct fw3_redirect *redir, int num,
+			     struct fw3_protocol *proto, struct fw3_address *ra,
+			     struct fw3_address *ia, struct fw3_address *ea)
 {
 	struct fw3_ipt_rule *r;
 
-	switch (h->table)
-	{
+	switch (h->table) {
 	case FW3_TABLE_NAT:
 		r = fw3_ipt_rule_create(h, proto, NULL, NULL, ia, ea);
 		fw3_ipt_rule_sport_dport(r, NULL, &redir->port_dest);
 		fw3_ipt_rule_limit(r, &redir->limit);
 		fw3_ipt_rule_time(r, &redir->time);
 		set_comment(r, redir->name, num, "reflection");
-		set_snat_dnat(r, FW3_FLAG_DNAT, &redir->ip_redir, &redir->port_redir);
+		set_snat_dnat(r, FW3_FLAG_DNAT, &redir->ip_redir,
+			      &redir->port_redir);
 		fw3_ipt_rule_replace(r, "zone_%s_prerouting", redir->dest.name);
 
-		r = fw3_ipt_rule_create(h, proto, NULL, NULL, ia, &redir->ip_redir);
+		r = fw3_ipt_rule_create(h, proto, NULL, NULL, ia,
+					&redir->ip_redir);
 		fw3_ipt_rule_sport_dport(r, NULL, &redir->port_redir);
 		fw3_ipt_rule_limit(r, &redir->limit);
 		fw3_ipt_rule_time(r, &redir->time);
 		set_comment(r, redir->name, num, "reflection");
 		set_snat_dnat(r, FW3_FLAG_SNAT, ra, NULL);
-		fw3_ipt_rule_replace(r, "zone_%s_postrouting", redir->dest.name);
+		fw3_ipt_rule_replace(r, "zone_%s_postrouting",
+				     redir->dest.name);
 		break;
 
 	default:
@@ -641,9 +625,9 @@ print_reflection(struct fw3_ipt_handle *h, struct fw3_state *state,
 	}
 }
 
-static void
-expand_redirect(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                struct fw3_redirect *redir, int num)
+static void expand_redirect(struct fw3_ipt_handle *handle,
+			    struct fw3_state *state, struct fw3_redirect *redir,
+			    int num)
 {
 	struct list_head *ext_addrs, *int_addrs;
 	struct fw3_address *ext_addr, *int_addr, ref_addr;
@@ -656,49 +640,44 @@ expand_redirect(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		info("   * Redirect #%u", num);
 
 	if (!fw3_is_family(redir->_src, handle->family) ||
-		!fw3_is_family(redir->_dest, handle->family))
-	{
+	    !fw3_is_family(redir->_dest, handle->family)) {
 		info("     ! Skipping due to different family of zone");
 		return;
 	}
 
 	if (!fw3_is_family(&redir->ip_src, handle->family) ||
 	    !fw3_is_family(&redir->ip_dest, handle->family) ||
-		!fw3_is_family(&redir->ip_redir, handle->family))
-	{
-		if (!redir->ip_src.resolved ||
-		    !redir->ip_dest.resolved ||
+	    !fw3_is_family(&redir->ip_redir, handle->family)) {
+		if (!redir->ip_src.resolved || !redir->ip_dest.resolved ||
 		    !redir->ip_redir.resolved)
 			info("     ! Skipping due to different family of ip address");
 
 		return;
 	}
 
-	if (redir->ipset.ptr)
-	{
-		if (!fw3_is_family(redir->ipset.ptr, handle->family))
-		{
+	if (redir->ipset.ptr) {
+		if (!fw3_is_family(redir->ipset.ptr, handle->family)) {
 			info("     ! Skipping due to different family in ipset");
 			return;
 		}
 
-		if (!fw3_check_ipset(redir->ipset.ptr))
-		{
+		if (!fw3_check_ipset(redir->ipset.ptr)) {
 			info("     ! Skipping due to missing ipset '%s'",
 			     redir->ipset.ptr->external ?
-					redir->ipset.ptr->external : redir->ipset.ptr->name);
+				     redir->ipset.ptr->external :
+				     redir->ipset.ptr->name);
 			return;
 		}
 
 		set(redir->ipset.ptr->flags, handle->family, handle->family);
 	}
 
-	fw3_foreach(proto, &redir->proto)
-	fw3_foreach(mac, &redir->mac_src)
+	fw3_foreach(proto, &redir->proto) fw3_foreach(mac, &redir->mac_src)
 		print_redirect(handle, state, redir, num, proto, mac);
 
 	/* reflection rules */
-	if (redir->target != FW3_FLAG_DNAT || !redir->reflection || redir->local)
+	if (redir->target != FW3_FLAG_DNAT || !redir->reflection ||
+	    redir->local)
 		return;
 
 	if (!redir->_dest || !redir->_src->masq)
@@ -710,13 +689,11 @@ expand_redirect(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	if (!ext_addrs || !int_addrs)
 		goto out;
 
-	list_for_each_entry(ext_addr, ext_addrs, list)
-	{
+	list_for_each_entry (ext_addr, ext_addrs, list) {
 		if (!fw3_is_family(ext_addr, handle->family))
 			continue;
 
-		list_for_each_entry(int_addr, int_addrs, list)
-		{
+		list_for_each_entry (int_addr, int_addrs, list) {
 			if (!fw3_is_family(int_addr, handle->family))
 				continue;
 
@@ -725,7 +702,8 @@ expand_redirect(struct fw3_ipt_handle *handle, struct fw3_state *state,
 				if (!proto)
 					continue;
 
-				if (redir->reflection_src == FW3_REFLECTION_INTERNAL)
+				if (redir->reflection_src ==
+				    FW3_REFLECTION_INTERNAL)
 					ref_addr = *int_addr;
 				else
 					ref_addr = *ext_addr;
@@ -733,8 +711,9 @@ expand_redirect(struct fw3_ipt_handle *handle, struct fw3_state *state,
 				ref_addr.mask.v4.s_addr = 0xFFFFFFFF;
 				ext_addr->mask.v4.s_addr = 0xFFFFFFFF;
 
-				print_reflection(handle, state, redir, num, proto,
-								 &ref_addr, int_addr, ext_addr);
+				print_reflection(handle, state, redir, num,
+						 proto, &ref_addr, int_addr,
+						 ext_addr);
 			}
 		}
 	}
@@ -744,8 +723,7 @@ out:
 	fw3_free_list(int_addrs);
 }
 
-void
-fw3_print_redirects(struct fw3_ipt_handle *handle, struct fw3_state *state)
+void fw3_print_redirects(struct fw3_ipt_handle *handle, struct fw3_state *state)
 {
 	int num = 0;
 	struct fw3_redirect *redir;
@@ -754,12 +732,10 @@ fw3_print_redirects(struct fw3_ipt_handle *handle, struct fw3_state *state)
 		return;
 
 	if (handle->table != FW3_TABLE_FILTER &&
-	    handle->table != FW3_TABLE_NAT &&
-	    handle->table != FW3_TABLE_RAW)
+	    handle->table != FW3_TABLE_NAT && handle->table != FW3_TABLE_RAW)
 		return;
 
-	list_for_each_entry(redir, &state->redirects, list)
-	{
+	list_for_each_entry (redir, &state->redirects, list) {
 		if (handle->table == FW3_TABLE_RAW && !redir->helper.ptr)
 			continue;
 
diff --git a/redirects.h b/redirects.h
index 0d46bd2..09a83d7 100644
--- a/redirects.h
+++ b/redirects.h
@@ -31,7 +31,7 @@ extern const struct fw3_option fw3_redirect_opts[];
 void fw3_load_redirects(struct fw3_state *state, struct uci_package *p,
 			struct blob_attr *a);
 void fw3_print_redirects(struct fw3_ipt_handle *handle,
-                         struct fw3_state *state);
+			 struct fw3_state *state);
 
 static inline void fw3_free_redirect(struct fw3_redirect *redir)
 {
diff --git a/rules.c b/rules.c
index 5af8bfd..030e5da 100644
--- a/rules.c
+++ b/rules.c
@@ -18,67 +18,63 @@
 
 #include "rules.h"
 
-
 const struct fw3_option fw3_rule_opts[] = {
-	FW3_OPT("enabled",             bool,      rule,     enabled),
+	FW3_OPT("enabled", bool, rule, enabled),
 
-	FW3_OPT("name",                string,    rule,     name),
-	FW3_OPT("family",              family,    rule,     family),
+	FW3_OPT("name", string, rule, name),
+	FW3_OPT("family", family, rule, family),
 
-	FW3_OPT("src",                 device,    rule,     src),
-	FW3_OPT("dest",                device,    rule,     dest),
+	FW3_OPT("src", device, rule, src),
+	FW3_OPT("dest", device, rule, dest),
 
-	FW3_OPT("device",              string,    rule,     device),
-	FW3_OPT("direction",           direction, rule,     direction_out),
+	FW3_OPT("device", string, rule, device),
+	FW3_OPT("direction", direction, rule, direction_out),
 
-	FW3_OPT("ipset",               setmatch,  rule,     ipset),
-	FW3_OPT("helper",              cthelper,  rule,     helper),
-	FW3_OPT("set_helper",          cthelper,  rule,     set_helper),
+	FW3_OPT("ipset", setmatch, rule, ipset),
+	FW3_OPT("helper", cthelper, rule, helper),
+	FW3_OPT("set_helper", cthelper, rule, set_helper),
 
-	FW3_LIST("proto",              protocol,  rule,     proto),
+	FW3_LIST("proto", protocol, rule, proto),
 
-	FW3_LIST("src_ip",             network,   rule,     ip_src),
-	FW3_LIST("src_mac",            mac,       rule,     mac_src),
-	FW3_LIST("src_port",           port,      rule,     port_src),
+	FW3_LIST("src_ip", network, rule, ip_src),
+	FW3_LIST("src_mac", mac, rule, mac_src),
+	FW3_LIST("src_port", port, rule, port_src),
 
-	FW3_LIST("dest_ip",            network,   rule,     ip_dest),
-	FW3_LIST("dest_port",          port,      rule,     port_dest),
+	FW3_LIST("dest_ip", network, rule, ip_dest),
+	FW3_LIST("dest_port", port, rule, port_dest),
 
-	FW3_LIST("icmp_type",          icmptype,  rule,     icmp_type),
-	FW3_OPT("extra",               string,    rule,     extra),
+	FW3_LIST("icmp_type", icmptype, rule, icmp_type),
+	FW3_OPT("extra", string, rule, extra),
 
-	FW3_OPT("limit",               limit,     rule,     limit),
-	FW3_OPT("limit_burst",         int,       rule,     limit.burst),
+	FW3_OPT("limit", limit, rule, limit),
+	FW3_OPT("limit_burst", int, rule, limit.burst),
 
-	FW3_OPT("utc_time",            bool,      rule,     time.utc),
-	FW3_OPT("start_date",          date,      rule,     time.datestart),
-	FW3_OPT("stop_date",           date,      rule,     time.datestop),
-	FW3_OPT("start_time",          time,      rule,     time.timestart),
-	FW3_OPT("stop_time",           time,      rule,     time.timestop),
-	FW3_OPT("weekdays",            weekdays,  rule,     time.weekdays),
-	FW3_OPT("monthdays",           monthdays, rule,     time.monthdays),
+	FW3_OPT("utc_time", bool, rule, time.utc),
+	FW3_OPT("start_date", date, rule, time.datestart),
+	FW3_OPT("stop_date", date, rule, time.datestop),
+	FW3_OPT("start_time", time, rule, time.timestart),
+	FW3_OPT("stop_time", time, rule, time.timestop),
+	FW3_OPT("weekdays", weekdays, rule, time.weekdays),
+	FW3_OPT("monthdays", monthdays, rule, time.monthdays),
 
-	FW3_OPT("mark",                mark,      rule,     mark),
-	FW3_OPT("set_mark",            mark,      rule,     set_mark),
-	FW3_OPT("set_xmark",           mark,      rule,     set_xmark),
+	FW3_OPT("mark", mark, rule, mark),
+	FW3_OPT("set_mark", mark, rule, set_mark),
+	FW3_OPT("set_xmark", mark, rule, set_xmark),
 
-	FW3_OPT("dscp",                dscp,      rule,     dscp),
-	FW3_OPT("set_dscp",            dscp,      rule,     set_dscp),
+	FW3_OPT("dscp", dscp, rule, dscp),
+	FW3_OPT("set_dscp", dscp, rule, set_dscp),
 
-	FW3_OPT("target",              target,    rule,     target),
+	FW3_OPT("target", target, rule, target),
 
-	{ }
+	{}
 };
 
-
-static bool
-need_src_action_chain(struct fw3_rule *r)
+static bool need_src_action_chain(struct fw3_rule *r)
 {
 	return (r->_src && r->_src->log && (r->target > FW3_FLAG_ACCEPT));
 }
 
-static struct fw3_rule*
-alloc_rule(struct fw3_state *state)
+static struct fw3_rule *alloc_rule(struct fw3_state *state)
 {
 	struct fw3_rule *rule = calloc(1, sizeof(*rule));
 
@@ -101,133 +97,128 @@ alloc_rule(struct fw3_state *state)
 	return rule;
 }
 
-static bool
-check_rule(struct fw3_state *state, struct fw3_rule *r, struct uci_element *e)
+static bool check_rule(struct fw3_state *state, struct fw3_rule *r,
+		       struct uci_element *e)
 {
 	if (!r->enabled)
 		return false;
 
-	if (r->src.invert || r->dest.invert)
-	{
-		warn_section("rule", r, e, "must not have inverted 'src' or 'dest' options");
+	if (r->src.invert || r->dest.invert) {
+		warn_section("rule", r, e,
+			     "must not have inverted 'src' or 'dest' options");
 		return false;
-	}
-	else if (r->src.set && !r->src.any &&
-	         !(r->_src = fw3_lookup_zone(state, r->src.name)))
-	{
-		warn_section("rule", r, e, "refers to not existing zone '%s'", r->src.name);
+	} else if (r->src.set && !r->src.any &&
+		   !(r->_src = fw3_lookup_zone(state, r->src.name))) {
+		warn_section("rule", r, e, "refers to not existing zone '%s'",
+			     r->src.name);
 		return false;
-	}
-	else if (r->dest.set && !r->dest.any &&
-	         !(r->_dest = fw3_lookup_zone(state, r->dest.name)))
-	{
-		warn_section("rule", r, e, "refers to not existing zone '%s'", r->dest.name);
+	} else if (r->dest.set && !r->dest.any &&
+		   !(r->_dest = fw3_lookup_zone(state, r->dest.name))) {
+		warn_section("rule", r, e, "refers to not existing zone '%s'",
+			     r->dest.name);
 		return false;
-	}
-	else if (r->ipset.set && state->disable_ipsets)
-	{
-		warn_section("rule", r, e, "skipped due to disabled ipset support");
+	} else if (r->ipset.set && state->disable_ipsets) {
+		warn_section("rule", r, e,
+			     "skipped due to disabled ipset support");
 		return false;
-	}
-	else if (r->ipset.set &&
-	         !(r->ipset.ptr = fw3_lookup_ipset(state, r->ipset.name)))
-	{
-		warn_section("rule", r, e, "refers to unknown ipset '%s'", r->ipset.name);
+	} else if (r->ipset.set &&
+		   !(r->ipset.ptr = fw3_lookup_ipset(state, r->ipset.name))) {
+		warn_section("rule", r, e, "refers to unknown ipset '%s'",
+			     r->ipset.name);
 		return false;
-	}
-	else if (r->helper.set &&
-	         !(r->helper.ptr = fw3_lookup_cthelper(state, r->helper.name)))
-	{
-		warn_section("rule", r, e, "refers to unknown CT helper '%s'", r->helper.name);
+	} else if (r->helper.set && !(r->helper.ptr = fw3_lookup_cthelper(
+					      state, r->helper.name))) {
+		warn_section("rule", r, e, "refers to unknown CT helper '%s'",
+			     r->helper.name);
 		return false;
-	}
-	else if (r->set_helper.set &&
-	         !(r->set_helper.ptr = fw3_lookup_cthelper(state, r->set_helper.name)))
-	{
-		warn_section("rule", r, e, "refers to unknown CT helper '%s'", r->set_helper.name);
+	} else if (r->set_helper.set &&
+		   !(r->set_helper.ptr =
+			     fw3_lookup_cthelper(state, r->set_helper.name))) {
+		warn_section("rule", r, e, "refers to unknown CT helper '%s'",
+			     r->set_helper.name);
 		return false;
 	}
 
-	if (!r->_src && (r->target == FW3_FLAG_NOTRACK || r->target == FW3_FLAG_HELPER))
-	{
-		warn_section("rule", r, e, "is set to target %s but has no source assigned",
-		             fw3_flag_names[r->target]);
+	if (!r->_src &&
+	    (r->target == FW3_FLAG_NOTRACK || r->target == FW3_FLAG_HELPER)) {
+		warn_section("rule", r, e,
+			     "is set to target %s but has no source assigned",
+			     fw3_flag_names[r->target]);
 		return false;
 	}
 
 	if (!r->set_mark.set && !r->set_xmark.set &&
-	    r->target == FW3_FLAG_MARK)
-	{
-		warn_section("rule", r, e, "is set to target MARK but specifies neither "
-		                           "'set_mark' nor 'set_xmark' option");
+	    r->target == FW3_FLAG_MARK) {
+		warn_section("rule", r, e,
+			     "is set to target MARK but specifies neither "
+			     "'set_mark' nor 'set_xmark' option");
 		return false;
 	}
 
-	if (!r->set_dscp.set && r->target == FW3_FLAG_DSCP)
-	{
-		warn_section("rule", r, e, "is set to target DSCP but specifies no "
-		                           "'set_dscp' option");
+	if (!r->set_dscp.set && r->target == FW3_FLAG_DSCP) {
+		warn_section("rule", r, e,
+			     "is set to target DSCP but specifies no "
+			     "'set_dscp' option");
 		return false;
 	}
 
-	if (r->_dest && (r->target == FW3_FLAG_MARK || r->target == FW3_FLAG_DSCP))
-	{
-		warn_section("rule", r, e, "must not specify 'dest' for %s target",
-		             fw3_flag_names[r->target]);
+	if (r->_dest &&
+	    (r->target == FW3_FLAG_MARK || r->target == FW3_FLAG_DSCP)) {
+		warn_section("rule", r, e,
+			     "must not specify 'dest' for %s target",
+			     fw3_flag_names[r->target]);
 		return false;
 	}
 
-	if (r->set_mark.invert || r->set_xmark.invert || r->set_dscp.invert)
-	{
-		warn_section("rule", r, e, "must not have inverted 'set_mark', "
-		                           "'set_xmark' or 'set_dscp'");
+	if (r->set_mark.invert || r->set_xmark.invert || r->set_dscp.invert) {
+		warn_section("rule", r, e,
+			     "must not have inverted 'set_mark', "
+			     "'set_xmark' or 'set_dscp'");
 		return false;
 	}
 
-	if (!r->set_helper.set && r->target == FW3_FLAG_HELPER)
-	{
-		warn_section("rule", r, e, "is set to target HELPER but specifies "
-		                           "no 'set_helper' option");
+	if (!r->set_helper.set && r->target == FW3_FLAG_HELPER) {
+		warn_section("rule", r, e,
+			     "is set to target HELPER but specifies "
+			     "no 'set_helper' option");
 		return false;
 	}
 
-	if (r->set_helper.invert && r->target == FW3_FLAG_HELPER)
-	{
-		warn_section("rule", r, e, "must not have inverted 'set_helper' option");
+	if (r->set_helper.invert && r->target == FW3_FLAG_HELPER) {
+		warn_section("rule", r, e,
+			     "must not have inverted 'set_helper' option");
 		return false;
 	}
 
-	if (!r->_src && !r->_dest && !r->src.any && !r->dest.any)
-	{
-		warn_section("rule", r, e, "has neither a source nor a destination zone assigned "
-		                "- assuming an output r");
+	if (!r->_src && !r->_dest && !r->src.any && !r->dest.any) {
+		warn_section(
+			"rule", r, e,
+			"has neither a source nor a destination zone assigned "
+			"- assuming an output r");
 	}
 
-	if (list_empty(&r->proto))
-	{
-		warn_section("rule", r, e, "does not specify a protocol, assuming TCP+UDP");
+	if (list_empty(&r->proto)) {
+		warn_section("rule", r, e,
+			     "does not specify a protocol, assuming TCP+UDP");
 		fw3_parse_protocol(&r->proto, "tcpudp", true);
 	}
 
-	if (r->target == FW3_FLAG_UNSPEC)
-	{
-		warn_section("rule", r, e, "has no target specified, defaulting to REJECT");
+	if (r->target == FW3_FLAG_UNSPEC) {
+		warn_section("rule", r, e,
+			     "has no target specified, defaulting to REJECT");
 		r->target = FW3_FLAG_REJECT;
-	}
-	else if (r->target > FW3_FLAG_DSCP)
-	{
-		warn_section("rule", r, e, "has invalid target specified, defaulting to REJECT");
+	} else if (r->target > FW3_FLAG_DSCP) {
+		warn_section(
+			"rule", r, e,
+			"has invalid target specified, defaulting to REJECT");
 		r->target = FW3_FLAG_REJECT;
 	}
 
 	/* NB: r family... */
-	if (r->_dest)
-	{
+	if (r->_dest) {
 		fw3_setbit(r->_dest->flags[0], r->target);
 		fw3_setbit(r->_dest->flags[1], r->target);
-	}
-	else if (need_src_action_chain(r))
-	{
+	} else if (need_src_action_chain(r)) {
 		fw3_setbit(r->_src->flags[0], fw3_to_src_target(r->target));
 		fw3_setbit(r->_src->flags[1], fw3_to_src_target(r->target));
 	}
@@ -235,9 +226,8 @@ check_rule(struct fw3_state *state, struct fw3_rule *r, struct uci_element *e)
 	return true;
 }
 
-void
-fw3_load_rules(struct fw3_state *state, struct uci_package *p,
-		struct blob_attr *a)
+void fw3_load_rules(struct fw3_state *state, struct uci_package *p,
+		    struct blob_attr *a)
 {
 	struct uci_section *s;
 	struct uci_element *e;
@@ -247,7 +237,8 @@ fw3_load_rules(struct fw3_state *state, struct uci_package *p,
 
 	INIT_LIST_HEAD(&state->rules);
 
-	blob_for_each_attr(entry, a, rem) {
+	blob_for_each_attr(entry, a, rem)
+	{
 		const char *type;
 		const char *name = "ubus rule";
 
@@ -260,9 +251,9 @@ fw3_load_rules(struct fw3_state *state, struct uci_package *p,
 		if (!(rule = alloc_rule(state)))
 			continue;
 
-		if (!fw3_parse_blob_options(rule, fw3_rule_opts, entry, name))
-		{
-			warn_section("rule", rule, NULL, "skipped due to invalid options");
+		if (!fw3_parse_blob_options(rule, fw3_rule_opts, entry, name)) {
+			warn_section("rule", rule, NULL,
+				     "skipped due to invalid options");
 			fw3_free_rule(rule);
 			continue;
 		}
@@ -281,8 +272,7 @@ fw3_load_rules(struct fw3_state *state, struct uci_package *p,
 		if (!(rule = alloc_rule(state)))
 			continue;
 
-		if (!fw3_parse_options(rule, fw3_rule_opts, s))
-		{
+		if (!fw3_parse_options(rule, fw3_rule_opts, s)) {
 			warn_elem(e, "skipped due to invalid options");
 			fw3_free_rule(rule);
 			continue;
@@ -293,56 +283,48 @@ fw3_load_rules(struct fw3_state *state, struct uci_package *p,
 	}
 }
 
-
-static void
-append_chain(struct fw3_ipt_rule *r, struct fw3_rule *rule)
+static void append_chain(struct fw3_ipt_rule *r, struct fw3_rule *rule)
 {
 	char chain[32];
 
 	snprintf(chain, sizeof(chain), "OUTPUT");
 
-	if (rule->target == FW3_FLAG_NOTRACK)
-	{
-		snprintf(chain, sizeof(chain), "zone_%s_notrack", rule->src.name);
-	}
-	else if (rule->target == FW3_FLAG_HELPER)
-	{
-		snprintf(chain, sizeof(chain), "zone_%s_helper", rule->src.name);
-	}
-	else if ((rule->target == FW3_FLAG_MARK || rule->target == FW3_FLAG_DSCP) &&
-	         (rule->_src || rule->src.any))
-	{
+	if (rule->target == FW3_FLAG_NOTRACK) {
+		snprintf(chain, sizeof(chain), "zone_%s_notrack",
+			 rule->src.name);
+	} else if (rule->target == FW3_FLAG_HELPER) {
+		snprintf(chain, sizeof(chain), "zone_%s_helper",
+			 rule->src.name);
+	} else if ((rule->target == FW3_FLAG_MARK ||
+		    rule->target == FW3_FLAG_DSCP) &&
+		   (rule->_src || rule->src.any)) {
 		snprintf(chain, sizeof(chain), "PREROUTING");
-	}
-	else
-	{
-		if (rule->src.set)
-		{
-			if (!rule->src.any)
-			{
+	} else {
+		if (rule->src.set) {
+			if (!rule->src.any) {
 				if (rule->dest.set)
-					snprintf(chain, sizeof(chain), "zone_%s_forward",
-					         rule->src.name);
+					snprintf(chain, sizeof(chain),
+						 "zone_%s_forward",
+						 rule->src.name);
 				else
-					snprintf(chain, sizeof(chain), "zone_%s_input",
-					         rule->src.name);
-			}
-			else
-			{
+					snprintf(chain, sizeof(chain),
+						 "zone_%s_input",
+						 rule->src.name);
+			} else {
 				if (rule->dest.set)
-					snprintf(chain, sizeof(chain), "FORWARD");
+					snprintf(chain, sizeof(chain),
+						 "FORWARD");
 				else
 					snprintf(chain, sizeof(chain), "INPUT");
 			}
 		}
 
-		if (rule->dest.set && !rule->src.set)
-		{
+		if (rule->dest.set && !rule->src.set) {
 			if (rule->dest.any)
 				snprintf(chain, sizeof(chain), "OUTPUT");
 			else
 				snprintf(chain, sizeof(chain), "zone_%s_output",
-				         rule->dest.name);
+					 rule->dest.name);
 		}
 	}
 
@@ -355,8 +337,7 @@ static void set_target(struct fw3_ipt_rule *r, struct fw3_rule *rule)
 	struct fw3_mark *mark;
 	char buf[sizeof("0xFFFFFFFF/0xFFFFFFFF\0")];
 
-	switch(rule->target)
-	{
+	switch (rule->target) {
 	case FW3_FLAG_MARK:
 		name = rule->set_mark.set ? "--set-mark" : "--set-xmark";
 		mark = rule->set_mark.set ? &rule->set_mark : &rule->set_xmark;
@@ -380,7 +361,8 @@ static void set_target(struct fw3_ipt_rule *r, struct fw3_rule *rule)
 
 	case FW3_FLAG_HELPER:
 		fw3_ipt_rule_target(r, "CT");
-		fw3_ipt_rule_addarg(r, false, "--helper", rule->set_helper.ptr->name);
+		fw3_ipt_rule_addarg(r, false, "--helper",
+				    rule->set_helper.ptr->name);
 		return;
 
 	case FW3_FLAG_ACCEPT:
@@ -394,7 +376,8 @@ static void set_target(struct fw3_ipt_rule *r, struct fw3_rule *rule)
 	}
 
 	if (rule->dest.set && !rule->dest.any)
-		fw3_ipt_rule_target(r, "zone_%s_dest_%s", rule->dest.name, name);
+		fw3_ipt_rule_target(r, "zone_%s_dest_%s", rule->dest.name,
+				    name);
 	else if (need_src_action_chain(rule))
 		fw3_ipt_rule_target(r, "zone_%s_src_%s", rule->src.name, name);
 	else if (strcmp(name, "REJECT"))
@@ -403,8 +386,7 @@ static void set_target(struct fw3_ipt_rule *r, struct fw3_rule *rule)
 		fw3_ipt_rule_target(r, "reject");
 }
 
-static void
-set_comment(struct fw3_ipt_rule *r, const char *name, int num)
+static void set_comment(struct fw3_ipt_rule *r, const char *name, int num)
 {
 	if (name)
 		fw3_ipt_rule_comment(r, name);
@@ -412,18 +394,17 @@ set_comment(struct fw3_ipt_rule *r, const char *name, int num)
 		fw3_ipt_rule_comment(r, "@rule[%u]", num);
 }
 
-static void
-print_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
-           struct fw3_rule *rule, int num, struct fw3_protocol *proto,
-           struct fw3_address *sip, struct fw3_address *dip,
-           struct fw3_port *sport, struct fw3_port *dport,
-           struct fw3_mac *mac, struct fw3_icmptype *icmptype)
+static void print_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
+		       struct fw3_rule *rule, int num,
+		       struct fw3_protocol *proto, struct fw3_address *sip,
+		       struct fw3_address *dip, struct fw3_port *sport,
+		       struct fw3_port *dport, struct fw3_mac *mac,
+		       struct fw3_icmptype *icmptype)
 {
 	struct fw3_ipt_rule *r;
 
 	if (!fw3_is_family(sip, handle->family) ||
-	    !fw3_is_family(dip, handle->family))
-	{
+	    !fw3_is_family(dip, handle->family)) {
 		if ((sip && !sip->resolved) || (dip && !dip->resolved))
 			info("     ! Skipping due to different family of ip address");
 
@@ -431,8 +412,7 @@ print_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	}
 
 	if (!fw3_is_family(sip, handle->family) ||
-	    !fw3_is_family(dip, handle->family))
-	{
+	    !fw3_is_family(dip, handle->family)) {
 		if ((sip && !sip->resolved) || (dip && !dip->resolved))
 			info("     ! Skipping due to different family of ip address");
 
@@ -440,32 +420,28 @@ print_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	}
 
 	if (!fw3_is_family(sip, handle->family) ||
-	    !fw3_is_family(dip, handle->family))
-	{
+	    !fw3_is_family(dip, handle->family)) {
 		if ((sip && !sip->resolved) || (dip && !dip->resolved))
 			info("     ! Skipping due to different family of ip address");
 
 		return;
 	}
 
-	if (proto->protocol == 58 && handle->family == FW3_FAMILY_V4)
-	{
+	if (proto->protocol == 58 && handle->family == FW3_FAMILY_V4) {
 		info("     ! Skipping protocol %s due to different family",
 		     fw3_protoname(proto));
 		return;
 	}
 
 	if (rule->helper.ptr &&
-	    !fw3_cthelper_check_proto(rule->helper.ptr, proto))
-	{
+	    !fw3_cthelper_check_proto(rule->helper.ptr, proto)) {
 		info("     ! Skipping protocol %s since helper '%s' does not support it",
 		     fw3_protoname(proto), rule->helper.ptr->name);
 		return;
 	}
 
 	if (rule->set_helper.ptr &&
-	    !fw3_cthelper_check_proto(rule->set_helper.ptr, proto))
-	{
+	    !fw3_cthelper_check_proto(rule->set_helper.ptr, proto)) {
 		info("     ! Skipping protocol %s since helper '%s' does not support it",
 		     fw3_protoname(proto), rule->helper.ptr->name);
 		return;
@@ -488,9 +464,8 @@ print_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	append_chain(r, rule);
 }
 
-static void
-expand_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
-            struct fw3_rule *rule, int num)
+static void expand_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
+			struct fw3_rule *rule, int num)
 {
 	struct fw3_protocol *proto;
 	struct fw3_address *sip;
@@ -510,11 +485,16 @@ expand_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	if (!fw3_is_family(rule, handle->family))
 		return;
 
-	if ((rule->target == FW3_FLAG_NOTRACK && handle->table != FW3_TABLE_RAW) ||
-	    (rule->target == FW3_FLAG_HELPER && handle->table != FW3_TABLE_RAW)  ||
-	    (rule->target == FW3_FLAG_MARK && handle->table != FW3_TABLE_MANGLE) ||
-	    (rule->target == FW3_FLAG_DSCP && handle->table != FW3_TABLE_MANGLE) ||
-		(rule->target < FW3_FLAG_NOTRACK && handle->table != FW3_TABLE_FILTER))
+	if ((rule->target == FW3_FLAG_NOTRACK &&
+	     handle->table != FW3_TABLE_RAW) ||
+	    (rule->target == FW3_FLAG_HELPER &&
+	     handle->table != FW3_TABLE_RAW) ||
+	    (rule->target == FW3_FLAG_MARK &&
+	     handle->table != FW3_TABLE_MANGLE) ||
+	    (rule->target == FW3_FLAG_DSCP &&
+	     handle->table != FW3_TABLE_MANGLE) ||
+	    (rule->target < FW3_FLAG_NOTRACK &&
+	     handle->table != FW3_TABLE_FILTER))
 		return;
 
 	if (rule->name)
@@ -523,76 +503,68 @@ expand_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		info("   * Rule #%u", num);
 
 	if (!fw3_is_family(rule->_src, handle->family) ||
-	    !fw3_is_family(rule->_dest, handle->family))
-	{
+	    !fw3_is_family(rule->_dest, handle->family)) {
 		info("     ! Skipping due to different family of zone");
 		return;
 	}
 
-	if (rule->ipset.ptr)
-	{
-		if (!fw3_is_family(rule->ipset.ptr, handle->family))
-		{
+	if (rule->ipset.ptr) {
+		if (!fw3_is_family(rule->ipset.ptr, handle->family)) {
 			info("     ! Skipping due to different family in ipset");
 			return;
 		}
 
-		if (!fw3_check_ipset(rule->ipset.ptr))
-		{
+		if (!fw3_check_ipset(rule->ipset.ptr)) {
 			info("     ! Skipping due to missing ipset '%s'",
-			     rule->ipset.ptr->external
-					? rule->ipset.ptr->external : rule->ipset.ptr->name);
+			     rule->ipset.ptr->external ?
+				     rule->ipset.ptr->external :
+				     rule->ipset.ptr->name);
 			return;
 		}
 
 		set(rule->ipset.ptr->flags, handle->family, handle->family);
 	}
 
-	if (rule->helper.ptr && !fw3_is_family(rule->helper.ptr, handle->family))
-	{
+	if (rule->helper.ptr &&
+	    !fw3_is_family(rule->helper.ptr, handle->family)) {
 		info("     ! Skipping due to unsupported family of CT helper");
 		return;
 	}
 
-	if (rule->set_helper.ptr && !fw3_is_family(rule->set_helper.ptr, handle->family))
-	{
+	if (rule->set_helper.ptr &&
+	    !fw3_is_family(rule->set_helper.ptr, handle->family)) {
 		info("     ! Skipping due to unsupported family of CT helper");
 		return;
 	}
 
-	list_for_each_entry(proto, &rule->proto, list)
-	{
+	list_for_each_entry (proto, &rule->proto, list) {
 		/* icmp / ipv6-icmp */
-		if (proto->protocol == 1 || proto->protocol == 58)
-		{
+		if (proto->protocol == 1 || proto->protocol == 58) {
 			sports = &empty;
 			dports = &empty;
 			icmptypes = &rule->icmp_type;
-		}
-		else
-		{
+		} else {
 			sports = &rule->port_src;
 			dports = &rule->port_dest;
 			icmptypes = &empty;
 		}
 
-		fw3_foreach(sip, &rule->ip_src)
-		fw3_foreach(dip, &rule->ip_dest)
-		fw3_foreach(sport, sports)
-		fw3_foreach(dport, dports)
-		fw3_foreach(mac, &rule->mac_src)
-		fw3_foreach(icmptype, icmptypes)
-			print_rule(handle, state, rule, num, proto, sip, dip,
-			           sport, dport, mac, icmptype);
+		fw3_foreach(sip, &rule->ip_src) fw3_foreach(dip, &rule->ip_dest)
+			fw3_foreach(sport, sports) fw3_foreach(dport, dports)
+				fw3_foreach(mac, &rule->mac_src)
+					fw3_foreach(icmptype, icmptypes)
+						print_rule(handle, state, rule,
+							   num, proto, sip, dip,
+							   sport, dport, mac,
+							   icmptype);
 	}
 }
 
-void
-fw3_print_rules(struct fw3_ipt_handle *handle, struct fw3_state *state)
+void fw3_print_rules(struct fw3_ipt_handle *handle, struct fw3_state *state)
 {
 	int num = 0;
 	struct fw3_rule *rule;
 
-	list_for_each_entry(rule, &state->rules, list)
+	list_for_each_entry (rule, &state->rules, list)
 		expand_rule(handle, state, rule, num++);
 }
diff --git a/rules.h b/rules.h
index be7c8bd..52a4c4b 100644
--- a/rules.h
+++ b/rules.h
@@ -28,7 +28,8 @@
 
 extern const struct fw3_option fw3_rule_opts[];
 
-void fw3_load_rules(struct fw3_state *state, struct uci_package *p, struct blob_attr *a);
+void fw3_load_rules(struct fw3_state *state, struct uci_package *p,
+		    struct blob_attr *a);
 void fw3_print_rules(struct fw3_ipt_handle *handle, struct fw3_state *state);
 
 static inline void fw3_free_rule(struct fw3_rule *rule)
diff --git a/snats.c b/snats.c
index 1d78f93..32501c1 100644
--- a/snats.c
+++ b/snats.c
@@ -18,85 +18,81 @@
 
 #include "snats.h"
 
-
 const struct fw3_option fw3_snat_opts[] = {
-	FW3_OPT("enabled",             bool,      snat,     enabled),
+	FW3_OPT("enabled", bool, snat, enabled),
 
-	FW3_OPT("name",                string,    snat,     name),
-	FW3_OPT("family",              family,    snat,     family),
+	FW3_OPT("name", string, snat, name),
+	FW3_OPT("family", family, snat, family),
 
-	FW3_OPT("src",                 device,    snat,     src),
-	FW3_OPT("device",              string,    snat,     device),
+	FW3_OPT("src", device, snat, src),
+	FW3_OPT("device", string, snat, device),
 
-	FW3_OPT("ipset",               setmatch,  snat,     ipset),
+	FW3_OPT("ipset", setmatch, snat, ipset),
 
-	FW3_LIST("proto",              protocol,  snat,     proto),
+	FW3_LIST("proto", protocol, snat, proto),
 
-	FW3_OPT("src_ip",              network,   snat,     ip_src),
-	FW3_OPT("src_port",            port,      snat,     port_src),
+	FW3_OPT("src_ip", network, snat, ip_src),
+	FW3_OPT("src_port", port, snat, port_src),
 
-	FW3_OPT("snat_ip",             network,   snat,     ip_snat),
-	FW3_OPT("snat_port",           port,      snat,     port_snat),
+	FW3_OPT("snat_ip", network, snat, ip_snat),
+	FW3_OPT("snat_port", port, snat, port_snat),
 
-	FW3_OPT("dest_ip",             network,   snat,     ip_dest),
-	FW3_OPT("dest_port",           port,      snat,     port_dest),
+	FW3_OPT("dest_ip", network, snat, ip_dest),
+	FW3_OPT("dest_port", port, snat, port_dest),
 
-	FW3_OPT("extra",               string,    snat,     extra),
+	FW3_OPT("extra", string, snat, extra),
 
-	FW3_OPT("limit",               limit,     snat,     limit),
-	FW3_OPT("limit_burst",         int,       snat,     limit.burst),
+	FW3_OPT("limit", limit, snat, limit),
+	FW3_OPT("limit_burst", int, snat, limit.burst),
 
-	FW3_OPT("connlimit_ports",     bool,      snat,     connlimit_ports),
+	FW3_OPT("connlimit_ports", bool, snat, connlimit_ports),
 
-	FW3_OPT("utc_time",            bool,      snat,     time.utc),
-	FW3_OPT("start_date",          date,      snat,     time.datestart),
-	FW3_OPT("stop_date",           date,      snat,     time.datestop),
-	FW3_OPT("start_time",          time,      snat,     time.timestart),
-	FW3_OPT("stop_time",           time,      snat,     time.timestop),
-	FW3_OPT("weekdays",            weekdays,  snat,     time.weekdays),
-	FW3_OPT("monthdays",           monthdays, snat,     time.monthdays),
+	FW3_OPT("utc_time", bool, snat, time.utc),
+	FW3_OPT("start_date", date, snat, time.datestart),
+	FW3_OPT("stop_date", date, snat, time.datestop),
+	FW3_OPT("start_time", time, snat, time.timestart),
+	FW3_OPT("stop_time", time, snat, time.timestop),
+	FW3_OPT("weekdays", weekdays, snat, time.weekdays),
+	FW3_OPT("monthdays", monthdays, snat, time.monthdays),
 
-	FW3_OPT("mark",                mark,      snat,     mark),
+	FW3_OPT("mark", mark, snat, mark),
 
-	FW3_OPT("target",              target,    snat,     target),
+	FW3_OPT("target", target, snat, target),
 
-	{ }
+	{}
 };
 
-
-static bool
-check_families(struct uci_element *e, struct fw3_snat *r)
+static bool check_families(struct uci_element *e, struct fw3_snat *r)
 {
 	if (r->family == FW3_FAMILY_ANY)
 		return true;
 
-	if (r->_src && r->_src->family && r->_src->family != r->family)
-	{
-		warn_section("nat", r, e, "refers to source zone with different family");
+	if (r->_src && r->_src->family && r->_src->family != r->family) {
+		warn_section("nat", r, e,
+			     "refers to source zone with different family");
 		return false;
 	}
 
 	if (r->ipset.ptr && r->ipset.ptr->family &&
-	    r->ipset.ptr->family != r->family)
-	{
-		warn_section("nat", r, e, "refers to ipset with different family");
+	    r->ipset.ptr->family != r->family) {
+		warn_section("nat", r, e,
+			     "refers to ipset with different family");
 		return false;
 	}
 
-	if (r->ip_src.family && r->ip_src.family != r->family)
-	{
-		warn_section("nat", r, e, "uses source ip with different family");
+	if (r->ip_src.family && r->ip_src.family != r->family) {
+		warn_section("nat", r, e,
+			     "uses source ip with different family");
 		return false;
 	}
 
-	if (r->ip_dest.family && r->ip_dest.family != r->family)
-	{
-		warn_section("nat", r, e, "uses destination ip with different family");
+	if (r->ip_dest.family && r->ip_dest.family != r->family) {
+		warn_section("nat", r, e,
+			     "uses destination ip with different family");
 		return false;
 	}
 
-	if (r->ip_snat.family && r->ip_snat.family != r->family)
-	{
+	if (r->ip_snat.family && r->ip_snat.family != r->family) {
 		warn_section("nat", r, e, "uses snat ip with different family");
 		return false;
 	}
@@ -104,9 +100,7 @@ check_families(struct uci_element *e, struct fw3_snat *r)
 	return true;
 }
 
-
-static struct fw3_snat*
-alloc_snat(struct fw3_state *state)
+static struct fw3_snat *alloc_snat(struct fw3_state *state)
 {
 	struct fw3_snat *snat = calloc(1, sizeof(*snat));
 
@@ -119,70 +113,67 @@ alloc_snat(struct fw3_state *state)
 	return snat;
 }
 
-static bool
-check_snat(struct fw3_state *state, struct fw3_snat *snat, struct uci_element *e)
+static bool check_snat(struct fw3_state *state, struct fw3_snat *snat,
+		       struct uci_element *e)
 {
 	if (!snat->enabled)
 		return false;
 
-	if (snat->src.invert)
-	{
-		warn_section("nat", snat, e, "must not have an inverted source");
+	if (snat->src.invert) {
+		warn_section("nat", snat, e,
+			     "must not have an inverted source");
 		return false;
-	}
-	else if (snat->src.set && !snat->src.any &&
-			!(snat->_src = fw3_lookup_zone(state, snat->src.name)))
-	{
-		warn_section("nat", snat, e, "refers to not existing zone '%s'", snat->src.name);
+	} else if (snat->src.set && !snat->src.any &&
+		   !(snat->_src = fw3_lookup_zone(state, snat->src.name))) {
+		warn_section("nat", snat, e, "refers to not existing zone '%s'",
+			     snat->src.name);
 		return false;
-	}
-	else if (snat->ipset.set && state->disable_ipsets)
-	{
-		warn_section("nat", snat, e, "skipped due to disabled ipset support");
+	} else if (snat->ipset.set && state->disable_ipsets) {
+		warn_section("nat", snat, e,
+			     "skipped due to disabled ipset support");
 		return false;
-	}
-	else if (snat->ipset.set &&
-			!(snat->ipset.ptr = fw3_lookup_ipset(state, snat->ipset.name)))
-	{
-		warn_section("nat", snat, e, "refers to unknown ipset '%s'", snat->ipset.name);
+	} else if (snat->ipset.set && !(snat->ipset.ptr = fw3_lookup_ipset(
+						state, snat->ipset.name))) {
+		warn_section("nat", snat, e, "refers to unknown ipset '%s'",
+			     snat->ipset.name);
 		return false;
 	}
 
 	if (!check_families(e, snat))
 		return false;
 
-	if (snat->target == FW3_FLAG_UNSPEC)
-	{
-		warn_section("nat", snat, e, "has no target specified, defaulting to MASQUERADE");
+	if (snat->target == FW3_FLAG_UNSPEC) {
+		warn_section(
+			"nat", snat, e,
+			"has no target specified, defaulting to MASQUERADE");
 		snat->target = FW3_FLAG_MASQUERADE;
-	}
-	else if (snat->target != FW3_FLAG_ACCEPT && snat->target != FW3_FLAG_SNAT &&
-			snat->target != FW3_FLAG_MASQUERADE)
-	{
-		warn_section("nat", snat, e, "has invalid target specified, defaulting to MASQUERADE");
+	} else if (snat->target != FW3_FLAG_ACCEPT &&
+		   snat->target != FW3_FLAG_SNAT &&
+		   snat->target != FW3_FLAG_MASQUERADE) {
+		warn_section(
+			"nat", snat, e,
+			"has invalid target specified, defaulting to MASQUERADE");
 		snat->target = FW3_FLAG_MASQUERADE;
 	}
 
-	if (snat->target == FW3_FLAG_SNAT &&
-			!snat->ip_snat.set && !snat->port_snat.set)
-	{
-		warn_section("nat", snat, e, "needs either 'snat_ip' or 'snat_port' for SNAT");
+	if (snat->target == FW3_FLAG_SNAT && !snat->ip_snat.set &&
+	    !snat->port_snat.set) {
+		warn_section("nat", snat, e,
+			     "needs either 'snat_ip' or 'snat_port' for SNAT");
 		return false;
-	}
-	else if (snat->target != FW3_FLAG_SNAT && snat->ip_snat.set)
-	{
-		warn_section("nat", snat, e, "must not use 'snat_ip' for non-SNAT");
+	} else if (snat->target != FW3_FLAG_SNAT && snat->ip_snat.set) {
+		warn_section("nat", snat, e,
+			     "must not use 'snat_ip' for non-SNAT");
 		return false;
-	}
-	else if (snat->target != FW3_FLAG_SNAT && snat->port_snat.set)
-	{
-		warn_section("nat", snat, e, "must not use 'snat_port' for non-SNAT");
+	} else if (snat->target != FW3_FLAG_SNAT && snat->port_snat.set) {
+		warn_section("nat", snat, e,
+			     "must not use 'snat_port' for non-SNAT");
 		return false;
 	}
 
-	if (list_empty(&snat->proto))
-	{
-		warn_section("nat", snat, e, "does not specify a protocol, assuming all");
+	if (list_empty(&snat->proto)) {
+		warn_section("nat", snat, e,
+			     "does not specify a protocol, assuming all");
 		fw3_parse_protocol(&snat->proto, "all", true);
 	}
 
@@ -192,9 +183,8 @@ check_snat(struct fw3_state *state, struct fw3_snat *snat, struct uci_element *e
 	return true;
 }
 
-
-void
-fw3_load_snats(struct fw3_state *state, struct uci_package *p, struct blob_attr *a)
+void fw3_load_snats(struct fw3_state *state, struct uci_package *p,
+		    struct blob_attr *a)
 {
 	struct uci_section *s;
 	struct uci_element *e;
@@ -204,7 +194,8 @@ fw3_load_snats(struct fw3_state *state, struct uci_package *p, struct blob_attr
 
 	INIT_LIST_HEAD(&state->snats);
 
-	blob_for_each_attr(entry, a, rem) {
+	blob_for_each_attr(entry, a, rem)
+	{
 		const char *type = NULL;
 		const char *name = "ubus rule";
 
@@ -218,9 +209,9 @@ fw3_load_snats(struct fw3_state *state, struct uci_package *p, struct blob_attr
 		if (!snat)
 			continue;
 
-		if (!fw3_parse_blob_options(snat, fw3_snat_opts, entry, name))
-		{
-			warn_section("nat", snat, NULL, "skipped due to invalid options");
+		if (!fw3_parse_blob_options(snat, fw3_snat_opts, entry, name)) {
+			warn_section("nat", snat, NULL,
+				     "skipped due to invalid options");
 			fw3_free_snat(snat);
 			continue;
 		}
@@ -240,8 +231,7 @@ fw3_load_snats(struct fw3_state *state, struct uci_package *p, struct blob_attr
 		if (!snat)
 			continue;
 
-		if (!fw3_parse_options(snat, fw3_snat_opts, s))
-		{
+		if (!fw3_parse_options(snat, fw3_snat_opts, s)) {
 			warn_elem(e, "skipped due to invalid options");
 			fw3_free_snat(snat);
 			continue;
@@ -252,8 +242,7 @@ fw3_load_snats(struct fw3_state *state, struct uci_package *p, struct blob_attr
 	}
 }
 
-static void
-append_chain(struct fw3_ipt_rule *r, struct fw3_snat *snat)
+static void append_chain(struct fw3_ipt_rule *r, struct fw3_snat *snat)
 {
 	if (snat->_src)
 		fw3_ipt_rule_append(r, "zone_%s_postrouting", snat->src.name);
@@ -261,56 +250,57 @@ append_chain(struct fw3_ipt_rule *r, struct fw3_snat *snat)
 		fw3_ipt_rule_append(r, "POSTROUTING");
 }
 
-static void
-set_target(struct fw3_ipt_rule *r, struct fw3_snat *snat,
-           struct fw3_protocol *proto)
+static void set_target(struct fw3_ipt_rule *r, struct fw3_snat *snat,
+		       struct fw3_protocol *proto)
 {
 	char buf[sizeof("255.255.255.255:65535-65535\0")];
 
-	if (snat->target == FW3_FLAG_SNAT)
-	{
+	if (snat->target == FW3_FLAG_SNAT) {
 		buf[0] = '\0';
 
-		if (snat->ip_snat.set)
-		{
-			inet_ntop(AF_INET, &snat->ip_snat.address.v4, buf, sizeof(buf));
+		if (snat->ip_snat.set) {
+			inet_ntop(AF_INET, &snat->ip_snat.address.v4, buf,
+				  sizeof(buf));
 		}
 
 		if (snat->port_snat.set && proto && !proto->any &&
-		    (proto->protocol == 6 || proto->protocol == 17 || proto->protocol == 1))
-		{
-			if (snat->port_snat.port_min == snat->port_snat.port_max)
-				sprintf(buf + strlen(buf), ":%u", snat->port_snat.port_min);
+		    (proto->protocol == 6 || proto->protocol == 17 ||
+		     proto->protocol == 1)) {
+			if (snat->port_snat.port_min ==
+			    snat->port_snat.port_max)
+				sprintf(buf + strlen(buf), ":%u",
+					snat->port_snat.port_min);
 			else
 				sprintf(buf + strlen(buf), ":%u-%u",
-						snat->port_snat.port_min, snat->port_snat.port_max);
+					snat->port_snat.port_min,
+					snat->port_snat.port_max);
 
 			if (snat->connlimit_ports) {
 				char portcntbuf[6];
 				snprintf(portcntbuf, sizeof(portcntbuf), "%u",
-						1 + snat->port_snat.port_max - snat->port_snat.port_min);
-
-				fw3_ipt_rule_addarg(r, false, "-m", "connlimit");
-				fw3_ipt_rule_addarg(r, false, "--connlimit-daddr", NULL);
-				fw3_ipt_rule_addarg(r, false, "--connlimit-upto", portcntbuf);
+					 1 + snat->port_snat.port_max -
+						 snat->port_snat.port_min);
+
+				fw3_ipt_rule_addarg(r, false, "-m",
+						    "connlimit");
+				fw3_ipt_rule_addarg(r, false,
+						    "--connlimit-daddr", NULL);
+				fw3_ipt_rule_addarg(r, false,
+						    "--connlimit-upto",
+						    portcntbuf);
 			}
 		}
 
 		fw3_ipt_rule_target(r, "SNAT");
 		fw3_ipt_rule_addarg(r, false, "--to-source", buf);
-	}
-	else if (snat->target == FW3_FLAG_ACCEPT)
-	{
+	} else if (snat->target == FW3_FLAG_ACCEPT) {
 		fw3_ipt_rule_target(r, "ACCEPT");
-	}
-	else
-	{
+	} else {
 		fw3_ipt_rule_target(r, "MASQUERADE");
 	}
 }
 
-static void
-set_comment(struct fw3_ipt_rule *r, const char *name, int num)
+static void set_comment(struct fw3_ipt_rule *r, const char *name, int num)
 {
 	if (name)
 		fw3_ipt_rule_comment(r, name);
@@ -318,16 +308,15 @@ set_comment(struct fw3_ipt_rule *r, const char *name, int num)
 		fw3_ipt_rule_comment(r, "@nat[%u]", num);
 }
 
-static void
-print_snat(struct fw3_ipt_handle *h, struct fw3_state *state,
-           struct fw3_snat *snat, int num, struct fw3_protocol *proto)
+static void print_snat(struct fw3_ipt_handle *h, struct fw3_state *state,
+		       struct fw3_snat *snat, int num,
+		       struct fw3_protocol *proto)
 {
 	struct fw3_ipt_rule *r;
 	struct fw3_address *src, *dst;
 	struct fw3_port *spt, *dpt;
 
-	switch (h->table)
-	{
+	switch (h->table) {
 	case FW3_TABLE_NAT:
 		src = &snat->ip_src;
 		dst = &snat->ip_dest;
@@ -352,9 +341,8 @@ print_snat(struct fw3_ipt_handle *h, struct fw3_state *state,
 	}
 }
 
-static void
-expand_snat(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                struct fw3_snat *snat, int num)
+static void expand_snat(struct fw3_ipt_handle *handle, struct fw3_state *state,
+			struct fw3_snat *snat, int num)
 {
 	struct fw3_protocol *proto;
 
@@ -363,37 +351,32 @@ expand_snat(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	else
 		info("   * NAT #%u", num);
 
-	if (!fw3_is_family(snat->_src, handle->family))
-	{
+	if (!fw3_is_family(snat->_src, handle->family)) {
 		info("     ! Skipping due to different family of zone");
 		return;
 	}
 
 	if (!fw3_is_family(&snat->ip_src, handle->family) ||
 	    !fw3_is_family(&snat->ip_dest, handle->family) ||
-		!fw3_is_family(&snat->ip_snat, handle->family))
-	{
-		if (!snat->ip_src.resolved ||
-		    !snat->ip_dest.resolved ||
+	    !fw3_is_family(&snat->ip_snat, handle->family)) {
+		if (!snat->ip_src.resolved || !snat->ip_dest.resolved ||
 		    !snat->ip_snat.resolved)
 			info("     ! Skipping due to different family of ip address");
 
 		return;
 	}
 
-	if (snat->ipset.ptr)
-	{
-		if (!fw3_is_family(snat->ipset.ptr, handle->family))
-		{
+	if (snat->ipset.ptr) {
+		if (!fw3_is_family(snat->ipset.ptr, handle->family)) {
 			info("     ! Skipping due to different family in ipset");
 			return;
 		}
 
-		if (!fw3_check_ipset(snat->ipset.ptr))
-		{
+		if (!fw3_check_ipset(snat->ipset.ptr)) {
 			info("     ! Skipping due to missing ipset '%s'",
 			     snat->ipset.ptr->external ?
-					snat->ipset.ptr->external : snat->ipset.ptr->name);
+				     snat->ipset.ptr->external :
+				     snat->ipset.ptr->name);
 			return;
 		}
 
@@ -404,8 +387,7 @@ expand_snat(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		print_snat(handle, state, snat, num, proto);
 }
 
-void
-fw3_print_snats(struct fw3_ipt_handle *handle, struct fw3_state *state)
+void fw3_print_snats(struct fw3_ipt_handle *handle, struct fw3_state *state)
 {
 	int num = 0;
 	struct fw3_snat *snat;
@@ -416,6 +398,6 @@ fw3_print_snats(struct fw3_ipt_handle *handle, struct fw3_state *state)
 	if (handle->table != FW3_TABLE_NAT)
 		return;
 
-	list_for_each_entry(snat, &state->snats, list)
+	list_for_each_entry (snat, &state->snats, list)
 		expand_snat(handle, state, snat, num++);
 }
diff --git a/snats.h b/snats.h
index a0aabc1..a48c08f 100644
--- a/snats.h
+++ b/snats.h
@@ -27,7 +27,8 @@
 
 extern const struct fw3_option fw3_snat_opts[];
 
-void fw3_load_snats(struct fw3_state *state, struct uci_package *p, struct blob_attr *a);
+void fw3_load_snats(struct fw3_state *state, struct uci_package *p,
+		    struct blob_attr *a);
 void fw3_print_snats(struct fw3_ipt_handle *handle, struct fw3_state *state);
 
 static inline void fw3_free_snat(struct fw3_snat *snat)
diff --git a/ubus.c b/ubus.c
index bea9166..537ae1e 100644
--- a/ubus.c
+++ b/ubus.c
@@ -21,10 +21,10 @@
 static struct blob_attr *interfaces = NULL;
 static struct blob_attr *procd_data;
 
-
 static void dump_cb(struct ubus_request *req, int type, struct blob_attr *msg)
 {
-	static const struct blobmsg_policy policy = { "interface", BLOBMSG_TYPE_ARRAY };
+	static const struct blobmsg_policy policy = { "interface",
+						      BLOBMSG_TYPE_ARRAY };
 	struct blob_attr *cur;
 
 	blobmsg_parse(&policy, 1, &cur, blob_data(msg), blob_len(msg));
@@ -32,18 +32,18 @@ static void dump_cb(struct ubus_request *req, int type, struct blob_attr *msg)
 		interfaces = blob_memdup(cur);
 }
 
-static void procd_data_cb(struct ubus_request *req, int type, struct blob_attr *msg)
+static void procd_data_cb(struct ubus_request *req, int type,
+			  struct blob_attr *msg)
 {
 	procd_data = blob_memdup(msg);
 }
 
-bool
-fw3_ubus_connect(void)
+bool fw3_ubus_connect(void)
 {
 	bool status = false;
 	uint32_t id;
 	struct ubus_context *ctx = ubus_connect(NULL);
-	struct blob_buf b = { };
+	struct blob_buf b = {};
 
 	blob_buf_init(&b, 0);
 
@@ -73,15 +73,14 @@ out:
 	return status;
 }
 
-void
-fw3_ubus_disconnect(void)
+void fw3_ubus_disconnect(void)
 {
 	free(interfaces);
 	interfaces = NULL;
 }
 
-static struct fw3_address *
-parse_subnet(enum fw3_family family, struct blob_attr *dict, int rem)
+static struct fw3_address *parse_subnet(enum fw3_family family,
+					struct blob_attr *dict, int rem)
 {
 	struct blob_attr *cur;
 	struct fw3_address *addr;
@@ -97,18 +96,18 @@ parse_subnet(enum fw3_family family, struct blob_attr *dict, int rem)
 	{
 		if (!strcmp(blobmsg_name(cur), "address"))
 			inet_pton(family == FW3_FAMILY_V4 ? AF_INET : AF_INET6,
-			          blobmsg_get_string(cur), &addr->address.v6);
+				  blobmsg_get_string(cur), &addr->address.v6);
 
 		else if (!strcmp(blobmsg_name(cur), "mask"))
-			fw3_bitlen2netmask(family, blobmsg_get_u32(cur), &addr->mask.v6);
+			fw3_bitlen2netmask(family, blobmsg_get_u32(cur),
+					   &addr->mask.v6);
 	}
 
 	return addr;
 }
 
-static int
-parse_subnets(struct list_head *head, enum fw3_family family,
-              struct blob_attr *list)
+static int parse_subnets(struct list_head *head, enum fw3_family family,
+			 struct blob_attr *list)
 {
 	struct blob_attr *cur;
 	struct fw3_address *addr;
@@ -121,10 +120,10 @@ parse_subnets(struct list_head *head, enum fw3_family family,
 
 	__blob_for_each_attr(cur, blobmsg_data(list), rem)
 	{
-		addr = parse_subnet(family, blobmsg_data(cur), blobmsg_data_len(cur));
+		addr = parse_subnet(family, blobmsg_data(cur),
+				    blobmsg_data_len(cur));
 
-		if (addr)
-		{
+		if (addr) {
 			list_add_tail(&addr->list, head);
 			n++;
 		}
@@ -133,15 +132,9 @@ parse_subnets(struct list_head *head, enum fw3_family family,
 	return n;
 }
 
-struct fw3_device *
-fw3_ubus_device(const char *net)
+struct fw3_device *fw3_ubus_device(const char *net)
 {
-	enum {
-		DEV_INTERFACE,
-		DEV_DEVICE,
-		DEV_L3_DEVICE,
-		__DEV_MAX
-	};
+	enum { DEV_INTERFACE, DEV_DEVICE, DEV_L3_DEVICE, __DEV_MAX };
 	static const struct blobmsg_policy policy[__DEV_MAX] = {
 		[DEV_INTERFACE] = { "interface", BLOBMSG_TYPE_STRING },
 		[DEV_DEVICE] = { "device", BLOBMSG_TYPE_STRING },
@@ -156,8 +149,10 @@ fw3_ubus_device(const char *net)
 	if (!net || !interfaces)
 		return NULL;
 
-	blobmsg_for_each_attr(cur, interfaces, rem) {
-		blobmsg_parse(policy, __DEV_MAX, tb, blobmsg_data(cur), blobmsg_len(cur));
+	blobmsg_for_each_attr(cur, interfaces, rem)
+	{
+		blobmsg_parse(policy, __DEV_MAX, tb, blobmsg_data(cur),
+			      blobmsg_len(cur));
 		if (!tb[DEV_INTERFACE] ||
 		    strcmp(blobmsg_data(tb[DEV_INTERFACE]), net) != 0)
 			continue;
@@ -186,21 +181,19 @@ fw3_ubus_device(const char *net)
 	return dev;
 }
 
-int
-fw3_ubus_address(struct list_head *list, const char *net)
+int fw3_ubus_address(struct list_head *list, const char *net)
 {
-	enum {
-		ADDR_INTERFACE,
-		ADDR_IPV4,
-		ADDR_IPV6,
-		ADDR_IPV6_PREFIX,
-		__ADDR_MAX
-	};
+	enum { ADDR_INTERFACE,
+	       ADDR_IPV4,
+	       ADDR_IPV6,
+	       ADDR_IPV6_PREFIX,
+	       __ADDR_MAX };
 	static const struct blobmsg_policy policy[__ADDR_MAX] = {
 		[ADDR_INTERFACE] = { "interface", BLOBMSG_TYPE_STRING },
 		[ADDR_IPV4] = { "ipv4-address", BLOBMSG_TYPE_ARRAY },
 		[ADDR_IPV6] = { "ipv6-address", BLOBMSG_TYPE_ARRAY },
-		[ADDR_IPV6_PREFIX] = { "ipv6-prefix-assignment", BLOBMSG_TYPE_ARRAY },
+		[ADDR_IPV6_PREFIX] = { "ipv6-prefix-assignment",
+				       BLOBMSG_TYPE_ARRAY },
 	};
 	struct blob_attr *tb[__ADDR_MAX];
 	struct blob_attr *cur;
@@ -209,8 +202,10 @@ fw3_ubus_address(struct list_head *list, const char *net)
 	if (!net || !interfaces)
 		return 0;
 
-	blobmsg_for_each_attr(cur, interfaces, rem) {
-		blobmsg_parse(policy, __ADDR_MAX, tb, blobmsg_data(cur), blobmsg_len(cur));
+	blobmsg_for_each_attr(cur, interfaces, rem)
+	{
+		blobmsg_parse(policy, __ADDR_MAX, tb, blobmsg_data(cur),
+			      blobmsg_len(cur));
 
 		if (!tb[ADDR_INTERFACE] ||
 		    strcmp(blobmsg_data(tb[ADDR_INTERFACE]), net) != 0)
@@ -224,25 +219,29 @@ fw3_ubus_address(struct list_head *list, const char *net)
 	return n;
 }
 
-void
-fw3_ubus_zone_devices(struct fw3_zone *zone)
+void fw3_ubus_zone_devices(struct fw3_zone *zone)
 {
 	struct blob_attr *c, *cur, *dcur;
 	unsigned r, rem, drem;
 	const char *name;
 	bool matches;
 
-	blobmsg_for_each_attr(c, interfaces, r) {
+	blobmsg_for_each_attr(c, interfaces, r)
+	{
 		name = NULL;
 		matches = false;
 
-		blobmsg_for_each_attr(cur, c, rem) {
+		blobmsg_for_each_attr(cur, c, rem)
+		{
 			if (!strcmp(blobmsg_name(cur), "interface"))
 				name = blobmsg_get_string(cur);
 			else if (!strcmp(blobmsg_name(cur), "data"))
-				blobmsg_for_each_attr(dcur, cur, drem)
-					if (!strcmp(blobmsg_name(dcur), "zone"))
-						matches = !strcmp(blobmsg_get_string(dcur), zone->name);
+				blobmsg_for_each_attr(
+					dcur, cur,
+					drem) if (!strcmp(blobmsg_name(dcur),
+							  "zone")) matches =
+					!strcmp(blobmsg_get_string(dcur),
+						zone->name);
 		}
 
 		if (name && matches)
@@ -251,8 +250,8 @@ fw3_ubus_zone_devices(struct fw3_zone *zone)
 }
 
 static void fw3_ubus_rules_add(struct blob_buf *b, const char *service,
-		const char *instance, const char *device,
-		const struct blob_attr *rule, unsigned n)
+			       const char *instance, const char *device,
+			       const struct blob_attr *rule, unsigned n)
 {
 	void *k = blobmsg_open_table(b, "");
 	struct blob_attr *ropt;
@@ -260,7 +259,8 @@ static void fw3_ubus_rules_add(struct blob_buf *b, const char *service,
 	char *type = NULL;
 	char comment[256];
 
-	blobmsg_for_each_attr(ropt, rule, orem) {
+	blobmsg_for_each_attr(ropt, rule, orem)
+	{
 		if (!strcmp(blobmsg_name(ropt), "type"))
 			type = blobmsg_data(ropt);
 		if (device && !strcmp(blobmsg_name(ropt), "device"))
@@ -270,11 +270,11 @@ static void fw3_ubus_rules_add(struct blob_buf *b, const char *service,
 	}
 
 	if (instance)
-		snprintf(comment, sizeof(comment), "ubus:%s[%s] %s %d",
-				service, instance, type ? type : "rule", n);
+		snprintf(comment, sizeof(comment), "ubus:%s[%s] %s %d", service,
+			 instance, type ? type : "rule", n);
 	else
-		snprintf(comment, sizeof(comment), "ubus:%s %s %d",
-				service, type ? type : "rule", n);
+		snprintf(comment, sizeof(comment), "ubus:%s %s %d", service,
+			 type ? type : "rule", n);
 
 	blobmsg_add_string(b, "name", comment);
 
@@ -284,21 +284,22 @@ static void fw3_ubus_rules_add(struct blob_buf *b, const char *service,
 	blobmsg_close_table(b, k);
 }
 
-void
-fw3_ubus_rules(struct blob_buf *b)
+void fw3_ubus_rules(struct blob_buf *b)
 {
 	blob_buf_init(b, 0);
 
 	struct blob_attr *c, *cur, *dcur, *rule;
 	unsigned n, r, rem, drem, rrem;
 
-	blobmsg_for_each_attr(c, interfaces, r) {
+	blobmsg_for_each_attr(c, interfaces, r)
+	{
 		const char *l3_device = NULL;
 		const char *iface_proto = "unknown";
 		const char *iface_name = "unknown";
 		struct blob_attr *data = NULL;
 
-		blobmsg_for_each_attr(cur, c, rem) {
+		blobmsg_for_each_attr(cur, c, rem)
+		{
 			if (!strcmp(blobmsg_name(cur), "l3_device"))
 				l3_device = blobmsg_get_string(cur);
 			else if (!strcmp(blobmsg_name(cur), "interface"))
@@ -312,7 +313,8 @@ fw3_ubus_rules(struct blob_buf *b)
 		if (!data || !l3_device)
 			continue;
 
-		blobmsg_for_each_attr(dcur, data, drem) {
+		blobmsg_for_each_attr(dcur, data, drem)
+		{
 			if (strcmp(blobmsg_name(dcur), "firewall"))
 				continue;
 
@@ -320,7 +322,7 @@ fw3_ubus_rules(struct blob_buf *b)
 
 			blobmsg_for_each_attr(rule, dcur, rrem)
 				fw3_ubus_rules_add(b, iface_name, iface_proto,
-					l3_device, rule, n++);
+						   l3_device, rule, n++);
 		}
 	}
 
@@ -328,12 +330,14 @@ fw3_ubus_rules(struct blob_buf *b)
 		return;
 
 	/* service */
-	blobmsg_for_each_attr(c, procd_data, r) {
+	blobmsg_for_each_attr(c, procd_data, r)
+	{
 		if (!blobmsg_check_attr(c, true))
 			continue;
 
 		/* instance */
-		blobmsg_for_each_attr(cur, c, rem) {
+		blobmsg_for_each_attr(cur, c, rem)
+		{
 			if (!blobmsg_check_attr(cur, true))
 				continue;
 
@@ -343,13 +347,15 @@ fw3_ubus_rules(struct blob_buf *b)
 
 				blobmsg_for_each_attr(rule, cur, rrem)
 					fw3_ubus_rules_add(b, blobmsg_name(c),
-						NULL, NULL, rule, n++);
+							   NULL, NULL, rule,
+							   n++);
 
 				continue;
 			}
 
 			/* type */
-			blobmsg_for_each_attr(dcur, cur, drem) {
+			blobmsg_for_each_attr(dcur, cur, drem)
+			{
 				if (!blobmsg_check_attr(dcur, true))
 					continue;
 
@@ -360,7 +366,8 @@ fw3_ubus_rules(struct blob_buf *b)
 
 				blobmsg_for_each_attr(rule, dcur, rrem)
 					fw3_ubus_rules_add(b, blobmsg_name(c),
-						blobmsg_name(cur), NULL, rule, n++);
+							   blobmsg_name(cur),
+							   NULL, rule, n++);
 			}
 		}
 	}
diff --git a/ubus.h b/ubus.h
index 263f827..6d1d7dd 100644
--- a/ubus.h
+++ b/ubus.h
@@ -24,11 +24,10 @@
 
 #include "options.h"
 
-
 bool fw3_ubus_connect(void);
 void fw3_ubus_disconnect(void);
 
-struct fw3_device * fw3_ubus_device(const char *net);
+struct fw3_device *fw3_ubus_device(const char *net);
 
 int fw3_ubus_address(struct list_head *list, const char *net);
 
diff --git a/utils.c b/utils.c
index 7f09787..0d9f96d 100644
--- a/utils.c
+++ b/utils.c
@@ -27,23 +27,19 @@
 #include "zones.h"
 #include "ipsets.h"
 
-
 static int lock_fd = -1;
 static pid_t pipe_pid = -1;
 static FILE *pipe_fd = NULL;
 
 bool fw3_pr_debug = false;
 
-
-static void
-warn_elem_section_name(struct uci_section *s, bool find_name)
+static void warn_elem_section_name(struct uci_section *s, bool find_name)
 {
 	int i = 0;
 	struct uci_option *o;
 	struct uci_element *tmp;
 
-	if (s->anonymous)
-	{
+	if (s->anonymous) {
 		uci_foreach_element(&s->package->sections, tmp)
 		{
 			if (strcmp(uci_to_section(tmp)->type, s->type))
@@ -57,22 +53,19 @@ warn_elem_section_name(struct uci_section *s, bool find_name)
 
 		fprintf(stderr, "@%s[%d]", s->type, i);
 
-		if (find_name)
-		{
+		if (find_name) {
 			uci_foreach_element(&s->options, tmp)
 			{
 				o = uci_to_option(tmp);
 
-				if (!strcmp(tmp->name, "name") && (o->type == UCI_TYPE_STRING))
-				{
+				if (!strcmp(tmp->name, "name") &&
+				    (o->type == UCI_TYPE_STRING)) {
 					fprintf(stderr, " (%s)", o->v.string);
 					break;
 				}
 			}
 		}
-	}
-	else
-	{
+	} else {
 		fprintf(stderr, "'%s'", s->e.name);
 	}
 
@@ -80,65 +73,57 @@ warn_elem_section_name(struct uci_section *s, bool find_name)
 		fprintf(stderr, " ");
 }
 
-void
-warn_elem(struct uci_element *e, const char *format, ...)
+void warn_elem(struct uci_element *e, const char *format, ...)
 {
-	if (e->type == UCI_TYPE_SECTION)
-	{
+	if (e->type == UCI_TYPE_SECTION) {
 		fprintf(stderr, "Warning: Section ");
 		warn_elem_section_name(uci_to_section(e), true);
-	}
-	else if (e->type == UCI_TYPE_OPTION)
-	{
+	} else if (e->type == UCI_TYPE_OPTION) {
 		fprintf(stderr, "Warning: Option ");
 		warn_elem_section_name(uci_to_option(e)->section, false);
 		fprintf(stderr, ".%s ", e->name);
 	}
 
-    va_list argptr;
-    va_start(argptr, format);
-    vfprintf(stderr, format, argptr);
-    va_end(argptr);
+	va_list argptr;
+	va_start(argptr, format);
+	vfprintf(stderr, format, argptr);
+	va_end(argptr);
 
 	fprintf(stderr, "\n");
 }
 
-void
-warn(const char* format, ...)
+void warn(const char *format, ...)
 {
 	fprintf(stderr, "Warning: ");
-    va_list argptr;
-    va_start(argptr, format);
-    vfprintf(stderr, format, argptr);
-    va_end(argptr);
+	va_list argptr;
+	va_start(argptr, format);
+	vfprintf(stderr, format, argptr);
+	va_end(argptr);
 	fprintf(stderr, "\n");
 }
 
-void
-error(const char* format, ...)
+void error(const char *format, ...)
 {
 	fprintf(stderr, "Error: ");
-    va_list argptr;
-    va_start(argptr, format);
-    vfprintf(stderr, format, argptr);
-    va_end(argptr);
+	va_list argptr;
+	va_start(argptr, format);
+	vfprintf(stderr, format, argptr);
+	va_end(argptr);
 	fprintf(stderr, "\n");
 
 	exit(1);
 }
 
-void
-info(const char* format, ...)
+void info(const char *format, ...)
 {
 	va_list argptr;
-    va_start(argptr, format);
-    vfprintf(stderr, format, argptr);
-    va_end(argptr);
+	va_start(argptr, format);
+	vfprintf(stderr, format, argptr);
+	va_end(argptr);
 	fprintf(stderr, "\n");
 }
 
-void *
-fw3_alloc(size_t size)
+void *fw3_alloc(size_t size)
 {
 	void *mem;
 
@@ -150,8 +135,7 @@ fw3_alloc(size_t size)
 	return mem;
 }
 
-char *
-fw3_strdup(const char *s)
+char *fw3_strdup(const char *s)
 {
 	char *ns;
 
@@ -163,8 +147,7 @@ fw3_strdup(const char *s)
 	return ns;
 }
 
-const char *
-fw3_find_command(const char *cmd)
+const char *fw3_find_command(const char *cmd)
 {
 	struct stat s;
 	int plen = 0, clen = strlen(cmd) + 1;
@@ -181,8 +164,7 @@ fw3_find_command(const char *cmd)
 
 	p = search;
 
-	do
-	{
+	do {
 		if (*p != ':' && *p != '\0')
 			continue;
 
@@ -198,21 +180,18 @@ fw3_find_command(const char *cmd)
 			return path;
 
 		search = p + 1;
-	}
-	while (*p++);
+	} while (*p++);
 
 	return NULL;
 }
 
-bool
-fw3_stdout_pipe(void)
+bool fw3_stdout_pipe(void)
 {
 	pipe_fd = stdout;
 	return true;
 }
 
-bool
-__fw3_command_pipe(bool silent, const char *command, ...)
+bool __fw3_command_pipe(bool silent, const char *command, ...)
 {
 	pid_t pid;
 	va_list argp;
@@ -239,22 +218,20 @@ __fw3_command_pipe(bool silent, const char *command, ...)
 
 	va_start(argp, command);
 
-	while ((arg = va_arg(argp, char *)) != NULL)
-	{
+	while ((arg = va_arg(argp, char *)) != NULL) {
 		tmp = realloc(args, ++argn * sizeof(arg));
 
 		if (!tmp)
 			break;
 
 		args = tmp;
-		args[argn-2] = arg;
-		args[argn-1] = NULL;
+		args[argn - 2] = arg;
+		args[argn - 1] = NULL;
 	}
 
 	va_end(argp);
 
-	switch ((pid = fork()))
-	{
+	switch ((pid = fork())) {
 	case -1:
 		free(args);
 		return false;
@@ -284,13 +261,11 @@ __fw3_command_pipe(bool silent, const char *command, ...)
 	return true;
 }
 
-void
-fw3_pr(const char *fmt, ...)
+void fw3_pr(const char *fmt, ...)
 {
 	va_list args;
 
-	if (fw3_pr_debug && pipe_fd != stdout)
-	{
+	if (fw3_pr_debug && pipe_fd != stdout) {
 		va_start(args, fmt);
 		vfprintf(stderr, fmt, args);
 		va_end(args);
@@ -301,8 +276,7 @@ fw3_pr(const char *fmt, ...)
 	va_end(args);
 }
 
-void
-fw3_command_close(void)
+void fw3_command_close(void)
 {
 	if (pipe_fd && pipe_fd != stdout)
 		fclose(pipe_fd);
@@ -316,24 +290,21 @@ fw3_command_close(void)
 	pipe_pid = -1;
 }
 
-bool
-fw3_has_table(bool ipv6, const char *table)
+bool fw3_has_table(bool ipv6, const char *table)
 {
 	FILE *f;
 
 	char line[12];
 	bool seen = false;
 
-	const char *path = ipv6
-		? "/proc/net/ip6_tables_names" : "/proc/net/ip_tables_names";
+	const char *path = ipv6 ? "/proc/net/ip6_tables_names" :
+				  "/proc/net/ip_tables_names";
 
 	if (!(f = fopen(path, "r")))
 		return false;
 
-	while (fgets(line, sizeof(line), f))
-	{
-		if (!strncmp(line, table, strlen(table)))
-		{
+	while (fgets(line, sizeof(line), f)) {
+		if (!strncmp(line, table, strlen(table))) {
 			seen = true;
 			break;
 		}
@@ -344,20 +315,17 @@ fw3_has_table(bool ipv6, const char *table)
 	return seen;
 }
 
-
-bool
-fw3_lock(void)
+bool fw3_lock(void)
 {
-	lock_fd = open(FW3_LOCKFILE, O_CREAT|O_WRONLY, S_IRUSR|S_IWUSR);
+	lock_fd = open(FW3_LOCKFILE, O_CREAT | O_WRONLY, S_IRUSR | S_IWUSR);
 
-	if (lock_fd < 0)
-	{
-		warn("Cannot create lock file %s: %s", FW3_LOCKFILE, strerror(errno));
+	if (lock_fd < 0) {
+		warn("Cannot create lock file %s: %s", FW3_LOCKFILE,
+		     strerror(errno));
 		return false;
 	}
 
-	if (flock(lock_fd, LOCK_EX))
-	{
+	if (flock(lock_fd, LOCK_EX)) {
 		warn("Cannot acquire exclusive lock: %s", strerror(errno));
 		return false;
 	}
@@ -365,8 +333,7 @@ fw3_lock(void)
 	return true;
 }
 
-void
-fw3_unlock(void)
+void fw3_unlock(void)
 {
 	if (lock_fd < 0)
 		return;
@@ -380,47 +347,44 @@ fw3_unlock(void)
 	lock_fd = -1;
 }
 
-
-static void
-write_defaults_uci(struct uci_context *ctx, struct fw3_defaults *d,
-                   struct uci_package *dest)
+static void write_defaults_uci(struct uci_context *ctx, struct fw3_defaults *d,
+			       struct uci_package *dest)
 {
 	char buf[sizeof("0xffffffff\0")];
 	struct uci_ptr ptr = { .p = dest };
 
 	uci_add_section(ctx, dest, "defaults", &ptr.s);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "input";
-	ptr.value  = fw3_flag_names[d->policy_input];
+	ptr.value = fw3_flag_names[d->policy_input];
 	uci_set(ctx, &ptr);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "output";
-	ptr.value  = fw3_flag_names[d->policy_output];
+	ptr.value = fw3_flag_names[d->policy_output];
 	uci_set(ctx, &ptr);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "forward";
-	ptr.value  = fw3_flag_names[d->policy_forward];
+	ptr.value = fw3_flag_names[d->policy_forward];
 	uci_set(ctx, &ptr);
 
 	sprintf(buf, "0x%x", d->flags[0]);
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "__flags_v4";
-	ptr.value  = buf;
+	ptr.value = buf;
 	uci_set(ctx, &ptr);
 
 	sprintf(buf, "0x%x", d->flags[1]);
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "__flags_v6";
-	ptr.value  = buf;
+	ptr.value = buf;
 	uci_set(ctx, &ptr);
 }
 
-static void
-write_zone_uci(struct uci_context *ctx, struct fw3_zone *z,
-               struct uci_package *dest, struct ifaddrs *ifaddr)
+static void write_zone_uci(struct uci_context *ctx, struct fw3_zone *z,
+			   struct uci_package *dest, struct ifaddrs *ifaddr)
 {
 	struct fw3_device *dev;
 	struct fw3_address *sub;
@@ -443,50 +407,49 @@ write_zone_uci(struct uci_context *ctx, struct fw3_zone *z,
 
 	uci_add_section(ctx, dest, "zone", &ptr.s);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "name";
-	ptr.value  = z->name;
+	ptr.value = z->name;
 	uci_set(ctx, &ptr);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "input";
-	ptr.value  = fw3_flag_names[z->policy_input];
+	ptr.value = fw3_flag_names[z->policy_input];
 	uci_set(ctx, &ptr);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "output";
-	ptr.value  = fw3_flag_names[z->policy_output];
+	ptr.value = fw3_flag_names[z->policy_output];
 	uci_set(ctx, &ptr);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "forward";
-	ptr.value  = fw3_flag_names[z->policy_forward];
+	ptr.value = fw3_flag_names[z->policy_forward];
 	uci_set(ctx, &ptr);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "masq";
-	ptr.value  = z->masq ? "1" : "0";
+	ptr.value = z->masq ? "1" : "0";
 	uci_set(ctx, &ptr);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "mtu_fix";
-	ptr.value  = z->mtu_fix ? "1" : "0";
+	ptr.value = z->mtu_fix ? "1" : "0";
 	uci_set(ctx, &ptr);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "custom_chains";
-	ptr.value  = z->custom_chains ? "1" : "0";
+	ptr.value = z->custom_chains ? "1" : "0";
 	uci_set(ctx, &ptr);
 
-	if (fam != FW3_FAMILY_ANY)
-	{
-		ptr.o      = NULL;
+	if (fam != FW3_FAMILY_ANY) {
+		ptr.o = NULL;
 		ptr.option = "family";
-		ptr.value  = fw3_flag_names[fam];
+		ptr.value = fw3_flag_names[fam];
 		uci_set(ctx, &ptr);
 	}
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "device";
 
 	fw3_foreach(dev, &z->devices)
@@ -503,7 +466,8 @@ write_zone_uci(struct uci_context *ctx, struct fw3_zone *z,
 			p += snprintf(p, ep - p, "!");
 
 		if (*dev->network)
-			p += snprintf(p, ep - p, "%s@%s", dev->name, dev->network);
+			p += snprintf(p, ep - p, "%s@%s", dev->name,
+				      dev->network);
 		else
 			p += snprintf(p, ep - p, "%s", dev->name);
 
@@ -511,7 +475,7 @@ write_zone_uci(struct uci_context *ctx, struct fw3_zone *z,
 		uci_add_list(ctx, &ptr);
 	}
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "subnet";
 
 	fw3_foreach(sub, &z->subnets)
@@ -523,7 +487,7 @@ write_zone_uci(struct uci_context *ctx, struct fw3_zone *z,
 		uci_add_list(ctx, &ptr);
 	}
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "__addrs";
 
 	fw3_foreach(dev, &z->devices)
@@ -531,19 +495,21 @@ write_zone_uci(struct uci_context *ctx, struct fw3_zone *z,
 		if (!dev)
 			continue;
 
-		for (ifa = ifaddr; ifa; ifa = ifa->ifa_next)
-		{
+		for (ifa = ifaddr; ifa; ifa = ifa->ifa_next) {
 			if (!ifa->ifa_addr || strcmp(dev->name, ifa->ifa_name))
 				continue;
 
 			if (ifa->ifa_addr->sa_family == AF_INET)
 				inet_ntop(AF_INET,
-				          &((struct sockaddr_in *)ifa->ifa_addr)->sin_addr,
-				          buf, sizeof(buf));
+					  &((struct sockaddr_in *)ifa->ifa_addr)
+						   ->sin_addr,
+					  buf, sizeof(buf));
 			else if (ifa->ifa_addr->sa_family == AF_INET6)
-				inet_ntop(AF_INET6,
-				          &((struct sockaddr_in6 *)ifa->ifa_addr)->sin6_addr,
-				          buf, sizeof(buf));
+				inet_ntop(
+					AF_INET6,
+					&((struct sockaddr_in6 *)ifa->ifa_addr)
+						 ->sin6_addr,
+					buf, sizeof(buf));
 			else
 				continue;
 
@@ -553,21 +519,20 @@ write_zone_uci(struct uci_context *ctx, struct fw3_zone *z,
 	}
 
 	sprintf(buf, "0x%x", z->flags[0]);
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "__flags_v4";
-	ptr.value  = buf;
+	ptr.value = buf;
 	uci_set(ctx, &ptr);
 
 	sprintf(buf, "0x%x", z->flags[1]);
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "__flags_v6";
-	ptr.value  = buf;
+	ptr.value = buf;
 	uci_set(ctx, &ptr);
 }
 
-static void
-write_ipset_uci(struct uci_context *ctx, struct fw3_ipset *s,
-                struct uci_package *dest)
+static void write_ipset_uci(struct uci_context *ctx, struct fw3_ipset *s,
+			    struct uci_package *dest)
 {
 	struct fw3_ipset_datatype *type;
 
@@ -580,45 +545,43 @@ write_ipset_uci(struct uci_context *ctx, struct fw3_ipset *s,
 
 	uci_add_section(ctx, dest, "ipset", &ptr.s);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "name";
-	ptr.value  = s->name;
+	ptr.value = s->name;
 	uci_set(ctx, &ptr);
 
-	ptr.o      = NULL;
+	ptr.o = NULL;
 	ptr.option = "storage";
-	ptr.value  = fw3_ipset_method_names[s->method];
+	ptr.value = fw3_ipset_method_names[s->method];
 	uci_set(ctx, &ptr);
 
-	list_for_each_entry(type, &s->datatypes, list)
-	{
-		sprintf(buf, "%s_%s", type->dir, fw3_ipset_type_names[type->type]);
-		ptr.o      = NULL;
+	list_for_each_entry (type, &s->datatypes, list) {
+		sprintf(buf, "%s_%s", type->dir,
+			fw3_ipset_type_names[type->type]);
+		ptr.o = NULL;
 		ptr.option = "match";
-		ptr.value  = buf;
+		ptr.value = buf;
 		uci_add_list(ctx, &ptr);
 	}
 
-	if (s->iprange.set)
-	{
-		ptr.o      = NULL;
+	if (s->iprange.set) {
+		ptr.o = NULL;
 		ptr.option = "iprange";
-		ptr.value  = fw3_address_to_string(&s->iprange, false, false);
+		ptr.value = fw3_address_to_string(&s->iprange, false, false);
 		uci_set(ctx, &ptr);
 	}
 
-	if (s->portrange.set)
-	{
-		sprintf(buf, "%u-%u", s->portrange.port_min, s->portrange.port_max);
-		ptr.o      = NULL;
+	if (s->portrange.set) {
+		sprintf(buf, "%u-%u", s->portrange.port_min,
+			s->portrange.port_max);
+		ptr.o = NULL;
 		ptr.option = "portrange";
-		ptr.value  = buf;
+		ptr.value = buf;
 		uci_set(ctx, &ptr);
 	}
 }
 
-void
-fw3_write_statefile(void *state)
+void fw3_write_statefile(void *state)
 {
 	FILE *sf;
 	struct fw3_state *s = state;
@@ -629,23 +592,20 @@ fw3_write_statefile(void *state)
 	struct uci_package *p;
 
 	if (fw3_no_family(s->defaults.flags[0]) &&
-	    fw3_no_family(s->defaults.flags[1]))
-	{
+	    fw3_no_family(s->defaults.flags[1])) {
 		unlink(FW3_STATEFILE);
-	}
-	else
-	{
+	} else {
 		sf = fopen(FW3_STATEFILE, "w+");
 
-		if (!sf)
-		{
-			warn("Cannot create state %s: %s", FW3_STATEFILE, strerror(errno));
+		if (!sf) {
+			warn("Cannot create state %s: %s", FW3_STATEFILE,
+			     strerror(errno));
 			return;
 		}
 
-		if (getifaddrs(&ifaddr))
-		{
-			warn("Cannot get interface addresses: %s", strerror(errno));
+		if (getifaddrs(&ifaddr)) {
+			warn("Cannot get interface addresses: %s",
+			     strerror(errno));
 			ifaddr = NULL;
 		}
 
@@ -654,14 +614,13 @@ fw3_write_statefile(void *state)
 
 		uci_import(s->uci, sf, "fw3_state", NULL, true);
 
-		if ((p = uci_lookup_package(s->uci, "fw3_state")) != NULL)
-		{
+		if ((p = uci_lookup_package(s->uci, "fw3_state")) != NULL) {
 			write_defaults_uci(s->uci, &s->defaults, p);
 
-			list_for_each_entry(z, &s->zones, list)
+			list_for_each_entry (z, &s->zones, list)
 				write_zone_uci(s->uci, z, p, ifaddr);
 
-			list_for_each_entry(i, &s->ipsets, list)
+			list_for_each_entry (i, &s->ipsets, list)
 				write_ipset_uci(s->uci, i, p);
 
 			uci_export(s->uci, sf, p, true);
@@ -676,21 +635,17 @@ fw3_write_statefile(void *state)
 	}
 }
 
-
-void
-fw3_free_object(void *obj, const void *opts)
+void fw3_free_object(void *obj, const void *opts)
 {
 	const struct fw3_option *ol;
 	struct list_head *list, *cur, *tmp;
 
-	for (ol = opts; ol->name; ol++)
-	{
+	for (ol = opts; ol->name; ol++) {
 		if (!ol->elem_size)
 			continue;
 
 		list = (struct list_head *)((char *)obj + ol->offset);
-		list_for_each_safe(cur, tmp, list)
-		{
+		list_for_each_safe (cur, tmp, list) {
 			list_del(cur);
 			free(cur);
 		}
@@ -699,16 +654,14 @@ fw3_free_object(void *obj, const void *opts)
 	free(obj);
 }
 
-void
-fw3_free_list(struct list_head *head)
+void fw3_free_list(struct list_head *head)
 {
 	struct list_head *entry, *tmp;
 
 	if (!head)
 		return;
 
-	list_for_each_safe(entry, tmp, head)
-	{
+	list_for_each_safe (entry, tmp, head) {
 		list_del(entry);
 		free(entry);
 	}
@@ -716,8 +669,7 @@ fw3_free_list(struct list_head *head)
 	free(head);
 }
 
-bool
-fw3_hotplug(bool add, void *zone, void *device)
+bool fw3_hotplug(bool add, void *zone, void *device)
 {
 	struct fw3_zone *z = zone;
 	struct fw3_device *d = device;
@@ -725,8 +677,7 @@ fw3_hotplug(bool add, void *zone, void *device)
 	if (!*d->network)
 		return false;
 
-	switch (fork())
-	{
+	switch (fork()) {
 	case -1:
 		warn("Unable to fork(): %s\n", strerror(errno));
 		return false;
@@ -741,13 +692,14 @@ fw3_hotplug(bool add, void *zone, void *device)
 	close(0);
 	close(1);
 	close(2);
-	if (chdir("/")) {};
+	if (chdir("/")) {
+	};
 
 	clearenv();
-	setenv("ACTION",    add ? "add" : "remove", 1);
-	setenv("ZONE",      z->name,                1);
-	setenv("INTERFACE", d->network,             1);
-	setenv("DEVICE",    d->name,                1);
+	setenv("ACTION", add ? "add" : "remove", 1);
+	setenv("ZONE", z->name, 1);
+	setenv("INTERFACE", d->network, 1);
+	setenv("DEVICE", d->name, 1);
 
 	execl(FW3_HOTPLUG, FW3_HOTPLUG, "firewall", NULL);
 
@@ -755,8 +707,7 @@ fw3_hotplug(bool add, void *zone, void *device)
 	return false;
 }
 
-int
-fw3_netmask2bitlen(int family, void *mask)
+int fw3_netmask2bitlen(int family, void *mask)
 {
 	int bits;
 	struct in_addr *v4;
@@ -765,33 +716,32 @@ fw3_netmask2bitlen(int family, void *mask)
 	if (family == FW3_FAMILY_V6)
 		for (bits = 0, v6 = mask;
 		     bits < 128 && (v6->s6_addr[bits / 8] << (bits % 8)) & 128;
-		     bits++);
+		     bits++)
+			;
 	else
 		for (bits = 0, v4 = mask;
 		     bits < 32 && (ntohl(v4->s_addr) << bits) & 0x80000000;
-		     bits++);
+		     bits++)
+			;
 
 	return bits;
 }
 
-bool
-fw3_bitlen2netmask(int family, int bits, void *mask)
+bool fw3_bitlen2netmask(int family, int bits, void *mask)
 {
 	int i;
 	uint8_t rem, b;
 	struct in_addr *v4;
 	struct in6_addr *v6;
 
-	if (family == FW3_FAMILY_V6)
-	{
+	if (family == FW3_FAMILY_V6) {
 		if (bits < -128 || bits > 128)
 			return false;
 
 		v6 = mask;
 		rem = abs(bits);
 
-		for (i = 0; i < sizeof(v6->s6_addr); i++)
-		{
+		for (i = 0; i < sizeof(v6->s6_addr); i++) {
 			b = (rem > 8) ? 8 : rem;
 			v6->s6_addr[i] = (uint8_t)(0xFF << (8 - b));
 			rem -= b;
@@ -800,9 +750,7 @@ fw3_bitlen2netmask(int family, int bits, void *mask)
 		if (bits < 0)
 			for (i = 0; i < sizeof(v6->s6_addr); i++)
 				v6->s6_addr[i] = ~v6->s6_addr[i];
-	}
-	else
-	{
+	} else {
 		if (bits < -32 || bits > 32)
 			return false;
 
@@ -816,8 +764,7 @@ fw3_bitlen2netmask(int family, int bits, void *mask)
 	return true;
 }
 
-void
-fw3_flush_conntrack(void *state)
+void fw3_flush_conntrack(void *state)
 {
 	bool found;
 	struct fw3_state *s = state;
@@ -830,10 +777,8 @@ fw3_flush_conntrack(void *state)
 	char buf[INET6_ADDRSTRLEN];
 	FILE *ct;
 
-	if (!state)
-	{
-		if ((ct = fopen("/proc/net/nf_conntrack", "w")) != NULL)
-		{
+	if (!state) {
+		if ((ct = fopen("/proc/net/nf_conntrack", "w")) != NULL) {
 			info(" * Flushing conntrack table ...");
 
 			fwrite("f\n", 1, 2, ct);
@@ -843,56 +788,67 @@ fw3_flush_conntrack(void *state)
 		return;
 	}
 
-	if (getifaddrs(&ifaddr))
-	{
+	if (getifaddrs(&ifaddr)) {
 		warn("Cannot get interface addresses: %s", strerror(errno));
 		return;
 	}
 
-	if ((ct = fopen("/proc/net/nf_conntrack", "w")) != NULL)
-	{
-		list_for_each_entry(zone, &s->zones, list)
-		list_for_each_entry(addr, &zone->old_addrs, list)
-		{
-			found = false;
-
-			list_for_each_entry(dev, &zone->devices, list)
-			{
-				for (ifa = ifaddr; ifa && !found; ifa = ifa->ifa_next)
-				{
-					if (!ifa->ifa_addr || strcmp(dev->name, ifa->ifa_name))
-						continue;
-
-					sin = (struct sockaddr_in *)ifa->ifa_addr;
-					sin6 = (struct sockaddr_in6 *)ifa->ifa_addr;
-
-					if (addr->family == FW3_FAMILY_V4 &&
-						sin->sin_family == AF_INET)
-					{
-						found = !memcmp(&addr->address.v4, &sin->sin_addr,
-										sizeof(sin->sin_addr));
-					}
-					else if (addr->family == FW3_FAMILY_V6 &&
-							 sin6->sin6_family == AF_INET6)
-					{
-						found = !memcmp(&addr->address.v6, &sin6->sin6_addr,
-										sizeof(sin6->sin6_addr));
+	if ((ct = fopen("/proc/net/nf_conntrack", "w")) != NULL) {
+		list_for_each_entry (zone, &s->zones, list)
+			list_for_each_entry (addr, &zone->old_addrs, list) {
+				found = false;
+
+				list_for_each_entry (dev, &zone->devices,
+						     list) {
+					for (ifa = ifaddr; ifa && !found;
+					     ifa = ifa->ifa_next) {
+						if (!ifa->ifa_addr ||
+						    strcmp(dev->name,
+							   ifa->ifa_name))
+							continue;
+
+						sin = (struct sockaddr_in *)
+							      ifa->ifa_addr;
+						sin6 = (struct sockaddr_in6 *)
+							       ifa->ifa_addr;
+
+						if (addr->family ==
+							    FW3_FAMILY_V4 &&
+						    sin->sin_family ==
+							    AF_INET) {
+							found = !memcmp(
+								&addr->address
+									 .v4,
+								&sin->sin_addr,
+								sizeof(sin->sin_addr));
+						} else if (addr->family ==
+								   FW3_FAMILY_V6 &&
+							   sin6->sin6_family ==
+								   AF_INET6) {
+							found = !memcmp(
+								&addr->address
+									 .v6,
+								&sin6->sin6_addr,
+								sizeof(sin6->sin6_addr));
+						}
 					}
-				}
 
-				if (found)
-					break;
-			}
+					if (found)
+						break;
+				}
 
-			if (!found)
-			{
-				inet_ntop(addr->family == FW3_FAMILY_V4 ? AF_INET : AF_INET6,
-						  &addr->address.v4, buf, sizeof(buf));
+				if (!found) {
+					inet_ntop(
+						addr->family == FW3_FAMILY_V4 ?
+							AF_INET :
+							AF_INET6,
+						&addr->address.v4, buf,
+						sizeof(buf));
 
-				info(" * Flushing conntrack: %s", buf);
-				fprintf(ct, "%s\n", buf);
+					info(" * Flushing conntrack: %s", buf);
+					fprintf(ct, "%s\n", buf);
+				}
 			}
-		}
 
 		fclose(ct);
 	}
@@ -900,7 +856,8 @@ fw3_flush_conntrack(void *state)
 	freeifaddrs(ifaddr);
 }
 
-bool fw3_attr_parse_name_type(struct blob_attr *entry, const char **name, const char **type)
+bool fw3_attr_parse_name_type(struct blob_attr *entry, const char **name,
+			      const char **type)
 {
 	struct blob_attr *opt;
 	unsigned orem;
@@ -910,17 +867,16 @@ bool fw3_attr_parse_name_type(struct blob_attr *entry, const char **name, const
 
 	*type = NULL;
 
-	blobmsg_for_each_attr(opt, entry, orem)
-		if (!strcmp(blobmsg_name(opt), "type"))
-			*type = blobmsg_get_string(opt);
-		else if (!strcmp(blobmsg_name(opt), "name"))
-			*name = blobmsg_get_string(opt);
+	blobmsg_for_each_attr(opt, entry, orem) if (!strcmp(blobmsg_name(opt),
+							    "type")) *type =
+		blobmsg_get_string(opt);
+	else if (!strcmp(blobmsg_name(opt), "name")) *name =
+		blobmsg_get_string(opt);
 
 	return *type != NULL ? true : false;
 }
 
-const char *
-fw3_protoname(void *proto)
+const char *fw3_protoname(void *proto)
 {
 	static char buf[sizeof("4294967295")];
 	struct fw3_protocol *p = proto;
@@ -931,8 +887,7 @@ fw3_protoname(void *proto)
 
 	pe = getprotobynumber(p->protocol);
 
-	if (!pe)
-	{
+	if (!pe) {
 		snprintf(buf, sizeof(buf), "%u", p->protocol);
 		return buf;
 	}
@@ -940,8 +895,7 @@ fw3_protoname(void *proto)
 	return pe->p_name;
 }
 
-bool
-fw3_check_loopback_dev(const char *name)
+bool fw3_check_loopback_dev(const char *name)
 {
 	struct ifreq ifr;
 	int s = socket(AF_LOCAL, SOCK_DGRAM, 0);
@@ -959,11 +913,11 @@ out:
 	return rv;
 }
 
-bool
-fw3_check_loopback_addr(struct fw3_address *addr)
+bool fw3_check_loopback_addr(struct fw3_address *addr)
 {
 	if (addr->family == FW3_FAMILY_V4 &&
-	    (ntohl(addr->address.v4.s_addr) >> IN_CLASSA_NSHIFT) == IN_LOOPBACKNET)
+	    (ntohl(addr->address.v4.s_addr) >> IN_CLASSA_NSHIFT) ==
+		    IN_LOOPBACKNET)
 		return true;
 
 	if (addr->family == FW3_FAMILY_V6 && !addr->range &&
diff --git a/utils.h b/utils.h
index 1ada0dd..669058d 100644
--- a/utils.h
+++ b/utils.h
@@ -36,11 +36,10 @@
 #include <libubox/blob.h>
 #include <uci.h>
 
-
-#define FW3_STATEFILE	"/var/run/fw3.state"
-#define FW3_LOCKFILE	"/var/run/fw3.lock"
-#define FW3_HELPERCONF	"/usr/share/fw3/helpers.conf"
-#define FW3_HOTPLUG     "/sbin/hotplug-call"
+#define FW3_STATEFILE "/var/run/fw3.state"
+#define FW3_LOCKFILE "/var/run/fw3.lock"
+#define FW3_HELPERCONF "/usr/share/fw3/helpers.conf"
+#define FW3_HOTPLUG "/sbin/hotplug-call"
 
 extern bool fw3_pr_debug;
 
@@ -51,45 +50,46 @@ void warn(const char *format, ...);
 void error(const char *format, ...);
 void info(const char *format, ...);
 
-
-#define warn_section(t, r, e, fmt, ...)					\
-	do {									\
-		if (e)								\
-			warn_elem(e, fmt, ##__VA_ARGS__);			\
-		else								\
-			warn("Warning: ubus " t " (%s) " fmt, 			\
-				(r && r->name) ? r->name : "?", ##__VA_ARGS__);	\
-	} while(0)
+#define warn_section(t, r, e, fmt, ...)                                        \
+	do {                                                                   \
+		if (e)                                                         \
+			warn_elem(e, fmt, ##__VA_ARGS__);                      \
+		else                                                           \
+			warn("Warning: ubus " t " (%s) " fmt,                  \
+			     (r && r->name) ? r->name : "?", ##__VA_ARGS__);   \
+	} while (0)
 
 #define fw3_setbit(field, flag) field |= (1 << (flag))
 #define fw3_delbit(field, flag) field &= ~(1 << (flag))
 #define fw3_hasbit(field, flag) (field & (1 << (flag)))
 
-#define set(field, family, flag) fw3_setbit(field[family == FW3_FAMILY_V6], flag)
-#define del(field, family, flag) fw3_delbit(field[family == FW3_FAMILY_V6], flag)
-#define has(field, family, flag) fw3_hasbit(field[family == FW3_FAMILY_V6], flag)
+#define set(field, family, flag)                                               \
+	fw3_setbit(field[family == FW3_FAMILY_V6], flag)
+#define del(field, family, flag)                                               \
+	fw3_delbit(field[family == FW3_FAMILY_V6], flag)
+#define has(field, family, flag)                                               \
+	fw3_hasbit(field[family == FW3_FAMILY_V6], flag)
 
-#define fw3_foreach(p, h)                                                  \
+#define fw3_foreach(p, h)                                                      \
 	for (p = list_empty(h) ? NULL : list_first_entry(h, typeof(*p), list); \
-         list_empty(h) ? (p == NULL) : (&p->list != (h));                  \
-	     p = list_empty(h) ? list_first_entry(h, typeof(*p), list)         \
-                           : list_entry(p->list.next, typeof(*p), list))
+	     list_empty(h) ? (p == NULL) : (&p->list != (h));                  \
+	     p = list_empty(h) ? list_first_entry(h, typeof(*p), list) :       \
+				 list_entry(p->list.next, typeof(*p), list))
 
-#define fw3_is_family(p, f)                                                \
+#define fw3_is_family(p, f)                                                    \
 	(!p || (p)->family == FW3_FAMILY_ANY || (p)->family == f)
 
-#define fw3_no_family(flags)                                               \
+#define fw3_no_family(flags)                                                   \
 	(!(flags & ((1 << FW3_FAMILY_V4) | (1 << FW3_FAMILY_V6))))
 
-#define fw3_no_table(flags)                                                \
-    (!(flags & ((1<<FW3_TABLE_FILTER)|(1<<FW3_TABLE_NAT)|                  \
-                (1<<FW3_TABLE_MANGLE)|(1<<FW3_TABLE_RAW))))
+#define fw3_no_table(flags)                                                    \
+	(!(flags & ((1 << FW3_TABLE_FILTER) | (1 << FW3_TABLE_NAT) |           \
+		    (1 << FW3_TABLE_MANGLE) | (1 << FW3_TABLE_RAW))))
 
+void *fw3_alloc(size_t size);
+char *fw3_strdup(const char *s);
 
-void * fw3_alloc(size_t size);
-char * fw3_strdup(const char *s);
-
-const char * fw3_find_command(const char *cmd);
+const char *fw3_find_command(const char *cmd);
 
 bool fw3_stdout_pipe(void);
 bool __fw3_command_pipe(bool silent, const char *command, ...);
@@ -103,7 +103,6 @@ bool fw3_has_table(bool ipv6, const char *table);
 bool fw3_lock(void);
 void fw3_unlock(void);
 
-
 void fw3_write_statefile(void *state);
 
 void fw3_free_object(void *obj, const void *opts);
@@ -118,9 +117,10 @@ bool fw3_bitlen2netmask(int family, int bits, void *mask);
 
 void fw3_flush_conntrack(void *zone);
 
-bool fw3_attr_parse_name_type(struct blob_attr *entry, const char **name, const char **type);
+bool fw3_attr_parse_name_type(struct blob_attr *entry, const char **name,
+			      const char **type);
 
-const char * fw3_protoname(void *proto);
+const char *fw3_protoname(void *proto);
 
 bool fw3_check_loopback_dev(const char *name);
 
diff --git a/xtables-10.h b/xtables-10.h
index 7ea5315..bc978bf 100644
--- a/xtables-10.h
+++ b/xtables-10.h
@@ -22,8 +22,7 @@
 extern struct xtables_match *xtables_pending_matches;
 extern struct xtables_target *xtables_pending_targets;
 
-static inline void
-fw3_xt_reset(void)
+static inline void fw3_xt_reset(void)
 {
 	xtables_matches = NULL;
 	xtables_targets = NULL;
@@ -32,107 +31,99 @@ fw3_xt_reset(void)
 	xtables_pending_targets = NULL;
 }
 
-
-static inline const char *
-fw3_xt_get_match_name(struct xtables_match *m)
+static inline const char *fw3_xt_get_match_name(struct xtables_match *m)
 {
-    if (m->alias)
-        return m->alias(m->m);
+	if (m->alias)
+		return m->alias(m->m);
 
-    return m->m->u.user.name;
+	return m->m->u.user.name;
 }
 
-static inline void
-fw3_xt_set_match_name(struct xtables_match *m)
+static inline void fw3_xt_set_match_name(struct xtables_match *m)
 {
-    if (m->real_name)
-        strcpy(m->m->u.user.name, m->real_name);
-    else
-        strcpy(m->m->u.user.name, m->name);
+	if (m->real_name)
+		strcpy(m->m->u.user.name, m->real_name);
+	else
+		strcpy(m->m->u.user.name, m->name);
 }
 
-static inline bool
-fw3_xt_has_match_parse(struct xtables_match *m)
+static inline bool fw3_xt_has_match_parse(struct xtables_match *m)
 {
-    return (m->parse || m->x6_parse);
+	return (m->parse || m->x6_parse);
 }
 
-static inline void
-fw3_xt_free_match_udata(struct xtables_match *m)
+static inline void fw3_xt_free_match_udata(struct xtables_match *m)
 {
-    if (m->udata_size)
-    {
-        free(m->udata);
-        m->udata = fw3_alloc(m->udata_size);
-    }
+	if (m->udata_size) {
+		free(m->udata);
+		m->udata = fw3_alloc(m->udata_size);
+	}
 }
 
-static inline void
-fw3_xt_merge_match_options(struct xtables_globals *g, struct xtables_match *m)
+static inline void fw3_xt_merge_match_options(struct xtables_globals *g,
+					      struct xtables_match *m)
 {
 	if (m->x6_options)
-		g->opts = xtables_options_xfrm(g->orig_opts, g->opts,
-									   m->x6_options, &m->option_offset);
+		g->opts =
+			xtables_options_xfrm(g->orig_opts, g->opts,
+					     m->x6_options, &m->option_offset);
 
 	if (m->extra_opts)
-		g->opts = xtables_merge_options(g->orig_opts, g->opts,
-										m->extra_opts, &m->option_offset);
+		g->opts =
+			xtables_merge_options(g->orig_opts, g->opts,
+					      m->extra_opts, &m->option_offset);
 }
 
-
-static inline const char *
-fw3_xt_get_target_name(struct xtables_target *t)
+static inline const char *fw3_xt_get_target_name(struct xtables_target *t)
 {
-    if (t->alias)
-        return t->alias(t->t);
+	if (t->alias)
+		return t->alias(t->t);
 
-    return t->t->u.user.name;
+	return t->t->u.user.name;
 }
 
-static inline void
-fw3_xt_set_target_name(struct xtables_target *t, const char *name)
+static inline void fw3_xt_set_target_name(struct xtables_target *t,
+					  const char *name)
 {
-    if (t->real_name)
-        strcpy(t->t->u.user.name, t->real_name);
-    else
-        strcpy(t->t->u.user.name, name);
+	if (t->real_name)
+		strcpy(t->t->u.user.name, t->real_name);
+	else
+		strcpy(t->t->u.user.name, name);
 }
 
-static inline bool
-fw3_xt_has_target_parse(struct xtables_target *t)
+static inline bool fw3_xt_has_target_parse(struct xtables_target *t)
 {
-    return (t->parse || t->x6_parse);
+	return (t->parse || t->x6_parse);
 }
 
-static inline void
-fw3_xt_free_target_udata(struct xtables_target *t)
+static inline void fw3_xt_free_target_udata(struct xtables_target *t)
 {
-    if (t->udata_size)
-    {
-        free(t->udata);
-        t->udata = fw3_alloc(t->udata_size);
-    }
+	if (t->udata_size) {
+		free(t->udata);
+		t->udata = fw3_alloc(t->udata_size);
+	}
 }
 
-static inline void
-fw3_xt_merge_target_options(struct xtables_globals *g, struct xtables_target *t)
+static inline void fw3_xt_merge_target_options(struct xtables_globals *g,
+					       struct xtables_target *t)
 {
 	if (t->x6_options)
-		g->opts = xtables_options_xfrm(g->orig_opts, g->opts,
-		                               t->x6_options, &t->option_offset);
+		g->opts =
+			xtables_options_xfrm(g->orig_opts, g->opts,
+					     t->x6_options, &t->option_offset);
 	else
-		g->opts = xtables_merge_options(g->orig_opts, g->opts,
-		                                t->extra_opts, &t->option_offset);
+		g->opts =
+			xtables_merge_options(g->orig_opts, g->opts,
+					      t->extra_opts, &t->option_offset);
 }
 
-static inline void
-fw3_xt_print_matches(void *ip, struct xtables_rule_match *matches)
+static inline void fw3_xt_print_matches(void *ip,
+					struct xtables_rule_match *matches)
 {
 	struct xtables_rule_match *rm;
 	struct xtables_match *m;
 
-	for (rm = matches; rm; rm = rm->next)
-	{
+	for (rm = matches; rm; rm = rm->next) {
 		m = rm->match;
 		printf(" -m %s", fw3_xt_get_match_name(m));
 
@@ -141,11 +132,9 @@ fw3_xt_print_matches(void *ip, struct xtables_rule_match *matches)
 	}
 }
 
-static inline void
-fw3_xt_print_target(void *ip, struct xtables_target *target)
+static inline void fw3_xt_print_target(void *ip, struct xtables_target *target)
 {
-	if (target)
-	{
+	if (target) {
 		printf(" -j %s", fw3_xt_get_target_name(target));
 
 		if (target->save)
diff --git a/xtables-5.h b/xtables-5.h
index 9d11cae..b4c40f0 100644
--- a/xtables-5.h
+++ b/xtables-5.h
@@ -19,85 +19,76 @@
 #ifndef __FW3_XTABLES_5_H
 #define __FW3_XTABLES_5_H
 
-static inline void
-fw3_xt_reset(void)
+static inline void fw3_xt_reset(void)
 {
 	xtables_matches = NULL;
 	xtables_targets = NULL;
 }
 
-
-static inline const char *
-fw3_xt_get_match_name(struct xtables_match *m)
+static inline const char *fw3_xt_get_match_name(struct xtables_match *m)
 {
-    return m->m->u.user.name;
+	return m->m->u.user.name;
 }
 
-static inline void
-fw3_xt_set_match_name(struct xtables_match *m)
+static inline void fw3_xt_set_match_name(struct xtables_match *m)
 {
-    strcpy(m->m->u.user.name, m->name);
+	strcpy(m->m->u.user.name, m->name);
 }
 
-static inline bool
-fw3_xt_has_match_parse(struct xtables_match *m)
+static inline bool fw3_xt_has_match_parse(struct xtables_match *m)
 {
-    return !!m->parse;
+	return !!m->parse;
 }
 
-static inline void
-fw3_xt_free_match_udata(struct xtables_match *m)
+static inline void fw3_xt_free_match_udata(struct xtables_match *m)
 {
-    return;
+	return;
 }
 
-static inline void
-fw3_xt_merge_match_options(struct xtables_globals *g, struct xtables_match *m)
+static inline void fw3_xt_merge_match_options(struct xtables_globals *g,
+					      struct xtables_match *m)
 {
-	g->opts = xtables_merge_options(g->opts, m->extra_opts, &m->option_offset);
+	g->opts = xtables_merge_options(g->opts, m->extra_opts,
+					&m->option_offset);
 }
 
-
-static inline const char *
-fw3_xt_get_target_name(struct xtables_target *t)
+static inline const char *fw3_xt_get_target_name(struct xtables_target *t)
 {
-    return t->t->u.user.name;
+	return t->t->u.user.name;
 }
 
-static inline void
-fw3_xt_set_target_name(struct xtables_target *t, const char *name)
+static inline void fw3_xt_set_target_name(struct xtables_target *t,
+					  const char *name)
 {
-    strcpy(t->t->u.user.name, name);
+	strcpy(t->t->u.user.name, name);
 }
 
-static inline bool
-fw3_xt_has_target_parse(struct xtables_target *t)
+static inline bool fw3_xt_has_target_parse(struct xtables_target *t)
 {
-    return !!t->parse;
+	return !!t->parse;
 }
 
-static inline void
-fw3_xt_free_target_udata(struct xtables_target *t)
+static inline void fw3_xt_free_target_udata(struct xtables_target *t)
 {
-    return;
+	return;
 }
 
-static inline void
-fw3_xt_merge_target_options(struct xtables_globals *g, struct xtables_target *t)
+static inline void fw3_xt_merge_target_options(struct xtables_globals *g,
+					       struct xtables_target *t)
 {
-	g->opts = xtables_merge_options(g->opts, t->extra_opts, &t->option_offset);
+	g->opts = xtables_merge_options(g->opts, t->extra_opts,
+					&t->option_offset);
 }
 
-static inline void
-fw3_xt_print_matches(void *ip, struct xtables_rule_match *matches)
+static inline void fw3_xt_print_matches(void *ip,
+					struct xtables_rule_match *matches)
 {
 	struct xtables_rule_match *rm;
 	struct xtables_match *m;
 
 	printf(" ");
 
-	for (rm = matches; rm; rm = rm->next)
-	{
+	for (rm = matches; rm; rm = rm->next) {
 		m = rm->match;
 		printf("-m %s ", fw3_xt_get_match_name(m));
 
@@ -106,11 +97,9 @@ fw3_xt_print_matches(void *ip, struct xtables_rule_match *matches)
 	}
 }
 
-static inline void
-fw3_xt_print_target(void *ip, struct xtables_target *target)
+static inline void fw3_xt_print_target(void *ip, struct xtables_target *target)
 {
-	if (target)
-	{
+	if (target) {
 		printf("-j %s ", fw3_xt_get_target_name(target));
 
 		if (target->save)
@@ -118,34 +107,33 @@ fw3_xt_print_target(void *ip, struct xtables_target *target)
 	}
 }
 
-
 /* xtables api addons */
 
-static inline void
-xtables_option_mpcall(unsigned int c, char **argv, bool invert,
-                      struct xtables_match *m, void *fw)
+static inline void xtables_option_mpcall(unsigned int c, char **argv,
+					 bool invert, struct xtables_match *m,
+					 void *fw)
 {
 	if (m->parse)
-		m->parse(c - m->option_offset, argv, invert, &m->mflags, fw, &m->m);
+		m->parse(c - m->option_offset, argv, invert, &m->mflags, fw,
+			 &m->m);
 }
 
-static inline void
-xtables_option_mfcall(struct xtables_match *m)
+static inline void xtables_option_mfcall(struct xtables_match *m)
 {
 	if (m->final_check)
 		m->final_check(m->mflags);
 }
 
-static inline void
-xtables_option_tpcall(unsigned int c, char **argv, bool invert,
-                      struct xtables_target *t, void *fw)
+static inline void xtables_option_tpcall(unsigned int c, char **argv,
+					 bool invert, struct xtables_target *t,
+					 void *fw)
 {
 	if (t->parse)
-		t->parse(c - t->option_offset, argv, invert, &t->tflags, fw, &t->t);
+		t->parse(c - t->option_offset, argv, invert, &t->tflags, fw,
+			 &t->t);
 }
 
-static inline void
-xtables_option_tfcall(struct xtables_target *t)
+static inline void xtables_option_tfcall(struct xtables_target *t)
 {
 	if (t->final_check)
 		t->final_check(t->tflags);
@@ -156,18 +144,15 @@ xtables_rule_matches_free(struct xtables_rule_match **matches)
 {
 	struct xtables_rule_match *mp, *tmp;
 
-	for (mp = *matches; mp;)
-	{
+	for (mp = *matches; mp;) {
 		tmp = mp->next;
 
-		if (mp->match->m)
-		{
+		if (mp->match->m) {
 			free(mp->match->m);
 			mp->match->m = NULL;
 		}
 
-		if (mp->match == mp->match->next)
-		{
+		if (mp->match == mp->match->next) {
 			free(mp->match);
 			mp->match = NULL;
 		}
@@ -179,8 +164,7 @@ xtables_rule_matches_free(struct xtables_rule_match **matches)
 	*matches = NULL;
 }
 
-static inline int
-xtables_ipmask_to_cidr(const struct in_addr *mask)
+static inline int xtables_ipmask_to_cidr(const struct in_addr *mask)
 {
 	int bits;
 	uint32_t m;
@@ -191,8 +175,7 @@ xtables_ipmask_to_cidr(const struct in_addr *mask)
 	return bits;
 }
 
-static inline int
-xtables_ip6mask_to_cidr(const struct in6_addr *mask)
+static inline int xtables_ip6mask_to_cidr(const struct in6_addr *mask)
 {
 	int bits = 0;
 	uint32_t a, b, c, d;
@@ -202,14 +185,13 @@ xtables_ip6mask_to_cidr(const struct in6_addr *mask)
 	c = ntohl(mask->s6_addr32[2]);
 	d = ntohl(mask->s6_addr32[3]);
 
-	while (a & 0x80000000U)
-	{
+	while (a & 0x80000000U) {
 		a <<= 1;
-		a  |= (b >> 31) & 1;
+		a |= (b >> 31) & 1;
 		b <<= 1;
-		b  |= (c >> 31) & 1;
+		b |= (c >> 31) & 1;
 		c <<= 1;
-		c  |= (d >> 31) & 1;
+		c |= (d >> 31) & 1;
 		d <<= 1;
 
 		bits++;
diff --git a/zones.c b/zones.c
index 4f2b1e4..5455ff4 100644
--- a/zones.c
+++ b/zones.c
@@ -20,37 +20,38 @@
 #include "ubus.h"
 #include "helpers.h"
 
-
-#define C(f, tbl, tgt, fmt) \
-	{ FW3_FAMILY_##f, FW3_TABLE_##tbl, FW3_FLAG_##tgt, fmt }
+#define C(f, tbl, tgt, fmt)                                                    \
+	{                                                                      \
+		FW3_FAMILY_##f, FW3_TABLE_##tbl, FW3_FLAG_##tgt, fmt           \
+	}
 
 static const struct fw3_chain_spec zone_chains[] = {
-	C(ANY, FILTER, UNSPEC,        "zone_%s_input"),
-	C(ANY, FILTER, UNSPEC,        "zone_%s_output"),
-	C(ANY, FILTER, UNSPEC,        "zone_%s_forward"),
+	C(ANY, FILTER, UNSPEC, "zone_%s_input"),
+	C(ANY, FILTER, UNSPEC, "zone_%s_output"),
+	C(ANY, FILTER, UNSPEC, "zone_%s_forward"),
 
-	C(ANY, FILTER, SRC_ACCEPT,    "zone_%s_src_ACCEPT"),
-	C(ANY, FILTER, SRC_REJECT,    "zone_%s_src_REJECT"),
-	C(ANY, FILTER, SRC_DROP,      "zone_%s_src_DROP"),
+	C(ANY, FILTER, SRC_ACCEPT, "zone_%s_src_ACCEPT"),
+	C(ANY, FILTER, SRC_REJECT, "zone_%s_src_REJECT"),
+	C(ANY, FILTER, SRC_DROP, "zone_%s_src_DROP"),
 
-	C(ANY, FILTER, ACCEPT,        "zone_%s_dest_ACCEPT"),
-	C(ANY, FILTER, REJECT,        "zone_%s_dest_REJECT"),
-	C(ANY, FILTER, DROP,          "zone_%s_dest_DROP"),
+	C(ANY, FILTER, ACCEPT, "zone_%s_dest_ACCEPT"),
+	C(ANY, FILTER, REJECT, "zone_%s_dest_REJECT"),
+	C(ANY, FILTER, DROP, "zone_%s_dest_DROP"),
 
-	C(V4,  NAT,    SNAT,          "zone_%s_postrouting"),
-	C(V4,  NAT,    DNAT,          "zone_%s_prerouting"),
+	C(V4, NAT, SNAT, "zone_%s_postrouting"),
+	C(V4, NAT, DNAT, "zone_%s_prerouting"),
 
-	C(ANY, RAW,    HELPER,        "zone_%s_helper"),
-	C(ANY, RAW,    NOTRACK,       "zone_%s_notrack"),
+	C(ANY, RAW, HELPER, "zone_%s_helper"),
+	C(ANY, RAW, NOTRACK, "zone_%s_notrack"),
 
 	C(ANY, FILTER, CUSTOM_CHAINS, "input_%s_rule"),
 	C(ANY, FILTER, CUSTOM_CHAINS, "output_%s_rule"),
 	C(ANY, FILTER, CUSTOM_CHAINS, "forwarding_%s_rule"),
 
-	C(V4,  NAT,    CUSTOM_CHAINS, "prerouting_%s_rule"),
-	C(V4,  NAT,    CUSTOM_CHAINS, "postrouting_%s_rule"),
+	C(V4, NAT, CUSTOM_CHAINS, "prerouting_%s_rule"),
+	C(V4, NAT, CUSTOM_CHAINS, "postrouting_%s_rule"),
 
-	{ }
+	{}
 };
 
 enum fw3_zone_logmask {
@@ -59,69 +60,63 @@ enum fw3_zone_logmask {
 };
 
 const struct fw3_option fw3_zone_opts[] = {
-	FW3_OPT("enabled",             bool,     zone,     enabled),
+	FW3_OPT("enabled", bool, zone, enabled),
 
-	FW3_OPT("name",                string,   zone,     name),
-	FW3_OPT("family",              family,   zone,     family),
+	FW3_OPT("name", string, zone, name),
+	FW3_OPT("family", family, zone, family),
 
-	FW3_LIST("network",            device,   zone,     networks),
-	FW3_LIST("device",             device,   zone,     devices),
-	FW3_LIST("subnet",             network,  zone,     subnets),
+	FW3_LIST("network", device, zone, networks),
+	FW3_LIST("device", device, zone, devices),
+	FW3_LIST("subnet", network, zone, subnets),
 
-	FW3_OPT("input",               target,   zone,     policy_input),
-	FW3_OPT("forward",             target,   zone,     policy_forward),
-	FW3_OPT("output",              target,   zone,     policy_output),
+	FW3_OPT("input", target, zone, policy_input),
+	FW3_OPT("forward", target, zone, policy_forward),
+	FW3_OPT("output", target, zone, policy_output),
 
-	FW3_OPT("masq",                bool,     zone,     masq),
-	FW3_OPT("masq_allow_invalid",  bool,     zone,     masq_allow_invalid),
-	FW3_LIST("masq_src",           network,  zone,     masq_src),
-	FW3_LIST("masq_dest",          network,  zone,     masq_dest),
+	FW3_OPT("masq", bool, zone, masq),
+	FW3_OPT("masq_allow_invalid", bool, zone, masq_allow_invalid),
+	FW3_LIST("masq_src", network, zone, masq_src),
+	FW3_LIST("masq_dest", network, zone, masq_dest),
 
-	FW3_OPT("extra",               string,   zone,     extra_src),
-	FW3_OPT("extra_src",           string,   zone,     extra_src),
-	FW3_OPT("extra_dest",          string,   zone,     extra_dest),
+	FW3_OPT("extra", string, zone, extra_src),
+	FW3_OPT("extra_src", string, zone, extra_src),
+	FW3_OPT("extra_dest", string, zone, extra_dest),
 
-	FW3_OPT("mtu_fix",             bool,     zone,     mtu_fix),
-	FW3_OPT("custom_chains",       bool,     zone,     custom_chains),
+	FW3_OPT("mtu_fix", bool, zone, mtu_fix),
+	FW3_OPT("custom_chains", bool, zone, custom_chains),
 
-	FW3_OPT("log",                 int,      zone,     log),
-	FW3_OPT("log_limit",           limit,    zone,     log_limit),
+	FW3_OPT("log", int, zone, log),
+	FW3_OPT("log_limit", limit, zone, log_limit),
 
-	FW3_OPT("auto_helper",         bool,     zone,     auto_helper),
-	FW3_LIST("helper",             cthelper, zone,     cthelpers),
+	FW3_OPT("auto_helper", bool, zone, auto_helper),
+	FW3_LIST("helper", cthelper, zone, cthelpers),
 
-	FW3_OPT("__flags_v4",          int,      zone,     flags[0]),
-	FW3_OPT("__flags_v6",          int,      zone,     flags[1]),
+	FW3_OPT("__flags_v4", int, zone, flags[0]),
+	FW3_OPT("__flags_v6", int, zone, flags[1]),
 
-	FW3_LIST("__addrs",            address,  zone,     old_addrs),
+	FW3_LIST("__addrs", address, zone, old_addrs),
 
-	{ }
+	{}
 };
 
-static void
-check_policy(struct uci_element *e, enum fw3_flag *pol, enum fw3_flag def,
-             const char *name)
+static void check_policy(struct uci_element *e, enum fw3_flag *pol,
+			 enum fw3_flag def, const char *name)
 {
-	if (*pol == FW3_FLAG_UNSPEC)
-	{
+	if (*pol == FW3_FLAG_UNSPEC) {
 		warn_elem(e, "has no %s policy specified, using default", name);
 		*pol = def;
-	}
-	else if (*pol > FW3_FLAG_DROP)
-	{
+	} else if (*pol > FW3_FLAG_DROP) {
 		warn_elem(e, "has invalid %s policy, using default", name);
 		*pol = def;
 	}
 }
 
-static bool
-check_masq_addrs(struct list_head *head)
+static bool check_masq_addrs(struct list_head *head)
 {
 	struct fw3_address *addr;
 	int n_addr = 0, n_failed = 0;
 
-	list_for_each_entry(addr, head, list)
-	{
+	list_for_each_entry (addr, head, list) {
 		if (addr->invert)
 			continue;
 
@@ -134,18 +129,16 @@ check_masq_addrs(struct list_head *head)
 	return (n_addr == 0 || n_failed < n_addr);
 }
 
-static void
-resolve_networks(struct uci_element *e, struct fw3_zone *zone)
+static void resolve_networks(struct uci_element *e, struct fw3_zone *zone)
 {
 	struct fw3_device *net, *tmp;
 
-	list_for_each_entry(net, &zone->networks, list)
-	{
+	list_for_each_entry (net, &zone->networks, list) {
 		tmp = fw3_ubus_device(net->name);
 
-		if (!tmp)
-		{
-			warn_elem(e, "cannot resolve device of network '%s'", net->name);
+		if (!tmp) {
+			warn_elem(e, "cannot resolve device of network '%s'",
+				  net->name);
 			continue;
 		}
 
@@ -154,15 +147,13 @@ resolve_networks(struct uci_element *e, struct fw3_zone *zone)
 	}
 }
 
-static void
-resolve_cthelpers(struct fw3_state *s, struct uci_element *e, struct fw3_zone *zone)
+static void resolve_cthelpers(struct fw3_state *s, struct uci_element *e,
+			      struct fw3_zone *zone)
 {
 	struct fw3_cthelpermatch *match;
 
-	if (list_empty(&zone->cthelpers))
-	{
-		if (!zone->masq && zone->auto_helper)
-		{
+	if (list_empty(&zone->cthelpers)) {
+		if (!zone->masq && zone->auto_helper) {
 			fw3_setbit(zone->flags[0], FW3_FLAG_HELPER);
 			fw3_setbit(zone->flags[1], FW3_FLAG_HELPER);
 		}
@@ -170,19 +161,17 @@ resolve_cthelpers(struct fw3_state *s, struct uci_element *e, struct fw3_zone *z
 		return;
 	}
 
-	list_for_each_entry(match, &zone->cthelpers, list)
-	{
-		if (match->invert)
-		{
+	list_for_each_entry (match, &zone->cthelpers, list) {
+		if (match->invert) {
 			warn_elem(e, "must not use a negated helper match");
 			continue;
 		}
 
 		match->ptr = fw3_lookup_cthelper(s, match->name);
 
-		if (!match->ptr)
-		{
-			warn_elem(e, "refers to not existing helper '%s'", match->name);
+		if (!match->ptr) {
+			warn_elem(e, "refers to not existing helper '%s'",
+				  match->name);
 			continue;
 		}
 
@@ -194,8 +183,7 @@ resolve_cthelpers(struct fw3_state *s, struct uci_element *e, struct fw3_zone *z
 	}
 }
 
-struct fw3_zone *
-fw3_alloc_zone(void)
+struct fw3_zone *fw3_alloc_zone(void)
 {
 	struct fw3_zone *zone;
 
@@ -220,8 +208,7 @@ fw3_alloc_zone(void)
 	return zone;
 }
 
-void
-fw3_load_zones(struct fw3_state *state, struct uci_package *p)
+void fw3_load_zones(struct fw3_state *state, struct uci_package *p)
 {
 	struct uci_section *s;
 	struct uci_element *e;
@@ -245,8 +232,7 @@ fw3_load_zones(struct fw3_state *state, struct uci_package *p)
 		if (!fw3_parse_options(zone, fw3_zone_opts, s))
 			warn_elem(e, "has invalid options");
 
-		if (!zone->enabled)
-		{
+		if (!zone->enabled) {
 			fw3_free_zone(zone);
 			continue;
 		}
@@ -260,17 +246,17 @@ fw3_load_zones(struct fw3_state *state, struct uci_package *p)
 		if (!defs->auto_helper && zone->auto_helper)
 			zone->auto_helper = false;
 
-		if (!zone->name || !*zone->name)
-		{
+		if (!zone->name || !*zone->name) {
 			warn_elem(e, "has no name - ignoring");
 			fw3_free_zone(zone);
 			continue;
 		}
 
-		if (strlen(zone->name) > FW3_ZONE_MAXNAMELEN)
-		{
-			warn_elem(e, "must not have a name longer than %u characters",
-			             FW3_ZONE_MAXNAMELEN);
+		if (strlen(zone->name) > FW3_ZONE_MAXNAMELEN) {
+			warn_elem(
+				e,
+				"must not have a name longer than %u characters",
+				FW3_ZONE_MAXNAMELEN);
 			fw3_free_zone(zone);
 			continue;
 		}
@@ -278,47 +264,50 @@ fw3_load_zones(struct fw3_state *state, struct uci_package *p)
 		fw3_ubus_zone_devices(zone);
 
 		if (list_empty(&zone->networks) && list_empty(&zone->devices) &&
-		    list_empty(&zone->subnets) && !zone->extra_src)
-		{
-			warn_elem(e, "has no device, network, subnet or extra options");
+		    list_empty(&zone->subnets) && !zone->extra_src) {
+			warn_elem(
+				e,
+				"has no device, network, subnet or extra options");
 		}
 
-		if (!check_masq_addrs(&zone->masq_src))
-		{
+		if (!check_masq_addrs(&zone->masq_src)) {
 			warn_elem(e, "has unresolved masq_src, disabling masq");
 			zone->masq = false;
 		}
 
-		if (!check_masq_addrs(&zone->masq_dest))
-		{
-			warn_elem(e, "has unresolved masq_dest, disabling masq");
+		if (!check_masq_addrs(&zone->masq_dest)) {
+			warn_elem(e,
+				  "has unresolved masq_dest, disabling masq");
 			zone->masq = false;
 		}
 
-		check_policy(e, &zone->policy_input, defs->policy_input, "input");
-		check_policy(e, &zone->policy_output, defs->policy_output, "output");
-		check_policy(e, &zone->policy_forward, defs->policy_forward, "forward");
+		check_policy(e, &zone->policy_input, defs->policy_input,
+			     "input");
+		check_policy(e, &zone->policy_output, defs->policy_output,
+			     "output");
+		check_policy(e, &zone->policy_forward, defs->policy_forward,
+			     "forward");
 
 		resolve_networks(e, zone);
 
-		if (zone->masq)
-		{
+		if (zone->masq) {
 			fw3_setbit(zone->flags[0], FW3_FLAG_SNAT);
 		}
 
-		if (zone->custom_chains)
-		{
+		if (zone->custom_chains) {
 			fw3_setbit(zone->flags[0], FW3_FLAG_SNAT);
 			fw3_setbit(zone->flags[0], FW3_FLAG_DNAT);
 		}
 
 		resolve_cthelpers(state, e, zone);
 
-		fw3_setbit(zone->flags[0], fw3_to_src_target(zone->policy_input));
+		fw3_setbit(zone->flags[0],
+			   fw3_to_src_target(zone->policy_input));
 		fw3_setbit(zone->flags[0], zone->policy_forward);
 		fw3_setbit(zone->flags[0], zone->policy_output);
 
-		fw3_setbit(zone->flags[1], fw3_to_src_target(zone->policy_input));
+		fw3_setbit(zone->flags[1],
+			   fw3_to_src_target(zone->policy_input));
 		fw3_setbit(zone->flags[1], zone->policy_forward);
 		fw3_setbit(zone->flags[1], zone->policy_output);
 
@@ -326,24 +315,23 @@ fw3_load_zones(struct fw3_state *state, struct uci_package *p)
 	}
 }
 
-
-static void
-print_zone_chain(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                 bool reload, struct fw3_zone *zone)
+static void print_zone_chain(struct fw3_ipt_handle *handle,
+			     struct fw3_state *state, bool reload,
+			     struct fw3_zone *zone)
 {
 	int i;
 	struct fw3_ipt_rule *r;
 	const struct fw3_chain_spec *c;
 
 	const char *flt_chains[] = {
-		"input",   "input",
-		"output",  "output",
-		"forward", "forwarding",
+		"input", "input", "output", "output", "forward", "forwarding",
 	};
 
 	const char *nat_chains[] = {
-		"prerouting",  "prerouting",
-		"postrouting", "postrouting",
+		"prerouting",
+		"prerouting",
+		"postrouting",
+		"postrouting",
 	};
 
 	if (!fw3_is_family(zone, handle->family))
@@ -354,8 +342,7 @@ print_zone_chain(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	if (zone->custom_chains)
 		set(zone->flags, handle->family, FW3_FLAG_CUSTOM_CHAINS);
 
-	for (c = zone_chains; c->format; c++)
-	{
+	for (c = zone_chains; c->format; c++) {
 		/* don't touch user chains on selective stop */
 		if (reload && c->flag == FW3_FLAG_CUSTOM_CHAINS)
 			continue;
@@ -367,32 +354,43 @@ print_zone_chain(struct fw3_ipt_handle *handle, struct fw3_state *state,
 			continue;
 
 		if (c->flag &&
-		    !fw3_hasbit(zone->flags[handle->family == FW3_FAMILY_V6], c->flag))
+		    !fw3_hasbit(zone->flags[handle->family == FW3_FAMILY_V6],
+				c->flag))
 			continue;
 
 		fw3_ipt_create_chain(handle, c->format, zone->name);
 	}
 
-	if (zone->custom_chains)
-	{
-		if (handle->table == FW3_TABLE_FILTER)
-		{
-			for (i = 0; i < sizeof(flt_chains)/sizeof(flt_chains[0]); i += 2)
-			{
+	if (zone->custom_chains) {
+		if (handle->table == FW3_TABLE_FILTER) {
+			for (i = 0;
+			     i < sizeof(flt_chains) / sizeof(flt_chains[0]);
+			     i += 2) {
 				r = fw3_ipt_rule_new(handle);
-				fw3_ipt_rule_comment(r, "Custom %s %s rule chain", zone->name, flt_chains[i+1]);
-				fw3_ipt_rule_target(r, "%s_%s_rule", flt_chains[i+1], zone->name);
-				fw3_ipt_rule_append(r, "zone_%s_%s", zone->name, flt_chains[i]);
+				fw3_ipt_rule_comment(r,
+						     "Custom %s %s rule chain",
+						     zone->name,
+						     flt_chains[i + 1]);
+				fw3_ipt_rule_target(r, "%s_%s_rule",
+						    flt_chains[i + 1],
+						    zone->name);
+				fw3_ipt_rule_append(r, "zone_%s_%s", zone->name,
+						    flt_chains[i]);
 			}
-		}
-		else if (handle->table == FW3_TABLE_NAT)
-		{
-			for (i = 0; i < sizeof(nat_chains)/sizeof(nat_chains[0]); i += 2)
-			{
+		} else if (handle->table == FW3_TABLE_NAT) {
+			for (i = 0;
+			     i < sizeof(nat_chains) / sizeof(nat_chains[0]);
+			     i += 2) {
 				r = fw3_ipt_rule_new(handle);
-				fw3_ipt_rule_comment(r, "Custom %s %s rule chain", zone->name, nat_chains[i+1]);
-				fw3_ipt_rule_target(r, "%s_%s_rule", nat_chains[i+1], zone->name);
-				fw3_ipt_rule_append(r, "zone_%s_%s", zone->name, nat_chains[i]);
+				fw3_ipt_rule_comment(r,
+						     "Custom %s %s rule chain",
+						     zone->name,
+						     nat_chains[i + 1]);
+				fw3_ipt_rule_target(r, "%s_%s_rule",
+						    nat_chains[i + 1],
+						    zone->name);
+				fw3_ipt_rule_append(r, "zone_%s_%s", zone->name,
+						    nat_chains[i]);
 			}
 		}
 	}
@@ -400,10 +398,10 @@ print_zone_chain(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	set(zone->flags, handle->family, handle->table);
 }
 
-static void
-print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
-					 bool reload, struct fw3_zone *zone,
-                     struct fw3_device *dev, struct fw3_address *sub)
+static void print_interface_rule(struct fw3_ipt_handle *handle,
+				 struct fw3_state *state, bool reload,
+				 struct fw3_zone *zone, struct fw3_device *dev,
+				 struct fw3_address *sub)
 {
 	struct fw3_protocol tcp = { .protocol = 6 };
 	struct fw3_ipt_rule *r;
@@ -414,92 +412,113 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	int i;
 
 	const char *chains[] = {
-		"input", "INPUT",
-		"output", "OUTPUT",
-		"forward", "FORWARD",
+		"input", "INPUT", "output", "OUTPUT", "forward", "FORWARD",
 	};
 
-#define jump_target(t) \
-	((t == FW3_FLAG_REJECT) ? "reject" : fw3_flag_names[t])
+#define jump_target(t) ((t == FW3_FLAG_REJECT) ? "reject" : fw3_flag_names[t])
 
-	if (handle->table == FW3_TABLE_FILTER)
-	{
-		for (t = FW3_FLAG_ACCEPT; t <= FW3_FLAG_DROP; t++)
-		{
-			if (t > FW3_FLAG_ACCEPT && zone->log & FW3_ZONE_LOG_FILTER)
-			{
-				if (has(zone->flags, handle->family, fw3_to_src_target(t)))
-				{
-					r = fw3_ipt_rule_create(handle, NULL, dev, NULL, sub, NULL);
+	if (handle->table == FW3_TABLE_FILTER) {
+		for (t = FW3_FLAG_ACCEPT; t <= FW3_FLAG_DROP; t++) {
+			if (t > FW3_FLAG_ACCEPT &&
+			    zone->log & FW3_ZONE_LOG_FILTER) {
+				if (has(zone->flags, handle->family,
+					fw3_to_src_target(t))) {
+					r = fw3_ipt_rule_create(handle, NULL,
+								dev, NULL, sub,
+								NULL);
 
-					snprintf(buf, sizeof(buf) - 1, "%s %s in: ",
-					         fw3_flag_names[t], zone->name);
+					snprintf(buf, sizeof(buf) - 1,
+						 "%s %s in: ",
+						 fw3_flag_names[t], zone->name);
 
 					fw3_ipt_rule_limit(r, &zone->log_limit);
 					fw3_ipt_rule_target(r, "LOG");
-					fw3_ipt_rule_addarg(r, false, "--log-prefix", buf);
-					fw3_ipt_rule_replace(r, "zone_%s_src_%s",
-					                     zone->name, fw3_flag_names[t]);
+					fw3_ipt_rule_addarg(
+						r, false, "--log-prefix", buf);
+					fw3_ipt_rule_replace(r,
+							     "zone_%s_src_%s",
+							     zone->name,
+							     fw3_flag_names[t]);
 				}
 
-				if (has(zone->flags, handle->family, t))
-				{
-					r = fw3_ipt_rule_create(handle, NULL, NULL, dev, NULL, sub);
+				if (has(zone->flags, handle->family, t)) {
+					r = fw3_ipt_rule_create(handle, NULL,
+								NULL, dev, NULL,
+								sub);
 
-					snprintf(buf, sizeof(buf) - 1, "%s %s out: ",
-					         fw3_flag_names[t], zone->name);
+					snprintf(buf, sizeof(buf) - 1,
+						 "%s %s out: ",
+						 fw3_flag_names[t], zone->name);
 
 					fw3_ipt_rule_limit(r, &zone->log_limit);
 					fw3_ipt_rule_target(r, "LOG");
-					fw3_ipt_rule_addarg(r, false, "--log-prefix", buf);
-					fw3_ipt_rule_replace(r, "zone_%s_dest_%s",
-					                     zone->name, fw3_flag_names[t]);
+					fw3_ipt_rule_addarg(
+						r, false, "--log-prefix", buf);
+					fw3_ipt_rule_replace(r,
+							     "zone_%s_dest_%s",
+							     zone->name,
+							     fw3_flag_names[t]);
 				}
 			}
 
-			if (has(zone->flags, handle->family, fw3_to_src_target(t)))
-			{
-				r = fw3_ipt_rule_create(handle, NULL, dev, NULL, sub, NULL);
+			if (has(zone->flags, handle->family,
+				fw3_to_src_target(t))) {
+				r = fw3_ipt_rule_create(handle, NULL, dev, NULL,
+							sub, NULL);
 				fw3_ipt_rule_target(r, jump_target(t));
 				fw3_ipt_rule_extra(r, zone->extra_src);
 
-				if (t == FW3_FLAG_ACCEPT && !state->defaults.drop_invalid)
-					fw3_ipt_rule_extra(r,
-					                   "-m conntrack --ctstate NEW,UNTRACKED");
-
-				fw3_ipt_rule_replace(r, "zone_%s_src_%s", zone->name,
-				                     fw3_flag_names[t]);
+				if (t == FW3_FLAG_ACCEPT &&
+				    !state->defaults.drop_invalid)
+					fw3_ipt_rule_extra(
+						r,
+						"-m conntrack --ctstate NEW,UNTRACKED");
+
+				fw3_ipt_rule_replace(r, "zone_%s_src_%s",
+						     zone->name,
+						     fw3_flag_names[t]);
 			}
 
-			if (has(zone->flags, handle->family, t))
-			{
-				if (t == FW3_FLAG_ACCEPT &&
-				    zone->masq && !zone->masq_allow_invalid)
-				{
-					r = fw3_ipt_rule_create(handle, NULL, NULL, dev, NULL, sub);
-					fw3_ipt_rule_extra(r, "-m conntrack --ctstate INVALID");
-					fw3_ipt_rule_comment(r, "Prevent NAT leakage");
-					fw3_ipt_rule_target(r, fw3_flag_names[FW3_FLAG_DROP]);
-					fw3_ipt_rule_replace(r, "zone_%s_dest_%s", zone->name,
-					                     fw3_flag_names[t]);
+			if (has(zone->flags, handle->family, t)) {
+				if (t == FW3_FLAG_ACCEPT && zone->masq &&
+				    !zone->masq_allow_invalid) {
+					r = fw3_ipt_rule_create(handle, NULL,
+								NULL, dev, NULL,
+								sub);
+					fw3_ipt_rule_extra(
+						r,
+						"-m conntrack --ctstate INVALID");
+					fw3_ipt_rule_comment(
+						r, "Prevent NAT leakage");
+					fw3_ipt_rule_target(
+						r,
+						fw3_flag_names[FW3_FLAG_DROP]);
+					fw3_ipt_rule_replace(r,
+							     "zone_%s_dest_%s",
+							     zone->name,
+							     fw3_flag_names[t]);
 				}
 
-				r = fw3_ipt_rule_create(handle, NULL, NULL, dev, NULL, sub);
+				r = fw3_ipt_rule_create(handle, NULL, NULL, dev,
+							NULL, sub);
 				fw3_ipt_rule_target(r, jump_target(t));
 				fw3_ipt_rule_extra(r, zone->extra_dest);
-				fw3_ipt_rule_replace(r, "zone_%s_dest_%s", zone->name,
-				                     fw3_flag_names[t]);
+				fw3_ipt_rule_replace(r, "zone_%s_dest_%s",
+						     zone->name,
+						     fw3_flag_names[t]);
 			}
 		}
 
-		for (i = 0; i < sizeof(chains)/sizeof(chains[0]); i += 2)
-		{
+		for (i = 0; i < sizeof(chains) / sizeof(chains[0]); i += 2) {
 			if (*chains[i] == 'o')
-				r = fw3_ipt_rule_create(handle, NULL, NULL, dev, NULL, sub);
+				r = fw3_ipt_rule_create(handle, NULL, NULL, dev,
+							NULL, sub);
 			else
-				r = fw3_ipt_rule_create(handle, NULL, dev, NULL, sub, NULL);
+				r = fw3_ipt_rule_create(handle, NULL, dev, NULL,
+							sub, NULL);
 
-			fw3_ipt_rule_target(r, "zone_%s_%s", zone->name, chains[i]);
+			fw3_ipt_rule_target(r, "zone_%s_%s", zone->name,
+					    chains[i]);
 
 			if (*chains[i] == 'o')
 				fw3_ipt_rule_extra(r, zone->extra_dest);
@@ -508,71 +527,79 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 
 			fw3_ipt_rule_replace(r, chains[i + 1]);
 		}
-	}
-	else if (handle->table == FW3_TABLE_NAT)
-	{
-		if (has(zone->flags, handle->family, FW3_FLAG_DNAT))
-		{
-			r = fw3_ipt_rule_create(handle, NULL, dev, NULL, sub, NULL);
-			fw3_ipt_rule_target(r, "zone_%s_prerouting", zone->name);
+	} else if (handle->table == FW3_TABLE_NAT) {
+		if (has(zone->flags, handle->family, FW3_FLAG_DNAT)) {
+			r = fw3_ipt_rule_create(handle, NULL, dev, NULL, sub,
+						NULL);
+			fw3_ipt_rule_target(r, "zone_%s_prerouting",
+					    zone->name);
 			fw3_ipt_rule_extra(r, zone->extra_src);
 			fw3_ipt_rule_replace(r, "PREROUTING");
 		}
 
-		if (has(zone->flags, handle->family, FW3_FLAG_SNAT))
-		{
-			r = fw3_ipt_rule_create(handle, NULL, NULL, dev, NULL, sub);
-			fw3_ipt_rule_target(r, "zone_%s_postrouting", zone->name);
+		if (has(zone->flags, handle->family, FW3_FLAG_SNAT)) {
+			r = fw3_ipt_rule_create(handle, NULL, NULL, dev, NULL,
+						sub);
+			fw3_ipt_rule_target(r, "zone_%s_postrouting",
+					    zone->name);
 			fw3_ipt_rule_extra(r, zone->extra_dest);
 			fw3_ipt_rule_replace(r, "POSTROUTING");
 		}
-	}
-	else if (handle->table == FW3_TABLE_MANGLE)
-	{
-		if (zone->mtu_fix)
-		{
-			if (zone->log & FW3_ZONE_LOG_MANGLE)
-			{
-				snprintf(buf, sizeof(buf) - 1, "MSSFIX %s out: ", zone->name);
-
-				r = fw3_ipt_rule_create(handle, &tcp, NULL, dev, NULL, sub);
-				fw3_ipt_rule_addarg(r, false, "--tcp-flags", "SYN,RST");
+	} else if (handle->table == FW3_TABLE_MANGLE) {
+		if (zone->mtu_fix) {
+			if (zone->log & FW3_ZONE_LOG_MANGLE) {
+				snprintf(buf, sizeof(buf) - 1,
+					 "MSSFIX %s out: ", zone->name);
+
+				r = fw3_ipt_rule_create(handle, &tcp, NULL, dev,
+							NULL, sub);
+				fw3_ipt_rule_addarg(r, false, "--tcp-flags",
+						    "SYN,RST");
 				fw3_ipt_rule_addarg(r, false, "SYN", NULL);
 				fw3_ipt_rule_limit(r, &zone->log_limit);
-				fw3_ipt_rule_comment(r, "Zone %s MTU fix logging", zone->name);
+				fw3_ipt_rule_comment(r,
+						     "Zone %s MTU fix logging",
+						     zone->name);
 				fw3_ipt_rule_target(r, "LOG");
-				fw3_ipt_rule_addarg(r, false, "--log-prefix", buf);
+				fw3_ipt_rule_addarg(r, false, "--log-prefix",
+						    buf);
 				fw3_ipt_rule_replace(r, "FORWARD");
 			}
 
-			r = fw3_ipt_rule_create(handle, &tcp, NULL, dev, NULL, sub);
+			r = fw3_ipt_rule_create(handle, &tcp, NULL, dev, NULL,
+						sub);
 			fw3_ipt_rule_addarg(r, false, "--tcp-flags", "SYN,RST");
 			fw3_ipt_rule_addarg(r, false, "SYN", NULL);
-			fw3_ipt_rule_comment(r, "Zone %s MTU fixing", zone->name);
+			fw3_ipt_rule_comment(r, "Zone %s MTU fixing",
+					     zone->name);
 			fw3_ipt_rule_target(r, "TCPMSS");
-			fw3_ipt_rule_addarg(r, false, "--clamp-mss-to-pmtu", NULL);
+			fw3_ipt_rule_addarg(r, false, "--clamp-mss-to-pmtu",
+					    NULL);
 			fw3_ipt_rule_replace(r, "FORWARD");
 		}
-	}
-	else if (handle->table == FW3_TABLE_RAW)
-	{
-		bool loopback_dev = (dev != NULL && !dev->any &&
-				     !dev->invert && fw3_check_loopback_dev(dev->name));
-		char *chain = loopback_dev || (sub != NULL && !sub->invert && fw3_check_loopback_addr(sub)) ?
-			      "OUTPUT" : "PREROUTING";
-
-		if (has(zone->flags, handle->family, FW3_FLAG_HELPER))
-		{
-			r = fw3_ipt_rule_create(handle, NULL, loopback_dev ? NULL : dev, NULL, sub, NULL);
-			fw3_ipt_rule_comment(r, "%s CT helper assignment", zone->name);
+	} else if (handle->table == FW3_TABLE_RAW) {
+		bool loopback_dev = (dev != NULL && !dev->any && !dev->invert &&
+				     fw3_check_loopback_dev(dev->name));
+		char *chain = loopback_dev || (sub != NULL && !sub->invert &&
+					       fw3_check_loopback_addr(sub)) ?
+				      "OUTPUT" :
+				      "PREROUTING";
+
+		if (has(zone->flags, handle->family, FW3_FLAG_HELPER)) {
+			r = fw3_ipt_rule_create(handle, NULL,
+						loopback_dev ? NULL : dev, NULL,
+						sub, NULL);
+			fw3_ipt_rule_comment(r, "%s CT helper assignment",
+					     zone->name);
 			fw3_ipt_rule_target(r, "zone_%s_helper", zone->name);
 			fw3_ipt_rule_extra(r, zone->extra_src);
 			fw3_ipt_rule_replace(r, chain);
 		}
 
-		if (has(zone->flags, handle->family, FW3_FLAG_NOTRACK))
-		{
-			r = fw3_ipt_rule_create(handle, NULL, loopback_dev ? NULL : dev, NULL, sub, NULL);
+		if (has(zone->flags, handle->family, FW3_FLAG_NOTRACK)) {
+			r = fw3_ipt_rule_create(handle, NULL,
+						loopback_dev ? NULL : dev, NULL,
+						sub, NULL);
 			fw3_ipt_rule_comment(r, "%s CT bypass", zone->name);
 			fw3_ipt_rule_target(r, "zone_%s_notrack", zone->name);
 			fw3_ipt_rule_extra(r, zone->extra_src);
@@ -581,15 +608,14 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	}
 }
 
-static void
-print_interface_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                      bool reload, struct fw3_zone *zone)
+static void print_interface_rules(struct fw3_ipt_handle *handle,
+				  struct fw3_state *state, bool reload,
+				  struct fw3_zone *zone)
 {
 	struct fw3_device *dev;
 	struct fw3_address *sub;
 
-	fw3_foreach(dev, &zone->devices)
-	fw3_foreach(sub, &zone->subnets)
+	fw3_foreach(dev, &zone->devices) fw3_foreach(sub, &zone->subnets)
 	{
 		if (!fw3_is_family(sub, handle->family))
 			continue;
@@ -601,27 +627,27 @@ print_interface_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	}
 }
 
-static struct fw3_address *
-next_addr(struct fw3_address *addr, struct list_head *list,
-                enum fw3_family family, bool invert)
+static struct fw3_address *next_addr(struct fw3_address *addr,
+				     struct list_head *list,
+				     enum fw3_family family, bool invert)
 {
 	struct list_head *p;
 	struct fw3_address *rv;
 
-	for (p = addr ? addr->list.next : list->next; p != list; p = p->next)
-	{
+	for (p = addr ? addr->list.next : list->next; p != list; p = p->next) {
 		rv = list_entry(p, struct fw3_address, list);
 
-		if (fw3_is_family(rv, family) && rv->set && rv->invert == invert)
+		if (fw3_is_family(rv, family) && rv->set &&
+		    rv->invert == invert)
 			return rv;
 	}
 
 	return NULL;
 }
 
-static void
-print_zone_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                bool reload, struct fw3_zone *zone)
+static void print_zone_rule(struct fw3_ipt_handle *handle,
+			    struct fw3_state *state, bool reload,
+			    struct fw3_zone *zone)
 {
 	bool first_src, first_dest;
 	struct fw3_address *msrc;
@@ -633,11 +659,9 @@ print_zone_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 
 	info("   * Zone '%s'", zone->name);
 
-	switch (handle->table)
-	{
+	switch (handle->table) {
 	case FW3_TABLE_FILTER:
-		if (has(zone->flags, handle->family, FW3_FLAG_DNAT))
-		{
+		if (has(zone->flags, handle->family, FW3_FLAG_DNAT)) {
 			r = fw3_ipt_rule_new(handle);
 			fw3_ipt_rule_extra(r, "-m conntrack --ctstate DNAT");
 			fw3_ipt_rule_comment(r, "Accept port redirections");
@@ -653,47 +677,48 @@ print_zone_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 
 		r = fw3_ipt_rule_new(handle);
 		fw3_ipt_rule_target(r, "zone_%s_src_%s", zone->name,
-		                     fw3_flag_names[zone->policy_input]);
+				    fw3_flag_names[zone->policy_input]);
 		fw3_ipt_rule_append(r, "zone_%s_input", zone->name);
 
 		r = fw3_ipt_rule_new(handle);
 		fw3_ipt_rule_target(r, "zone_%s_dest_%s", zone->name,
-		                     fw3_flag_names[zone->policy_forward]);
+				    fw3_flag_names[zone->policy_forward]);
 		fw3_ipt_rule_append(r, "zone_%s_forward", zone->name);
 
 		r = fw3_ipt_rule_new(handle);
 		fw3_ipt_rule_target(r, "zone_%s_dest_%s", zone->name,
-		                     fw3_flag_names[zone->policy_output]);
+				    fw3_flag_names[zone->policy_output]);
 		fw3_ipt_rule_append(r, "zone_%s_output", zone->name);
 
 		break;
 
 	case FW3_TABLE_NAT:
-		if (zone->masq && handle->family == FW3_FAMILY_V4)
-		{
+		if (zone->masq && handle->family == FW3_FAMILY_V4) {
 			/* for any negated masq_src ip, emit -s addr -j RETURN rules */
 			for (msrc = NULL;
 			     (msrc = next_addr(msrc, &zone->masq_src,
-			                       handle->family, true)) != NULL; )
-			{
+					       handle->family, true)) !=
+			     NULL;) {
 				msrc->invert = false;
 				r = fw3_ipt_rule_new(handle);
 				fw3_ipt_rule_src_dest(r, msrc, NULL);
 				fw3_ipt_rule_target(r, "RETURN");
-				fw3_ipt_rule_append(r, "zone_%s_postrouting", zone->name);
+				fw3_ipt_rule_append(r, "zone_%s_postrouting",
+						    zone->name);
 				msrc->invert = true;
 			}
 
 			/* for any negated masq_dest ip, emit -d addr -j RETURN rules */
 			for (mdest = NULL;
 			     (mdest = next_addr(mdest, &zone->masq_dest,
-			                        handle->family, true)) != NULL; )
-			{
+						handle->family, true)) !=
+			     NULL;) {
 				mdest->invert = false;
 				r = fw3_ipt_rule_new(handle);
 				fw3_ipt_rule_src_dest(r, NULL, mdest);
 				fw3_ipt_rule_target(r, "RETURN");
-				fw3_ipt_rule_append(r, "zone_%s_postrouting", zone->name);
+				fw3_ipt_rule_append(r, "zone_%s_postrouting",
+						    zone->name);
 				mdest->invert = true;
 			}
 
@@ -702,18 +727,21 @@ print_zone_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 			   even if there are no relevant addresses */
 			for (first_src = true, msrc = NULL;
 			     (msrc = next_addr(msrc, &zone->masq_src,
-				                   handle->family, false)) || first_src;
-			     first_src = false)
-			{
+					       handle->family, false)) ||
+			     first_src;
+			     first_src = false) {
 				for (first_dest = true, mdest = NULL;
 				     (mdest = next_addr(mdest, &zone->masq_dest,
-					                    handle->family, false)) || first_dest;
-				     first_dest = false)
-				{
+							handle->family,
+							false)) ||
+				     first_dest;
+				     first_dest = false) {
 					r = fw3_ipt_rule_new(handle);
 					fw3_ipt_rule_src_dest(r, msrc, mdest);
 					fw3_ipt_rule_target(r, "MASQUERADE");
-					fw3_ipt_rule_append(r, "zone_%s_postrouting", zone->name);
+					fw3_ipt_rule_append(
+						r, "zone_%s_postrouting",
+						zone->name);
 				}
 			}
 		}
@@ -730,41 +758,36 @@ print_zone_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	print_interface_rules(handle, state, reload, zone);
 }
 
-void
-fw3_print_zone_chains(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                      bool reload)
+void fw3_print_zone_chains(struct fw3_ipt_handle *handle,
+			   struct fw3_state *state, bool reload)
 {
 	struct fw3_zone *zone;
 
-	list_for_each_entry(zone, &state->zones, list)
+	list_for_each_entry (zone, &state->zones, list)
 		print_zone_chain(handle, state, reload, zone);
 }
 
-void
-fw3_print_zone_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                     bool reload)
+void fw3_print_zone_rules(struct fw3_ipt_handle *handle,
+			  struct fw3_state *state, bool reload)
 {
 	struct fw3_zone *zone;
 
-	list_for_each_entry(zone, &state->zones, list)
+	list_for_each_entry (zone, &state->zones, list)
 		print_zone_rule(handle, state, reload, zone);
 }
 
-void
-fw3_flush_zones(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                bool reload)
+void fw3_flush_zones(struct fw3_ipt_handle *handle, struct fw3_state *state,
+		     bool reload)
 {
 	struct fw3_zone *z, *tmp;
 	const struct fw3_chain_spec *c;
 	char chain[32];
 
-	list_for_each_entry_safe(z, tmp, &state->zones, list)
-	{
+	list_for_each_entry_safe (z, tmp, &state->zones, list) {
 		if (!has(z->flags, handle->family, handle->table))
 			continue;
 
-		for (c = zone_chains; c->format; c++)
-		{
+		for (c = zone_chains; c->format; c++) {
 			/* don't touch user chains on selective stop */
 			if (reload && c->flag == FW3_FLAG_CUSTOM_CHAINS)
 				continue;
@@ -793,17 +816,14 @@ fw3_flush_zones(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	}
 }
 
-void
-fw3_hotplug_zones(struct fw3_state *state, bool add)
+void fw3_hotplug_zones(struct fw3_state *state, bool add)
 {
 	struct fw3_zone *z;
 	struct fw3_device *d;
 
-	list_for_each_entry(z, &state->zones, list)
-	{
-		if (add != fw3_hasbit(z->flags[0], FW3_FLAG_HOTPLUG))
-		{
-			list_for_each_entry(d, &z->devices, list)
+	list_for_each_entry (z, &state->zones, list) {
+		if (add != fw3_hasbit(z->flags[0], FW3_FLAG_HOTPLUG)) {
+			list_for_each_entry (d, &z->devices, list)
 				fw3_hotplug(add, z, d);
 
 			if (add)
@@ -814,16 +834,14 @@ fw3_hotplug_zones(struct fw3_state *state, bool add)
 	}
 }
 
-struct fw3_zone *
-fw3_lookup_zone(struct fw3_state *state, const char *name)
+struct fw3_zone *fw3_lookup_zone(struct fw3_state *state, const char *name)
 {
 	struct fw3_zone *z;
 
 	if (list_empty(&state->zones))
 		return NULL;
 
-	list_for_each_entry(z, &state->zones, list)
-	{
+	list_for_each_entry (z, &state->zones, list) {
 		if (strcmp(z->name, name))
 			continue;
 
@@ -833,8 +851,8 @@ fw3_lookup_zone(struct fw3_state *state, const char *name)
 	return NULL;
 }
 
-struct list_head *
-fw3_resolve_zone_addresses(struct fw3_zone *zone, struct fw3_address *addr)
+struct list_head *fw3_resolve_zone_addresses(struct fw3_zone *zone,
+					     struct fw3_address *addr)
 {
 	struct fw3_device *net;
 	struct fw3_address *cur, *tmp;
@@ -846,23 +864,18 @@ fw3_resolve_zone_addresses(struct fw3_zone *zone, struct fw3_address *addr)
 
 	INIT_LIST_HEAD(all);
 
-	if (addr && addr->set)
-	{
+	if (addr && addr->set) {
 		tmp = malloc(sizeof(*tmp));
 
-		if (tmp)
-		{
+		if (tmp) {
 			*tmp = *addr;
 			list_add_tail(&tmp->list, all);
 		}
-	}
-	else
-	{
-		list_for_each_entry(net, &zone->networks, list)
+	} else {
+		list_for_each_entry (net, &zone->networks, list)
 			fw3_ubus_address(all, net->name);
 
-		list_for_each_entry(cur, &zone->subnets, list)
-		{
+		list_for_each_entry (cur, &zone->subnets, list) {
 			tmp = malloc(sizeof(*tmp));
 
 			if (!tmp)
diff --git a/zones.h b/zones.h
index d786736..6ed39bc 100644
--- a/zones.h
+++ b/zones.h
@@ -27,30 +27,28 @@
 
 extern const struct fw3_option fw3_zone_opts[];
 
-struct fw3_zone * fw3_alloc_zone(void);
+struct fw3_zone *fw3_alloc_zone(void);
 
 void fw3_load_zones(struct fw3_state *state, struct uci_package *p);
 
 void fw3_print_zone_chains(struct fw3_ipt_handle *handle,
-                           struct fw3_state *state, bool reload);
+			   struct fw3_state *state, bool reload);
 
 void fw3_print_zone_rules(struct fw3_ipt_handle *handle,
-                          struct fw3_state *state, bool reload);
+			  struct fw3_state *state, bool reload);
 
 void fw3_flush_zones(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                     bool reload);
+		     bool reload);
 
 void fw3_hotplug_zones(struct fw3_state *state, bool add);
 
-struct fw3_zone * fw3_lookup_zone(struct fw3_state *state, const char *name);
+struct fw3_zone *fw3_lookup_zone(struct fw3_state *state, const char *name);
 
-struct list_head * fw3_resolve_zone_addresses(struct fw3_zone *zone,
-                                              struct fw3_address *addr);
+struct list_head *fw3_resolve_zone_addresses(struct fw3_zone *zone,
+					     struct fw3_address *addr);
 
-#define fw3_free_zone(zone) \
-	fw3_free_object(zone, fw3_zone_opts)
+#define fw3_free_zone(zone) fw3_free_object(zone, fw3_zone_opts)
 
-#define fw3_to_src_target(t) \
-	(FW3_FLAG_SRC_ACCEPT - FW3_FLAG_ACCEPT + t)
+#define fw3_to_src_target(t) (FW3_FLAG_SRC_ACCEPT - FW3_FLAG_ACCEPT + t)
 
 #endif
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
