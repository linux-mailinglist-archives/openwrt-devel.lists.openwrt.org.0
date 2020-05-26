Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17961D0627
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 06:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9OZMqT1ClYtn1rYhvI9wgaVwOIZrQyy+kD4b8clZWWQ=; b=L1DUGK+FxqfSdz
	XBnFf2Q+fTqZIHi0DpD8sGBv5Vy4pEbs5Qi3EtFb28FRZE8DLu+Koa2W4uKnZ+YERGADrp4cZHvDb
	RjH1UzWILSQjJYH8k/7Eilbt5HZnNRbV2qcZ8PBZcuhX3ZnVS+O2jVCFe++3ApXk61FEBz2EZZiRK
	DRXufZGtLNO8zMlTQvzDEG9zFe+ou3Kv5hHapIMGlWlNOdjlSxUQZhYo3Cqfp71hnaO6atJ1HehJJ
	Ze2vdG3k/r+6BTeQl8Gii+dv75zrfrCW63JPbFeGpTXbZtnBA/cbO4dDJlPBJiKWaotlyOKcYM6Gj
	UH1IL41xuTtpaIv159ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYjSu-0000Q1-Ik; Wed, 13 May 2020 04:57:56 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYjSo-0000PS-20
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 04:57:52 +0000
Received: from son-of-builder.redfish-solutions.com
 (son-of-builder.redfish-solutions.com [192.168.1.56])
 (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 04D4vjNO001317
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 12 May 2020 22:57:45 -0600
From: "Philip Prindeville" <philipp@redfish-solutions.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 12 May 2020 22:57:32 -0600
Message-Id: <20200513045732.5035-1-philipp@redfish-solutions.com>
X-Mailer: git-send-email 2.17.2
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_215750_283371_4B624EBE 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/1] firewall3: harden string functions that
 might overflow
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
Cc: Jan Engelhardt <jengelh@inai.de>,
 Philip Prindeville <philipp@redfish-solutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Philip Prindeville <philipp@redfish-solutions.com>

Make sure no buffer overruns present a vulnerability in the firewall.

Get rid of unsafe string functions: strcpy, strncpy, strcat, strncat,
sprintf, etc.  Doing pointer arithemetic with the return value of
sprintf() is inherently unsound.  Per the sprintf() man page:

    The functions snprintf() and vsnprintf() do not write  more  than  size
    bytes  (including the terminating null byte ('\0')).  If the output was
    truncated due to this limit, then the return value  is  the  number  of
    characters  (excluding the terminating null byte) which would have been
    written to the final string if enough space had been available.   Thus,
    a  return  value  of  size or more means that the output was truncated.

Thus the construct:

   p += sprintf(p, ...);

is unsafe as the return value could put you well beyond the end of
whatever buffer p points to.

Signed-off-by: Philip Prindeville <philipp@redfish-solutions.com>
---
 defaults.c   |  2 +-
 iptables.c   | 62 ++++++++++++++++++++++++++++++----------------------
 options.c    | 20 ++++++++++-------
 redirects.c  | 14 +++++++-----
 rules.c      |  4 ++--
 snats.c      | 16 +++++++++-----
 utils.c      | 15 ++++++-------
 xtables-10.h | 12 ++++++----
 xtables-5.h  |  8 +++++--
 9 files changed, 91 insertions(+), 62 deletions(-)

diff --git a/defaults.c b/defaults.c
index 60a4c81f773bf9527407ac61b0731e940f9c5463..7693c570ae3bcd85e925a150bb1dc1a75d0dd24f 100644
--- a/defaults.c
+++ b/defaults.c
@@ -236,7 +236,7 @@ fw3_print_default_head_rules(struct fw3_ipt_handle *handle,
 	{
 	case FW3_TABLE_FILTER:
 
-		sprintf(lodev.name, "lo");
+		snprintf(lodev.name, sizeof(lodev.name), "lo");
 
 		r = fw3_ipt_rule_create(handle, NULL, &lodev, NULL, NULL, NULL);
 		fw3_ipt_rule_target(r, "ACCEPT");
diff --git a/iptables.c b/iptables.c
index 559fe7defef3be85c4eb2934884caf549f932bc5..6c927de11761c8a357e37b42c95011631992bc01 100644
--- a/iptables.c
+++ b/iptables.c
@@ -144,7 +144,7 @@ get_kernel_version(void)
 	int x = 0, y = 0, z = 0;
 
 	if (uname(&uts) == -1)
-		sprintf(uts.release, "3.0.0");
+		snprintf(uts.release, sizeof(uts.release), "3.0.0");
 
 	sscanf(uts.release, "%d.%d.%d", &x, &y, &z);
 	kernel_version = 0x10000 * x + 0x100 * y + z;
@@ -906,7 +906,7 @@ fw3_ipt_rule_sport_dport(struct fw3_ipt_rule *r,
 	if (sp && sp->set)
 	{
 		if (sp->port_min == sp->port_max)
-			sprintf(buf, "%u", sp->port_min);
+			snprintf(buf, sizeof(buf), "%u", sp->port_min);
 		else
 			snprintf(buf, sizeof(buf), "%u:%u", sp->port_min, sp->port_max);
 
@@ -916,7 +916,7 @@ fw3_ipt_rule_sport_dport(struct fw3_ipt_rule *r,
 	if (dp && dp->set)
 	{
 		if (dp->port_min == dp->port_max)
-			sprintf(buf, "%u", dp->port_min);
+			snprintf(buf, sizeof(buf), "%u", dp->port_min);
 		else
 			snprintf(buf, sizeof(buf), "%u:%u", dp->port_min, dp->port_max);
 
@@ -943,7 +943,7 @@ fw3_ipt_rule_mac(struct fw3_ipt_rule *r, struct fw3_mac *mac)
 	if (!mac)
 		return;
 
-	sprintf(buf, "%02x:%02x:%02x:%02x:%02x:%02x",
+	snprintf(buf, sizeof(buf), "%02x:%02x:%02x:%02x:%02x:%02x",
 	        addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]);
 
 	fw3_ipt_rule_addarg(r, false, "-m", "mac");
@@ -962,7 +962,7 @@ fw3_ipt_rule_icmptype(struct fw3_ipt_rule *r, struct fw3_icmptype *icmp)
 	if (r->h->family == FW3_FAMILY_V6)
 	{
 		if (icmp->code6_min == 0 && icmp->code6_max == 0xFF)
-			sprintf(buf, "%u", icmp->type6);
+			snprintf(buf, sizeof(buf), "%u", icmp->type6);
 		else
 			snprintf(buf, sizeof(buf), "%u/%u", icmp->type6, icmp->code6_min);
 
@@ -972,7 +972,7 @@ fw3_ipt_rule_icmptype(struct fw3_ipt_rule *r, struct fw3_icmptype *icmp)
 #endif
 	{
 		if (icmp->code_min == 0 && icmp->code_max == 0xFF)
-			sprintf(buf, "%u", icmp->type);
+			snprintf(buf, sizeof(buf), "%u", icmp->type);
 		else
 			snprintf(buf, sizeof(buf), "%u/%u", icmp->type, icmp->code_min);
 
@@ -990,12 +990,12 @@ fw3_ipt_rule_limit(struct fw3_ipt_rule *r, struct fw3_limit *limit)
 
 	fw3_ipt_rule_addarg(r, false, "-m", "limit");
 
-	sprintf(buf, "%u/%s", limit->rate, fw3_limit_units[limit->unit]);
+	snprintf(buf, sizeof(buf), "%u/%s", limit->rate, fw3_limit_units[limit->unit]);
 	fw3_ipt_rule_addarg(r, limit->invert, "--limit", buf);
 
 	if (limit->burst > 0)
 	{
-		sprintf(buf, "%u", limit->burst);
+		snprintf(buf, sizeof(buf), "%u", limit->burst);
 		fw3_ipt_rule_addarg(r, limit->invert, "--limit-burst", buf);
 	}
 }
@@ -1004,8 +1004,8 @@ void
 fw3_ipt_rule_ipset(struct fw3_ipt_rule *r, struct fw3_setmatch *match)
 {
 	char buf[sizeof("dst,dst,dst\0")];
-	char *p = buf;
 	int i = 0;
+	FILE *fp = NULL;
 
 	struct fw3_ipset *set;
 	struct fw3_ipset_datatype *type;
@@ -1013,18 +1013,21 @@ fw3_ipt_rule_ipset(struct fw3_ipt_rule *r, struct fw3_setmatch *match)
 	if (!match || !match->set || !match->ptr)
 		return;
 
+	fp = fmemopen(buf, sizeof(buf), "w");
 	set = match->ptr;
 	list_for_each_entry(type, &set->datatypes, list)
 	{
 		if (i >= 3)
 			break;
 
-		if (p > buf)
-			*p++ = ',';
+		if (ftell(fp) != 0)
+			fputc(',', fp);
+
+		fputs(match->dir[i] ? match->dir[i] : type->dir, fp);
 
-		p += sprintf(p, "%s", match->dir[i] ? match->dir[i] : type->dir);
 		i++;
 	}
+	fclose(fp);
 
 	fw3_ipt_rule_addarg(r, false, "-m", "set");
 
@@ -1051,7 +1054,6 @@ fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
 	struct tm empty = { 0 };
 
 	char buf[84]; /* sizeof("1,2,3,...,30,31\0") */
-	char *p;
 
 	bool d1 = memcmp(&time->datestart, &empty, sizeof(empty));
 	bool d2 = memcmp(&time->datestop, &empty, sizeof(empty));
@@ -1081,7 +1083,7 @@ fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
 
 	if (time->timestart)
 	{
-		sprintf(buf, "%02d:%02d:%02d",
+		snprintf(buf, sizeof(buf), "%02d:%02d:%02d",
 		        time->timestart / 3600,
 		        time->timestart % 3600 / 60,
 		        time->timestart % 60);
@@ -1091,7 +1093,7 @@ fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
 
 	if (time->timestop)
 	{
-		sprintf(buf, "%02d:%02d:%02d",
+		snprintf(buf, sizeof(buf), "%02d:%02d:%02d",
 		        time->timestop / 3600,
 		        time->timestop % 3600 / 60,
 		        time->timestop % 60);
@@ -1101,33 +1103,41 @@ fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
 
 	if (time->monthdays & 0xFFFFFFFE)
 	{
-		for (i = 1, p = buf; i < 32; i++)
+		FILE *fp = fmemopen(buf, sizeof(buf), "w");
+
+		for (i = 1; i < 32; i++)
 		{
 			if (fw3_hasbit(time->monthdays, i))
 			{
-				if (p > buf)
-					*p++ = ',';
+				if (ftell(fp) != 0)
+					fputc(',', fp);
 
-				p += sprintf(p, "%u", i);
+				fprintf(fp, "%u", i);
 			}
 		}
 
+		fclose(fp);
+
 		fw3_ipt_rule_addarg(r, fw3_hasbit(time->monthdays, 0), "--monthdays", buf);
 	}
 
 	if (time->weekdays & 0xFE)
 	{
-		for (i = 1, p = buf; i < 8; i++)
+		FILE *fp = fmemopen(buf, sizeof(buf), "w");
+
+		for (i = 1; i < 8; i++)
 		{
 			if (fw3_hasbit(time->weekdays, i))
 			{
-				if (p > buf)
-					*p++ = ',';
+				if (ftell(fp) != 0)
+					fputc(',', fp);
 
-				p += sprintf(p, "%u", i);
+				fprintf(fp, "%u", i);
 			}
 		}
 
+		fclose(fp);
+
 		fw3_ipt_rule_addarg(r, fw3_hasbit(time->weekdays, 0), "--weekdays", buf);
 	}
 }
@@ -1141,9 +1151,9 @@ fw3_ipt_rule_mark(struct fw3_ipt_rule *r, struct fw3_mark *mark)
 		return;
 
 	if (mark->mask < 0xFFFFFFFF)
-		sprintf(buf, "0x%x/0x%x", mark->mark, mark->mask);
+		snprintf(buf, sizeof(buf), "0x%x/0x%x", mark->mark, mark->mask);
 	else
-		sprintf(buf, "0x%x", mark->mark);
+		snprintf(buf, sizeof(buf), "0x%x", mark->mark);
 
 	fw3_ipt_rule_addarg(r, false, "-m", "mark");
 	fw3_ipt_rule_addarg(r, mark->invert, "--mark", buf);
@@ -1157,7 +1167,7 @@ fw3_ipt_rule_dscp(struct fw3_ipt_rule *r, struct fw3_dscp *dscp)
 	if (!dscp || !dscp->set)
 		return;
 
-	sprintf(buf, "0x%x", dscp->dscp);
+	snprintf(buf, sizeof(buf), "0x%x", dscp->dscp);
 
 	fw3_ipt_rule_addarg(r, false, "-m", "dscp");
 	fw3_ipt_rule_addarg(r, dscp->invert, "--dscp", buf);
diff --git a/options.c b/options.c
index 7870143b03f55297466a6540efd3730d38773f49..131457342838a52bbad7c259bc36daea67fe01f5 100644
--- a/options.c
+++ b/options.c
@@ -1237,38 +1237,42 @@ fw3_parse_blob_options(void *s, const struct fw3_option *opts,
 const char *
 fw3_address_to_string(struct fw3_address *address, bool allow_invert, bool as_cidr)
 {
-	char *p, ip[INET6_ADDRSTRLEN];
+	char ip[INET6_ADDRSTRLEN];
 	static char buf[INET6_ADDRSTRLEN * 2 + 2];
 
-	p = buf;
+	FILE *fp = fmemopen(buf, sizeof(buf), "w");
 
 	if (address->invert && allow_invert)
-		p += sprintf(p, "!");
+		fputc('!', fp);
 
 	inet_ntop(address->family == FW3_FAMILY_V4 ? AF_INET : AF_INET6,
 	          &address->address.v4, ip, sizeof(ip));
 
-	p += sprintf(p, "%s", ip);
+	fputs(ip, fp);
 
 	if (address->range)
 	{
 		inet_ntop(address->family == FW3_FAMILY_V4 ? AF_INET : AF_INET6,
 		          &address->mask.v4, ip, sizeof(ip));
 
-		p += sprintf(p, "-%s", ip);
+		fputc('-', fp);
+		fputs(ip, fp);
 	}
 	else if (!as_cidr)
 	{
 		inet_ntop(address->family == FW3_FAMILY_V4 ? AF_INET : AF_INET6,
 		          &address->mask.v4, ip, sizeof(ip));
 
-		p += sprintf(p, "/%s", ip);
+		fputc('/', fp);
+		fputs(ip, fp);
 	}
 	else
 	{
-		p += sprintf(p, "/%u", fw3_netmask2bitlen(address->family,
-		                                          &address->mask.v6));
+		fprintf(fp, "/%u", fw3_netmask2bitlen(address->family,
+		                                      &address->mask.v6));
 	}
 
+	fclose(fp);
+
 	return buf;
 }
diff --git a/redirects.c b/redirects.c
index b928287deebb0f8407aa5ecbc4dab75bdda05c66..708e32a5e457110437b911ba7816a7e1897aa826 100644
--- a/redirects.c
+++ b/redirects.c
@@ -465,7 +465,7 @@ set_redirect(struct fw3_ipt_rule *r, struct fw3_port *port)
 	if (port && port->set)
 	{
 		if (port->port_min == port->port_max)
-			sprintf(buf, "%u", port->port_min);
+			snprintf(buf, sizeof(buf), "%u", port->port_min);
 		else
 			snprintf(buf, sizeof(buf), "%u-%u", port->port_min, port->port_max);
 
@@ -477,24 +477,28 @@ static void
 set_snat_dnat(struct fw3_ipt_rule *r, enum fw3_flag target,
               struct fw3_address *addr, struct fw3_port *port)
 {
+	char ip[INET_ADDRSTRLEN];
 	char buf[sizeof("255.255.255.255:65535-65535\0")];
 
-	buf[0] = '\0';
+	FILE *fp = fmemopen(buf, sizeof(buf), "w");
 
 	if (addr && addr->set)
 	{
-		inet_ntop(AF_INET, &addr->address.v4, buf, sizeof(buf));
+		inet_ntop(AF_INET, &addr->address.v4, ip, sizeof(ip));
+		fputs(ip, fp);
 	}
 
 	if (port && port->set)
 	{
 		if (port->port_min == port->port_max)
-			sprintf(buf + strlen(buf), ":%u", port->port_min);
+			fprintf(fp, ":%u", port->port_min);
 		else
-			sprintf(buf + strlen(buf), ":%u-%u",
+			fprintf(fp, ":%u-%u",
 			        port->port_min, port->port_max);
 	}
 
+	fclose(fp);
+
 	if (target == FW3_FLAG_DNAT)
 	{
 		fw3_ipt_rule_target(r, "DNAT");
diff --git a/rules.c b/rules.c
index 5230a8623fa897f1111cb7f7e7012f06c4acb503..ed2efadc2e9d6a15898fb6b222b96278f7c3be81 100644
--- a/rules.c
+++ b/rules.c
@@ -360,14 +360,14 @@ static void set_target(struct fw3_ipt_rule *r, struct fw3_rule *rule)
 	case FW3_FLAG_MARK:
 		name = rule->set_mark.set ? "--set-mark" : "--set-xmark";
 		mark = rule->set_mark.set ? &rule->set_mark : &rule->set_xmark;
-		sprintf(buf, "0x%x/0x%x", mark->mark, mark->mask);
+		snprintf(buf, sizeof(buf), "0x%x/0x%x", mark->mark, mark->mask);
 
 		fw3_ipt_rule_target(r, "MARK");
 		fw3_ipt_rule_addarg(r, false, name, buf);
 		return;
 
 	case FW3_FLAG_DSCP:
-		sprintf(buf, "0x%x", rule->set_dscp.dscp);
+		snprintf(buf, sizeof(buf), "0x%x", rule->set_dscp.dscp);
 
 		fw3_ipt_rule_target(r, "DSCP");
 		fw3_ipt_rule_addarg(r, false, "--set-dscp", buf);
diff --git a/snats.c b/snats.c
index 1d78f93f30662f475d24bd5817a03c1b106b02ec..6449ca877284b9092d84f773f10339bf96e77abb 100644
--- a/snats.c
+++ b/snats.c
@@ -265,24 +265,26 @@ static void
 set_target(struct fw3_ipt_rule *r, struct fw3_snat *snat,
            struct fw3_protocol *proto)
 {
-	char buf[sizeof("255.255.255.255:65535-65535\0")];
-
 	if (snat->target == FW3_FLAG_SNAT)
 	{
-		buf[0] = '\0';
+		char ip[INET_ADDRSTRLEN];
+		char buf[sizeof("255.255.255.255:65535-65535\0")];
+
+		FILE *fp = fmemopen(buf, sizeof(buf), "w");
 
 		if (snat->ip_snat.set)
 		{
-			inet_ntop(AF_INET, &snat->ip_snat.address.v4, buf, sizeof(buf));
+			inet_ntop(AF_INET, &snat->ip_snat.address.v4, ip, sizeof(ip));
+			fputs(ip, fp);
 		}
 
 		if (snat->port_snat.set && proto && !proto->any &&
 		    (proto->protocol == 6 || proto->protocol == 17 || proto->protocol == 1))
 		{
 			if (snat->port_snat.port_min == snat->port_snat.port_max)
-				sprintf(buf + strlen(buf), ":%u", snat->port_snat.port_min);
+				fprintf(fp, ":%u", snat->port_snat.port_min);
 			else
-				sprintf(buf + strlen(buf), ":%u-%u",
+				fprintf(fp, ":%u-%u",
 						snat->port_snat.port_min, snat->port_snat.port_max);
 
 			if (snat->connlimit_ports) {
@@ -296,6 +298,8 @@ set_target(struct fw3_ipt_rule *r, struct fw3_snat *snat,
 			}
 		}
 
+		fclose(fp);
+
 		fw3_ipt_rule_target(r, "SNAT");
 		fw3_ipt_rule_addarg(r, false, "--to-source", buf);
 	}
diff --git a/utils.c b/utils.c
index da6563243c0673f8393c16f65116aeb88ba0ea6c..6df43c16ba7fa91685faee6870f5fbcfdc1f5a4e 100644
--- a/utils.c
+++ b/utils.c
@@ -191,8 +191,7 @@ fw3_find_command(const char *cmd)
 		if ((plen + clen) >= sizeof(path))
 			continue;
 
-		strncpy(path, search, plen);
-		sprintf(path + plen, "/%s", cmd);
+		snprintf(path, sizeof(path), "%.*s/%s", plen, search, cmd);
 
 		if (!stat(path, &s) && S_ISREG(s.st_mode))
 			return path;
@@ -449,13 +448,13 @@ write_defaults_uci(struct uci_context *ctx, struct fw3_defaults *d,
 	ptr.value  = fw3_flag_names[d->policy_forward];
 	uci_set(ctx, &ptr);
 
-	sprintf(buf, "0x%x", d->flags[0]);
+	snprintf(buf, sizeof(buf), "0x%x", d->flags[0]);
 	ptr.o      = NULL;
 	ptr.option = "__flags_v4";
 	ptr.value  = buf;
 	uci_set(ctx, &ptr);
 
-	sprintf(buf, "0x%x", d->flags[1]);
+	snprintf(buf, sizeof(buf), "0x%x", d->flags[1]);
 	ptr.o      = NULL;
 	ptr.option = "__flags_v6";
 	ptr.value  = buf;
@@ -612,13 +611,13 @@ write_zone_uci(struct uci_context *ctx, struct fw3_zone *z,
 		uci_set(ctx, &ptr);
 	}
 
-	sprintf(buf, "0x%x", z->flags[0]);
+	snprintf(buf, sizeof(buf), "0x%x", z->flags[0]);
 	ptr.o      = NULL;
 	ptr.option = "__flags_v4";
 	ptr.value  = buf;
 	uci_set(ctx, &ptr);
 
-	sprintf(buf, "0x%x", z->flags[1]);
+	snprintf(buf, sizeof(buf), "0x%x", z->flags[1]);
 	ptr.o      = NULL;
 	ptr.option = "__flags_v6";
 	ptr.value  = buf;
@@ -660,7 +659,7 @@ write_ipset_uci(struct uci_context *ctx, struct fw3_ipset *s,
 
 	list_for_each_entry(type, &s->datatypes, list)
 	{
-		sprintf(buf, "%s_%s", type->dir, fw3_ipset_type_names[type->type]);
+		snprintf(buf, sizeof(buf), "%s_%s", type->dir, fw3_ipset_type_names[type->type]);
 		ptr.o      = NULL;
 		ptr.option = "match";
 		ptr.value  = buf;
@@ -677,7 +676,7 @@ write_ipset_uci(struct uci_context *ctx, struct fw3_ipset *s,
 
 	if (s->portrange.set)
 	{
-		sprintf(buf, "%u-%u", s->portrange.port_min, s->portrange.port_max);
+		snprintf(buf, sizeof(buf), "%u-%u", s->portrange.port_min, s->portrange.port_max);
 		ptr.o      = NULL;
 		ptr.option = "portrange";
 		ptr.value  = buf;
diff --git a/xtables-10.h b/xtables-10.h
index 7ea5315a45a5551f150e60d63e9bc6b92caf6830..6c4a39ef7253a9c2f7046bf7fed34687686da445 100644
--- a/xtables-10.h
+++ b/xtables-10.h
@@ -46,9 +46,11 @@ static inline void
 fw3_xt_set_match_name(struct xtables_match *m)
 {
     if (m->real_name)
-        strcpy(m->m->u.user.name, m->real_name);
+        strncpy(m->m->u.user.name, m->real_name, sizeof(m->m->u.user.name) - 1);
     else
-        strcpy(m->m->u.user.name, m->name);
+        strncpy(m->m->u.user.name, m->name, sizeof(m->m->u.user.name) - 1);
+
+    m->m->u.user.name[sizeof(m->m->u.user.name) - 1] = '\0';
 }
 
 static inline bool
@@ -93,9 +95,11 @@ static inline void
 fw3_xt_set_target_name(struct xtables_target *t, const char *name)
 {
     if (t->real_name)
-        strcpy(t->t->u.user.name, t->real_name);
+        strncpy(t->t->u.user.name, t->real_name, sizeof(t->t->u.user.name) - 1);
     else
-        strcpy(t->t->u.user.name, name);
+        strncpy(t->t->u.user.name, name, sizeof(t->t->u.user.name) - 1);
+
+    t->t->u.user.name[sizeof(t->t->u.user.name) - 1] = '\0';
 }
 
 static inline bool
diff --git a/xtables-5.h b/xtables-5.h
index 9d11caeccdf3a0fa808a8f8fb0bd31b3e9bfdc7c..bf5462b318d28e98cbbbff2d4dc631f50c11527d 100644
--- a/xtables-5.h
+++ b/xtables-5.h
@@ -36,7 +36,9 @@ fw3_xt_get_match_name(struct xtables_match *m)
 static inline void
 fw3_xt_set_match_name(struct xtables_match *m)
 {
-    strcpy(m->m->u.user.name, m->name);
+    strncpy(m->m->u.user.name, m->name, sizeof(m->m->u.user.name) - 1);
+
+    m->m->u.user.name[sizeof(m->m->u.user.name) - 1] = '\0';
 }
 
 static inline bool
@@ -67,7 +69,9 @@ fw3_xt_get_target_name(struct xtables_target *t)
 static inline void
 fw3_xt_set_target_name(struct xtables_target *t, const char *name)
 {
-    strcpy(t->t->u.user.name, name);
+    strncpy(t->t->u.user.name, name, sizeof(t->t->u.user.name) - 1);
+
+    t->t->u.user.name[sizeof(t->t->u.user.name) - 1] = '\0';
 }
 
 static inline bool
-- 
2.17.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
