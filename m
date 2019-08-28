Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7246A08C0
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 19:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GpauYVrkDRsw6FO7+ihJeSvLnoqD76VqUkV/QDxC5uw=; b=mG3dqfEGHwcei0
	U89E5jAJ7gBfzMdweqg5Rfj3Q0gzHho3GkqjmtzfH2+81zFT9pB69iKypGyIdv3C4gbQhBkll2p1L
	mEni2u8dzPYGudMVWuS2avyuZN5qyx/SQi7nWoXNo2XNinZmlSU+NNQPU8d50RThBTWWG9Z+4B+Lb
	mBfm9wT8W8lWn6W3N2qYE0ugYwPgP0S6p1WVWBNUA2VysMwfKIdRAHeaNVBQA8v8/JSnCErplbsBJ
	zNQHC+b7lLJ0fFzP4WZPIsojvYN6UJNERMPOWJnS27gPiPTYvxZKJnj+yXxZSSFkWgSOGNqAHmK82
	oMi9uKVn/baGWWj9D0aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31tZ-0001rC-MW; Wed, 28 Aug 2019 17:38:09 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i31tP-0001qp-59
 for openwrt-devel@lists.openwrt.org; Wed, 28 Aug 2019 17:38:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id l1so300312lji.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 28 Aug 2019 10:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NxlCkWZKlVHEQj+YhEX+LSeWnuy38oTv48TxLMvKjlg=;
 b=eOeV9D4mdPoDj+DBhq7i0PN80LTpW53Mu2qW7bzRQR2ZPLjrhlC2UApCFKVBbS8Noy
 7iVml/+dUERqHkmOKKNqzK8t5RxJqRT2oJmBSJ5KbdwTbSfT90UlFLD9BC3u4JpsOnZK
 zNldwPUZVNeohV5xc0vl/hMk83HHo2/9RisayWkz6HXCib2QUK1j/wdWh0KBNCr1Aduo
 VuRdeRZUJlfhC8ZuEWtcjyPtchN4eJKyxDjn7PhV+Aoy+lqF8CKtOeApCHSsDjGV5z2G
 k1QyvddZNyHdZ2mWHVg9G3Ot5FOn98X4w19bIJb0MSAieh2v0B10n4HnxSVDzpn+vc+H
 XF1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NxlCkWZKlVHEQj+YhEX+LSeWnuy38oTv48TxLMvKjlg=;
 b=W9oTMKDKEFydIRG8hQur8Zhmu9M3eSW+2J4OaDfXIaFM+JPlah0HJEtrHMC453pbZg
 hcrrufFk6RW1jwBb4LcITsLzTOV0jwynpAQ5bFXKlrTnQx2danIoIx4um+stKJbJ4rtt
 JJ8YMCB2xlAFSdYQ+hp0wtaOV4UpTxBINPwc3JJtleFPJekHE3WvQUhhp21CHA9gCU8N
 pqeda4mnQB340Hut3vX//RYE0SsUi/YouQcC1dgo22OrMj0m4pwLjeubJM14OMwgknY+
 qhu6Zue+U1AVZ4SjfQI6MJKpvn03HYZZTzEHs08pJxuOBlRnp1lLEXsmfRWpUnSUDHvw
 3nzA==
X-Gm-Message-State: APjAAAX8tgH0BlrwD5jqwkRaSEohothBgDApipMsT0Bdc8sZgAt5hMNh
 eCfwo5qez5CHufORsC0gH1V5I82R
X-Google-Smtp-Source: APXvYqxpAh4846obfyqAB39FidZKH12FzoTHPhU0lgMpLSeNTmYlghnpnm8qJW1HnuzsRuQAJ4yw6Q==
X-Received: by 2002:a2e:4216:: with SMTP id p22mr2705871lja.25.1567013876443; 
 Wed, 28 Aug 2019 10:37:56 -0700 (PDT)
Received: from localhost.localdomain ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id t3sm944151lfd.92.2019.08.28.10.37.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 10:37:55 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 28 Aug 2019 19:37:54 +0200
Message-Id: <20190828173754.31387-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_103759_227899_E424528A 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [RFC] firewall3: zones: Use ipsets instead of
 interfaces in zone rules
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
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

firewall3 currently creates one rule for each interface that is a member of a
zone. On for example devices with multiple interfaces, the current firewall3
behavior quickly leads to a lot of rules. In order to reduce the number of
rules, this patch replaces the per-interface rules with ipset matches (if ipset
is available). Since 2011, ipset has supported the set type "hash:net,iface".
By adding (and matching on) on pairs consiting of the v4/v6 any-address and an
interface name, we get the same behavior as the current interface-rules.

After applying this patch (and assuming ipset is available), the following
actions are performed when a zone is created:

* We creates (allocate) an ipset of type "hash:net,iface" for each zone. The
name follows the following format: zone_<zone name>_<4/6>_set.
* If creating a set fails, then we ignore the zone. This is something we can
change, but my reason for this behavior is to have consistent firewall rules.
I.e., zone-rules either match on ipset or interface names, and not a mix.
* Each set is populated with pairs consisting of the IPv4/IPv6 any-address and
an interface name, for example "0.0.0.0/0, eth0.2".
* Instead of one rule per device, a single rule is created matching on the
ipset.
* The check used to select the OUTPUT/PREROUTING-chain when adding rules to the
raw-table has been moved to print_interface_rules_{default,set}. The motivation
behind this move was to avoid changing print_interface_rule() too much. As far
as I can see (and have tested), the logic for selecting chain/creating the
rules is the same as before.

Because the change introduced by this patch is quite intrusive and I am sure
there will be comments/disagreements/suggestions, I have sent this patch as an
RFC. One thing that I am aware of and will fix before the final submission, is
to add support for printing ipsets. Right now "fw3 print" prints per-interface
rules.

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
---
 ipsets.c  |  38 ++++++-
 ipsets.h  |   7 ++
 main.c    |   8 +-
 options.c |   3 +-
 options.h |   4 +
 zones.c   | 291 +++++++++++++++++++++++++++++++++++++++++++++++++++---
 zones.h   |  15 ++-
 7 files changed, 347 insertions(+), 19 deletions(-)

diff --git a/ipsets.c b/ipsets.c
index 280845b..e052278 100644
--- a/ipsets.c
+++ b/ipsets.c
@@ -81,6 +81,8 @@ static struct ipset_type ipset_types[] = {
 	  OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
 	T(HASH,   NET,  PORT,   UNSPEC, 0,
 	  OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
+	T(HASH,   NET,  IFACE,   UNSPEC, 0,
+	  OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
 	T(HASH,   IP,   PORT,   IP,     0,
 	  OPT_FAMILY | OPT_HASHSIZE | OPT_MAXELEM),
 	T(HASH,   IP,   PORT,   NET,    0,
@@ -247,7 +249,7 @@ check_ipset(struct fw3_state *state, struct fw3_ipset *ipset, struct uci_element
 	return false;
 }
 
-static struct fw3_ipset *
+struct fw3_ipset *
 fw3_alloc_ipset(struct fw3_state *state)
 {
 	struct fw3_ipset *ipset;
@@ -611,3 +613,37 @@ fw3_ipsets_update_run_state(enum fw3_family family, struct fw3_state *run_state,
 			ipset_run->reload_set = ipset_cfg->reload_set;
 	}
 }
+
+void
+fw3_ipset_add_devices(struct list_head *devices, enum fw3_family family,
+		      const char *set_name)
+{
+	struct fw3_device *dev;
+	bool exec = false;
+	const char *addr;
+
+	fw3_foreach(dev, devices) {
+		if (!dev)
+			continue;
+
+		if (!exec) {
+			exec = fw3_command_pipe(false, "ipset", "-exist", "-");
+
+			if (!exec)
+				return;
+		}
+
+		if (family == FW3_FAMILY_V4) {
+			addr = "0.0.0.0/0";
+		} else {
+			addr = "::/0";
+		}
+
+		fw3_pr("add %s %s,%s\n", set_name, addr, dev->name);
+	}
+
+	if (exec) {
+		fw3_pr("quit\n");
+		fw3_command_close();
+	}
+}
diff --git a/ipsets.h b/ipsets.h
index 76078d4..19528e9 100644
--- a/ipsets.h
+++ b/ipsets.h
@@ -41,6 +41,13 @@ void
 fw3_ipsets_update_run_state(enum fw3_family family, struct fw3_state *run_state,
 			    struct fw3_state *cfg_state);
 
+struct fw3_ipset *
+fw3_alloc_ipset(struct fw3_state *state);
+
+void
+fw3_ipset_add_devices(struct list_head *devices, enum fw3_family family,
+		      const char *set_name);
+
 static inline void fw3_free_ipset(struct fw3_ipset *ipset)
 {
 	list_del(&ipset->list);
diff --git a/main.c b/main.c
index 7ad00b4..7b9c9e3 100644
--- a/main.c
+++ b/main.c
@@ -266,6 +266,9 @@ start(void)
 			continue;
 		}
 
+		if (!print_family)
+			fw3_fill_zone_ipsets(family, cfg_state);
+
 		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW; table++)
 		{
 			if (!fw3_has_table(family == FW3_FAMILY_V6, fw3_flag_names[table]))
@@ -364,7 +367,10 @@ start:
 		if (family == FW3_FAMILY_V6 && cfg_state->defaults.disable_ipv6)
 			continue;
 
-		fw3_create_ipsets(cfg_state, family, true);
+		if (!print_family) {
+			fw3_create_ipsets(cfg_state, family, true);
+			fw3_fill_zone_ipsets(family, cfg_state);
+		}
 
 		for (table = FW3_TABLE_FILTER; table <= FW3_TABLE_RAW; table++)
 		{
diff --git a/options.c b/options.c
index c763d9e..c95428b 100644
--- a/options.c
+++ b/options.c
@@ -114,6 +114,7 @@ const char *fw3_ipset_type_names[__FW3_IPSET_TYPE_MAX] = {
 	"mac",
 	"net",
 	"set",
+	"iface",
 };
 
 static const char *weekdays[] = {
@@ -666,7 +667,7 @@ fw3_parse_ipset_datatype(void *ptr, const char *val, bool is_list)
 	}
 
 	if (parse_enum(&type.type, val, &fw3_ipset_type_names[FW3_IPSET_TYPE_IP],
-	               FW3_IPSET_TYPE_IP, FW3_IPSET_TYPE_SET))
+	               FW3_IPSET_TYPE_IP, FW3_IPSET_TYPE_IFACE))
 	{
 		put_value(ptr, &type, sizeof(type), is_list);
 		return true;
diff --git a/options.h b/options.h
index cffc01c..e340a4e 100644
--- a/options.h
+++ b/options.h
@@ -132,6 +132,7 @@ enum fw3_ipset_type
 	FW3_IPSET_TYPE_MAC    = 3,
 	FW3_IPSET_TYPE_NET    = 4,
 	FW3_IPSET_TYPE_SET    = 5,
+	FW3_IPSET_TYPE_IFACE  = 6,
 
 	__FW3_IPSET_TYPE_MAX
 };
@@ -336,6 +337,9 @@ struct fw3_zone
 	const char *extra_src;
 	const char *extra_dest;
 
+	char *set_name_4;
+	char *set_name_6;
+
 	bool masq;
 	bool masq_allow_invalid;
 	struct list_head masq_src;
diff --git a/zones.c b/zones.c
index 4f2b1e4..e51ac0c 100644
--- a/zones.c
+++ b/zones.c
@@ -19,6 +19,7 @@
 #include "zones.h"
 #include "ubus.h"
 #include "helpers.h"
+#include "ipsets.h"
 
 
 #define C(f, tbl, tgt, fmt) \
@@ -220,6 +221,67 @@ fw3_alloc_zone(void)
 	return zone;
 }
 
+static struct fw3_ipset*
+add_zone_ipset(struct fw3_state *state, struct fw3_zone *zone,
+	       enum fw3_family family)
+{
+	struct fw3_ipset *ipset_opt;
+	char *set_name;
+
+	if (!(set_name = calloc(1, 32)))
+		return NULL;
+
+	if (family == FW3_FAMILY_V4) {
+		snprintf(set_name, 32, "zone_%s_4_set", zone->name);
+	} else {
+		snprintf(set_name, 32, "zone_%s_6_set", zone->name);
+	}
+
+	if (!(ipset_opt = fw3_alloc_ipset(state)))
+		return NULL;
+
+	ipset_opt->name = set_name;
+	ipset_opt->reload_set = true;
+
+	if (family == FW3_FAMILY_V6) {
+		ipset_opt->family  = FW3_FAMILY_V6;
+		zone->set_name_6 = set_name;
+	} else {
+		zone->set_name_4 = set_name;
+	}
+
+	fw3_parse_ipset_method(&(ipset_opt->method), "hash", false);
+	fw3_parse_ipset_datatype(&(ipset_opt->datatypes), "net", true);
+	fw3_parse_ipset_datatype(&(ipset_opt->datatypes), "iface", true);
+
+	return ipset_opt;
+}
+
+static struct fw3_ipset*
+add_zone_ipsets(struct fw3_state *state, struct fw3_zone *zone)
+{
+	struct fw3_ipset *ipset_v4 = NULL, *ipset_v6 = NULL;
+
+	if (zone->family == FW3_FAMILY_ANY || zone->family == FW3_FAMILY_V4) {
+		ipset_v4 = add_zone_ipset(state, zone, FW3_FAMILY_V4);
+
+		if (!ipset_v4)
+			return NULL;
+	}
+
+	if (zone->family == FW3_FAMILY_ANY || zone->family == FW3_FAMILY_V6) {
+		ipset_v6 = add_zone_ipset(state, zone, FW3_FAMILY_V6);
+
+		if (!ipset_v6) {
+			if (ipset_v4)
+				fw3_free_ipset(ipset_v4);
+			return NULL;
+		}
+	}
+
+	return ipset_v4 ? ipset_v4 : ipset_v6;
+}
+
 void
 fw3_load_zones(struct fw3_state *state, struct uci_package *p)
 {
@@ -322,6 +384,14 @@ fw3_load_zones(struct fw3_state *state, struct uci_package *p)
 		fw3_setbit(zone->flags[1], zone->policy_forward);
 		fw3_setbit(zone->flags[1], zone->policy_output);
 
+		if (!state->statefile && !state->disable_ipsets) {
+			if (!add_zone_ipsets(state, zone)) {
+				warn_elem(e, "creating zone ipsets failed");
+				fw3_free_zone(zone);
+				continue;
+			}
+		}
+
 		list_add_tail(&zone->list, &state->zones);
 	}
 }
@@ -400,16 +470,31 @@ print_zone_chain(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	set(zone->flags, handle->family, handle->table);
 }
 
+static void
+interface_rule_add_set_match(struct fw3_ipt_rule *r, const char *ipset_name,
+			     bool match_src)
+{
+	fw3_ipt_rule_addarg(r, false, "-m", "set");
+	fw3_ipt_rule_addarg(r, false, "--match-set", ipset_name);
+
+	if (match_src)
+		fw3_ipt_rule_addarg(r, false, "src,src", NULL);
+	else
+		fw3_ipt_rule_addarg(r, false, "dst,dst", NULL);
+}
+
 static void
 print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
-					 bool reload, struct fw3_zone *zone,
-                     struct fw3_device *dev, struct fw3_address *sub)
+		     bool reload, struct fw3_zone *zone, struct fw3_device *dev,
+		     struct fw3_address *sub, bool loopback_dev,
+		     const char *raw_chain)
 {
 	struct fw3_protocol tcp = { .protocol = 6 };
 	struct fw3_ipt_rule *r;
 	enum fw3_flag t;
 
 	char buf[32];
+	char ipset_name[32];
 
 	int i;
 
@@ -419,6 +504,16 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		"forward", "FORWARD",
 	};
 
+	if (!state->disable_ipsets)
+	{
+		if (handle->family == FW3_FAMILY_V4)
+			snprintf(ipset_name, sizeof(ipset_name),
+				 "zone_%s_4_set", zone->name);
+		else
+			snprintf(ipset_name, sizeof(ipset_name),
+				 "zone_%s_6_set", zone->name);
+	}
+
 #define jump_target(t) \
 	((t == FW3_FLAG_REJECT) ? "reject" : fw3_flag_names[t])
 
@@ -432,6 +527,11 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 				{
 					r = fw3_ipt_rule_create(handle, NULL, dev, NULL, sub, NULL);
 
+					if (!state->disable_ipsets)
+						interface_rule_add_set_match(r,
+									     ipset_name,
+									     true);
+
 					snprintf(buf, sizeof(buf) - 1, "%s %s in: ",
 					         fw3_flag_names[t], zone->name);
 
@@ -446,6 +546,11 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 				{
 					r = fw3_ipt_rule_create(handle, NULL, NULL, dev, NULL, sub);
 
+					if (!state->disable_ipsets)
+						interface_rule_add_set_match(r,
+									     ipset_name,
+									     false);
+
 					snprintf(buf, sizeof(buf) - 1, "%s %s out: ",
 					         fw3_flag_names[t], zone->name);
 
@@ -460,6 +565,12 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 			if (has(zone->flags, handle->family, fw3_to_src_target(t)))
 			{
 				r = fw3_ipt_rule_create(handle, NULL, dev, NULL, sub, NULL);
+
+				if (!state->disable_ipsets)
+					interface_rule_add_set_match(r,
+								     ipset_name,
+								     true);
+
 				fw3_ipt_rule_target(r, jump_target(t));
 				fw3_ipt_rule_extra(r, zone->extra_src);
 
@@ -477,6 +588,12 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 				    zone->masq && !zone->masq_allow_invalid)
 				{
 					r = fw3_ipt_rule_create(handle, NULL, NULL, dev, NULL, sub);
+
+					if (!state->disable_ipsets)
+						interface_rule_add_set_match(r,
+									     ipset_name,
+									     false);
+
 					fw3_ipt_rule_extra(r, "-m conntrack --ctstate INVALID");
 					fw3_ipt_rule_comment(r, "Prevent NAT leakage");
 					fw3_ipt_rule_target(r, fw3_flag_names[FW3_FLAG_DROP]);
@@ -485,6 +602,12 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 				}
 
 				r = fw3_ipt_rule_create(handle, NULL, NULL, dev, NULL, sub);
+
+				if (!state->disable_ipsets)
+					interface_rule_add_set_match(r,
+								     ipset_name,
+								     false);
+
 				fw3_ipt_rule_target(r, jump_target(t));
 				fw3_ipt_rule_extra(r, zone->extra_dest);
 				fw3_ipt_rule_replace(r, "zone_%s_dest_%s", zone->name,
@@ -494,11 +617,22 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 
 		for (i = 0; i < sizeof(chains)/sizeof(chains[0]); i += 2)
 		{
-			if (*chains[i] == 'o')
+			if (*chains[i] == 'o') {
 				r = fw3_ipt_rule_create(handle, NULL, NULL, dev, NULL, sub);
-			else
+
+				if (!state->disable_ipsets)
+					interface_rule_add_set_match(r,
+								     ipset_name,
+								     false);
+			} else {
 				r = fw3_ipt_rule_create(handle, NULL, dev, NULL, sub, NULL);
 
+				if (!state->disable_ipsets)
+					interface_rule_add_set_match(r,
+								     ipset_name,
+								     true);
+			}
+
 			fw3_ipt_rule_target(r, "zone_%s_%s", zone->name, chains[i]);
 
 			if (*chains[i] == 'o')
@@ -514,6 +648,11 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		if (has(zone->flags, handle->family, FW3_FLAG_DNAT))
 		{
 			r = fw3_ipt_rule_create(handle, NULL, dev, NULL, sub, NULL);
+
+			if (!state->disable_ipsets)
+				interface_rule_add_set_match(r, ipset_name,
+							     true);
+
 			fw3_ipt_rule_target(r, "zone_%s_prerouting", zone->name);
 			fw3_ipt_rule_extra(r, zone->extra_src);
 			fw3_ipt_rule_replace(r, "PREROUTING");
@@ -522,6 +661,11 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		if (has(zone->flags, handle->family, FW3_FLAG_SNAT))
 		{
 			r = fw3_ipt_rule_create(handle, NULL, NULL, dev, NULL, sub);
+
+			if (!state->disable_ipsets)
+				interface_rule_add_set_match(r, ipset_name,
+							     false);
+
 			fw3_ipt_rule_target(r, "zone_%s_postrouting", zone->name);
 			fw3_ipt_rule_extra(r, zone->extra_dest);
 			fw3_ipt_rule_replace(r, "POSTROUTING");
@@ -536,6 +680,12 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 				snprintf(buf, sizeof(buf) - 1, "MSSFIX %s out: ", zone->name);
 
 				r = fw3_ipt_rule_create(handle, &tcp, NULL, dev, NULL, sub);
+
+				if (!state->disable_ipsets)
+					interface_rule_add_set_match(r,
+								     ipset_name,
+								     true);
+
 				fw3_ipt_rule_addarg(r, false, "--tcp-flags", "SYN,RST");
 				fw3_ipt_rule_addarg(r, false, "SYN", NULL);
 				fw3_ipt_rule_limit(r, &zone->log_limit);
@@ -546,6 +696,11 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 			}
 
 			r = fw3_ipt_rule_create(handle, &tcp, NULL, dev, NULL, sub);
+
+			if (!state->disable_ipsets)
+				interface_rule_add_set_match(r, ipset_name,
+							     true);
+
 			fw3_ipt_rule_addarg(r, false, "--tcp-flags", "SYN,RST");
 			fw3_ipt_rule_addarg(r, false, "SYN", NULL);
 			fw3_ipt_rule_comment(r, "Zone %s MTU fixing", zone->name);
@@ -556,37 +711,45 @@ print_interface_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 	}
 	else if (handle->table == FW3_TABLE_RAW)
 	{
-		bool loopback_dev = (dev != NULL && !dev->any &&
-				     !dev->invert && fw3_check_loopback_dev(dev->name));
-		char *chain = loopback_dev || (sub != NULL && !sub->invert && fw3_check_loopback_addr(sub)) ?
-			      "OUTPUT" : "PREROUTING";
-
 		if (has(zone->flags, handle->family, FW3_FLAG_HELPER))
 		{
 			r = fw3_ipt_rule_create(handle, NULL, loopback_dev ? NULL : dev, NULL, sub, NULL);
+
+			if (!state->disable_ipsets)
+				interface_rule_add_set_match(r, ipset_name,
+							     true);
+
 			fw3_ipt_rule_comment(r, "%s CT helper assignment", zone->name);
 			fw3_ipt_rule_target(r, "zone_%s_helper", zone->name);
 			fw3_ipt_rule_extra(r, zone->extra_src);
-			fw3_ipt_rule_replace(r, chain);
+			fw3_ipt_rule_replace(r, raw_chain);
 		}
 
 		if (has(zone->flags, handle->family, FW3_FLAG_NOTRACK))
 		{
 			r = fw3_ipt_rule_create(handle, NULL, loopback_dev ? NULL : dev, NULL, sub, NULL);
+
+			if (!state->disable_ipsets)
+				interface_rule_add_set_match(r, ipset_name,
+							     true);
+
 			fw3_ipt_rule_comment(r, "%s CT bypass", zone->name);
 			fw3_ipt_rule_target(r, "zone_%s_notrack", zone->name);
 			fw3_ipt_rule_extra(r, zone->extra_src);
-			fw3_ipt_rule_replace(r, chain);
+			fw3_ipt_rule_replace(r, raw_chain);
 		}
 	}
 }
 
 static void
-print_interface_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
-                      bool reload, struct fw3_zone *zone)
+print_interface_rules_default(struct fw3_ipt_handle *handle,
+			      struct fw3_state *state, bool reload,
+			      struct fw3_zone *zone)
 {
 	struct fw3_device *dev;
 	struct fw3_address *sub;
+	bool loopback_dev = false;
+	char *raw_chain_name;
 
 	fw3_foreach(dev, &zone->devices)
 	fw3_foreach(sub, &zone->subnets)
@@ -597,8 +760,89 @@ print_interface_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		if (!dev && !sub)
 			continue;
 
-		print_interface_rule(handle, state, reload, zone, dev, sub);
+		if (handle->table == FW3_TABLE_RAW)
+		{
+			loopback_dev = (dev != NULL && !dev->any &&
+					!dev->invert &&
+					fw3_check_loopback_dev(dev->name));
+			raw_chain_name = loopback_dev || (sub != NULL &&
+							  !sub->invert &&
+							  fw3_check_loopback_addr(sub)) ?
+				 "OUTPUT" : "PREROUTING";
+		}
+
+		print_interface_rule(handle, state, reload, zone, dev, sub,
+				     loopback_dev, raw_chain_name);
+        }
+}
+
+static void
+print_interface_rules_set(struct fw3_ipt_handle *handle,
+			  struct fw3_state *state, bool reload,
+			  struct fw3_zone *zone)
+{
+	struct fw3_device *dev;
+	struct fw3_address *sub;
+	bool loopback_dev = false, other_dev = false,
+	     loopback_addr_seen = false;
+
+	if (handle->table == FW3_TABLE_RAW)
+	{
+		fw3_foreach(dev, &zone->devices)
+		{
+			if (!dev)
+				continue;
+
+			if (!dev->any && !dev->invert &&
+			    fw3_check_loopback_dev(dev->name))
+				loopback_dev = true;
+			else
+				other_dev = true;
+		}
+	}
+
+	fw3_foreach(sub, &zone->subnets)
+	{
+		if (!fw3_is_family(sub, handle->family))
+			continue;
+
+		if (handle->table == FW3_TABLE_RAW)
+		{
+			if (sub && !sub->invert && fw3_check_loopback_addr(sub))
+			{
+				print_interface_rule(handle, state, reload,
+						    zone, NULL, sub, false,
+						    "OUTPUT");
+				loopback_addr_seen = true;
+			}
+
+			if (other_dev)
+			{
+				print_interface_rule(handle, state, reload,
+						     zone, NULL, sub, false,
+						     "PREROUTING");
+			}
+		}
+		else
+		{
+			print_interface_rule(handle, state, reload, zone, NULL,
+					     sub, false, NULL);
+		}
 	}
+
+	if (loopback_dev && !loopback_addr_seen)
+		print_interface_rule(handle, state, reload, zone, NULL, NULL,
+				     false, "OUTPUT");
+}
+
+static void
+print_interface_rules(struct fw3_ipt_handle *handle, struct fw3_state *state,
+                      bool reload, struct fw3_zone *zone)
+{
+	if (state->disable_ipsets)
+		print_interface_rules_default(handle, state, reload, zone);
+	else
+		print_interface_rules_set(handle, state, reload, zone);
 }
 
 static struct fw3_address *
@@ -875,3 +1119,22 @@ fw3_resolve_zone_addresses(struct fw3_zone *zone, struct fw3_address *addr)
 
 	return all;
 }
+
+void
+fw3_fill_zone_ipsets(enum fw3_family family, struct fw3_state *state)
+{
+	struct fw3_zone *zone;
+	const char *set_name;
+
+	if (state->disable_ipsets)
+		return;
+
+	list_for_each_entry(zone, &state->zones, list) {
+		if (family == FW3_FAMILY_V4)
+			set_name = zone->set_name_4;
+		else
+			set_name = zone->set_name_6;
+
+		fw3_ipset_add_devices(&zone->devices, family, set_name);
+	}
+}
diff --git a/zones.h b/zones.h
index d786736..cb37aeb 100644
--- a/zones.h
+++ b/zones.h
@@ -47,8 +47,19 @@ struct fw3_zone * fw3_lookup_zone(struct fw3_state *state, const char *name);
 struct list_head * fw3_resolve_zone_addresses(struct fw3_zone *zone,
                                               struct fw3_address *addr);
 
-#define fw3_free_zone(zone) \
-	fw3_free_object(zone, fw3_zone_opts)
+void
+fw3_fill_zone_ipsets(enum fw3_family family, struct fw3_state *state);
+
+static inline void fw3_free_zone(struct fw3_zone *zone)
+{
+	if (zone->set_name_4)
+		free(zone->set_name_4);
+
+	if (zone->set_name_6)
+		free(zone->set_name_6);
+
+	fw3_free_object(zone, fw3_zone_opts);
+}
 
 #define fw3_to_src_target(t) \
 	(FW3_FLAG_SRC_ACCEPT - FW3_FLAG_ACCEPT + t)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
