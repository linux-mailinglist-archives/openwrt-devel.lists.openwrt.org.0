Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F0E923BE
	for <lists+openwrt-devel@lfdr.de>; Mon, 19 Aug 2019 14:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=34PTcnUKRQ+KMWWbbLxOBkZOnqYLFiZqrMetdzzHnmc=; b=jjya+gy91zleDF
	714rdsr0Dvj0cZcQgQtUarGEe+hezfOelBbaO3lEJYbyp8hXV8B+hi1iPYRAJhDNiUZm2IG/OEz7W
	qGqbIuYDvIeMIdntTuFuIYlNeDA6nA+0NKgrAeBIq/1pbdFwhPXRV+qZjwuI3ILQfKCTqvqvsbhxJ
	9XSQtppqq6rqX97DdKB2GofsaaTT9pVlhu/ed1ADqKZnRnH+w+Pnt464Nlk1VfERKu+EKxKQitRUk
	+yfzYSd4V+FIDj3dRm8ZHhcYCEQYJgbg93T5GM1S457pihMxjYEvENaGA1yt2WiuTuehlFuce5xHH
	fsouNUOayPGOfeqvXIGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzh3A-000221-CE; Mon, 19 Aug 2019 12:46:16 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzh33-00021L-6o
 for openwrt-devel@lists.openwrt.org; Mon, 19 Aug 2019 12:46:10 +0000
Received: by mail-lf1-x144.google.com with SMTP id x3so1297101lfn.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 19 Aug 2019 05:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8pyQCJ8onnOlrpogJZA0EO1ndnCs0VEln95UiTOKhmo=;
 b=eKz4Wf+8e04LRUOcUA6EJ5mgNi2P9g3ENMwavJzgQOIo8tVDPM4Cqsq+djMWbI0EWF
 0qutIiVjX1Gr9xtH1FEQpf+EdXI0LJeFxjXeSqT3wC4vlQlXWSNK+DZ6ytqgWuVLHgpA
 ZO39LPCydrNgSeK/LDxlAVV1KY6G85uIVYC6pE0ICYDBSAWiT2lCPcntFWJmpy04P1hc
 5fxXUZqkdoYNw5AXVaRL04hoBr78GRHDmdYdGadZit99xg7YdFH15LOJP7Ir9baYMb1P
 75yrII2sAnIsB5AECt3xemEkTyjOQeFCdXs6br5uUKVvtnUN4Fcy76WQXfzoBaxCFq9B
 rIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8pyQCJ8onnOlrpogJZA0EO1ndnCs0VEln95UiTOKhmo=;
 b=WLyfq2t22yyfjCSSt5wyqLc64kVanBCc6fRwsSu2T72S4W0Ukhw1/D8K3ADd8uU3fE
 V4XY8ygBXe/MYwbnWegbz5cA+mZ9pCD55WkYnwVvHBc6ajsp/yDiQNAQPaihFZWq584z
 bqS8aEZbx4E4pAl0sGAHDs+dI54eVGcKbq++2tFC1Mt8tvfeEvvk/P3/R54PH9+ILO82
 dYGhNObYT6G3gpzeZcf7CoB+DpFR0U2P5IcdrwwMPFTOrpduS3eX7MuS8b7wyk8T8S1k
 UgF4an78j+8LUrgGBreO/Fn+pHP6GJwEHbcv3x/z+YDZHccrgRlmMXrGB2nWxlkrKXUf
 CrYw==
X-Gm-Message-State: APjAAAU4CQlgHBOeP93Hb2TFH9lfQrZhDTkOw+ObgxWyfXCzukeziYrl
 pDeimFI4IrjSDvOw/a/BbGsmKWIFQQU=
X-Google-Smtp-Source: APXvYqz+Rp6u0C8FekYDW/28j3y1Q5EA0E7pdY7F8AP5f4AtsfhThXDF7kjz9N9GiYKh7eckg/W+eQ==
X-Received: by 2002:ac2:55a9:: with SMTP id y9mr12654277lfg.28.1566218766451; 
 Mon, 19 Aug 2019 05:46:06 -0700 (PDT)
Received: from kristrev-XPS-15-9570.home (178-37-95-46.adsl.inetia.pl.
 [178.37.95.46])
 by smtp.gmail.com with ESMTPSA id e23sm2303428lfn.43.2019.08.19.05.46.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 05:46:05 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org,
	ldir@darbyshire-bryant.me.uk
Date: Mon, 19 Aug 2019 14:45:57 +0200
Message-Id: <20190819124557.17329-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_054609_278219_9835D38A 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] firewall3: ipset: Handle reload_set properly
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

The reload_set option was added in commit 509e673dab01 ("firewall3:
Improve ipset support"), and the purpose of the option is to control if
a set should be flushed or not on a firewall reload.

In some cases, the option unfortunately does not work properly. I had
fixed the errors locally, but failed to submit a v2 of "Improve ipset
support". This patch contains my local fixes, and after the following
changes are applied then the option (as well as ipset support) works as
at least I expect.

The following errors have been fixed:

* "family" was not written to the state file, causing all sets read from
this file was considered as ipv4. Save family to ensure that sets are
handled correctly on firewall reload.

* The default value of "reload_set" is false, meaning that the
reload-check in "fw3_create_ipsets()" is always true (on reload). A
consequence of this is that new sets are never created on firewall
reload. In order to ensure that new sets are created, only consider
"reload_set" if the set exists. If a set (from configuration) does not
exist, we always want to create it.

* On reload and before "fw3_destroy_ipsets()" are called, we need to
update run_state to ensure that sets are updated correctly. We need to
check if the sets in run_state is found in cfg_state, if not the set
should be destroyed (done by forcing reload_set to true). If the set is
found, then we copy the value of reload_set to the set in run_state so
that the elements are updated as the user expects.

Since we now always copy the value of reload_set from cfg_state, there
is no need to write reload_set to run_state.

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
---
 ipsets.c | 47 +++++++++++++++++++++++++++++++++++++++++++++--
 ipsets.h |  4 ++++
 main.c   |  1 +
 utils.c  |  7 +++++--
 4 files changed, 55 insertions(+), 4 deletions(-)

diff --git a/ipsets.c b/ipsets.c
index 93bde0d..280845b 100644
--- a/ipsets.c
+++ b/ipsets.c
@@ -427,13 +427,16 @@ fw3_create_ipsets(struct fw3_state *state, enum fw3_family family,
 	/* spawn ipsets */
 	list_for_each_entry(ipset, &state->ipsets, list)
 	{
-		if (ipset->family != family ||
-		    (reload_set && !ipset->reload_set))
+		if (ipset->family != family)
 			continue;
 
 		if (ipset->external)
 			continue;
 
+		if (fw3_check_ipset(ipset) &&
+		    (reload_set && !ipset->reload_set))
+			continue;
+
 		if (!exec)
 		{
 			exec = fw3_command_pipe(false, "ipset", "-exist", "-");
@@ -568,3 +571,43 @@ out:
 
 	return rv;
 }
+
+void
+fw3_ipsets_update_run_state(enum fw3_family family, struct fw3_state *run_state,
+			    struct fw3_state *cfg_state)
+{
+	struct fw3_ipset *ipset_run, *ipset_cfg;
+	bool in_cfg;
+
+	list_for_each_entry(ipset_run, &run_state->ipsets, list) {
+		if (ipset_run->family != family)
+			continue;
+
+		in_cfg = false;
+
+		list_for_each_entry(ipset_cfg, &cfg_state->ipsets, list) {
+			if (ipset_cfg->family != family)
+				continue;
+
+			if (strlen(ipset_run->name) ==
+			    strlen(ipset_cfg->name) &&
+			    !strcmp(ipset_run->name, ipset_cfg->name)) {
+				in_cfg = true;
+				break;
+			}
+		}
+
+		/* If a set is found in run_state, but not in cfg_state then the
+		 * set has been deleted/renamed. Set reload_set to true to force
+		 * the old set to be destroyed in the "stop" fase of the reload.
+		 * If the set is found, then copy the reload_set value from the
+		 * configuration state. This ensures that the elements are
+		 * always updated according to the configuration, and not the
+		 * runtime state (which the user might have forgotten).
+		 */
+		if (!in_cfg)
+			ipset_run->reload_set = true;
+		else
+			ipset_run->reload_set = ipset_cfg->reload_set;
+	}
+}
diff --git a/ipsets.h b/ipsets.h
index fec79f8..76078d4 100644
--- a/ipsets.h
+++ b/ipsets.h
@@ -37,6 +37,10 @@ struct fw3_ipset * fw3_lookup_ipset(struct fw3_state *state, const char *name);
 
 bool fw3_check_ipset(struct fw3_ipset *set);
 
+void
+fw3_ipsets_update_run_state(enum fw3_family family, struct fw3_state *run_state,
+			    struct fw3_state *cfg_state);
+
 static inline void fw3_free_ipset(struct fw3_ipset *ipset)
 {
 	list_del(&ipset->list);
diff --git a/main.c b/main.c
index 8d9a2e8..7ad00b4 100644
--- a/main.c
+++ b/main.c
@@ -354,6 +354,7 @@ reload(void)
 			fw3_ipt_close(handle);
 		}
 
+		fw3_ipsets_update_run_state(family, run_state, cfg_state);
 		fw3_destroy_ipsets(run_state, family, true);
 
 		family_set(run_state, family, false);
diff --git a/utils.c b/utils.c
index 147acf8..b465878 100644
--- a/utils.c
+++ b/utils.c
@@ -586,8 +586,11 @@ write_ipset_uci(struct uci_context *ctx, struct fw3_ipset *s,
 	uci_set(ctx, &ptr);
 
 	ptr.o      = NULL;
-	ptr.option = "reload_set";
-	ptr.value  = s->reload_set ? "true" : "false";
+	ptr.option = "family";
+	if (s->family == FW3_FAMILY_V4)
+		ptr.value = "ipv4";
+	else
+		ptr.value = "ipv6";
 	uci_set(ctx, &ptr);
 
 	ptr.o      = NULL;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
