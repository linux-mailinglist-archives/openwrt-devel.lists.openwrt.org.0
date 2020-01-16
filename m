Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 197C613FB37
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 22:17:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cNRe09CHNwvOZgaQI3XD252Cp7uxzM/AMEcKPCs0nOk=; b=qHlE5+1PaxU427
	R3oo+5hx4O+dBhGXcWNDUC0bR4X/Cd+uhRIOhDBQynX9Im1DFVJEYGg7DvrQ1CIf/QTkTqj0t/Jkm
	haL3HHoD+aBSnKkYo1pd9aiA9GxMYkqzkUsuGyhQ3htXq86OqRD+bbVj99iU3re9DEpRsTBn5okah
	vr7F3pfuxVlOPvolkiDZu508C8yRlSq05wJ0NCsjfld7iBqJ9zCwyZuThT8KhsUXjZoTJH8Yvqil3
	fIVRyCRK6ONfI9jNoRFuj/lvNpOPqhwvfkbj9f9TJZaOABGQSTElohLX7zA6ySC5OkAd5gSOx7vaZ
	IcUMu1YGmd429PGEMoYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isCVs-0001uI-8H; Thu, 16 Jan 2020 21:17:12 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isCVf-0001rM-Uf
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 21:17:05 +0000
Received: by mail-wm1-x343.google.com with SMTP id m24so5280460wmc.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 13:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kyAB9rCu9Bt+oepbYmpqTgDpAVwwjPju4iLvYIf6Gyc=;
 b=BSgiggMOAG3ne3y9viy29gfAvmybhk1nUOl9mMPqvqRszhYZj85zlbIgNb2d7LF5/Y
 XyVbE+1a1ciPu0aFJKFmOzEKrLC6A/o8ZQU9eccZK1ZzKBdbhXLtYhcbQuHBsme3+Wbh
 eWFg0kX06ECkWAbnPScSJKZwTxnDzLnqmJj6XaEsIpS3kyam0TpmgexSHcxt7cbG6ery
 YORY7G2tdCIi+tKP7SCG8V9nIMdKaJ2TS6udli2wPVKYw5pklwWgck8o55Jx16pSAYhy
 A3NXDSjq42rSxPc9450OaGvX5Bq8O/T9CNeMaF3lIDFGqyitT3fQpKqtlPfkGjbnfWdS
 v3Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kyAB9rCu9Bt+oepbYmpqTgDpAVwwjPju4iLvYIf6Gyc=;
 b=Zl0aEJkRDxLIgWXyWlJmJ+JWkT32m+CoyZCNOUU/vB3kvq8YE4nKfyIgp9UMz73vEE
 W66YlPzHDe5mTdqV0PouI9NUgoEaDwO5NUifGxBFioHeEngafdXFYgWI/vE84CF/H0Jd
 wquRJ/LyO+PVIiXoi5DMQOWznX+H1SwvxuZk5Przw8IZjSodwp56SfyeHprLhHBaIShl
 0gcMJbOO2NB9Oaaf/r49wInJWuxzKvVEMnMs/b3krgnzlO7ur2vkS6NDtT52rblAlQ5H
 JY+dwCUZLOG8NrN65BHNM+hImfX48Vc0AS11+wHKYPxWqVOtdDDHSGqX1Bat8ZBq4inX
 WuYA==
X-Gm-Message-State: APjAAAX1uuSBQBvM/PwlEifyou7+QkALhbDjhXNA6lVN2l19Foaetd3r
 Ql7Ize5a1etp++z3tvh3L3ukpElH3w==
X-Google-Smtp-Source: APXvYqx3CnxexxJC9j4DZ3/4PyHB/Vz83O7qXJMkDOHP9+X2UYPJgFUeRalvo5HLwQstJ1BEPXtVqw==
X-Received: by 2002:a7b:c757:: with SMTP id w23mr976164wmk.166.1579209413323; 
 Thu, 16 Jan 2020 13:16:53 -0800 (PST)
Received: from presler.lan (a109-49-10-77.cpe.netcabo.pt. [109.49.10.77])
 by smtp.gmail.com with ESMTPSA id i8sm31985275wro.47.2020.01.16.13.16.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 13:16:52 -0800 (PST)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 21:16:43 +0000
Message-Id: <20200116211643.24117-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_131700_013823_EB54C63E 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rsalvaterra[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] fw3: robustify flow table detection.
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
Cc: Rui Salvaterra <rsalvaterra@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The flowtable detection fails if the respective target module is built-in,
since it's looking for the module itself. Create a generic helper and
instead check for existence of the FLOWTABLE target in
/proc/net/ip_tables_targets.

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---
 defaults.c | 24 ++++++------------------
 utils.c    | 26 ++++++++++++++++++++++++++
 utils.h    |  2 ++
 3 files changed, 34 insertions(+), 18 deletions(-)

diff --git a/defaults.c b/defaults.c
index f03765c..51ed142 100644
--- a/defaults.c
+++ b/defaults.c
@@ -85,26 +85,14 @@ check_policy(struct uci_element *e, enum fw3_flag *pol, const char *name)
 }
 
 static void
-check_kmod(struct uci_element *e, bool *module, const char *name)
+check_target(struct uci_element *e, bool *available, const char *target)
 {
-	FILE *f;
-	char buf[128];
-
-	if (!*module)
-		return;
-
-	snprintf(buf, sizeof(buf), "/sys/module/%s/refcnt", name);
-
-	f = fopen(buf, "r");
-
-	if (f)
+	const bool b = fw3_has_target(target);
+	if (!b)
 	{
-		fclose(f);
-		return;
+		warn_elem(e, "requires unavailable target extension %s, disabling", target);
 	}
-
-	warn_elem(e, "requires not available kernel module %s, disabling", name);
-	*module = false;
+	*available = b;
 }
 
 static void
@@ -171,7 +159,7 @@ fw3_load_defaults(struct fw3_state *state, struct uci_package *p)
 
 		check_any_reject_code(e, &defs->any_reject_code);
 
-		check_kmod(e, &defs->flow_offloading, "xt_FLOWOFFLOAD");
+		check_target(e, &defs->flow_offloading, "FLOWOFFLOAD");
 	}
 }
 
diff --git a/utils.c b/utils.c
index 441dbd2..df100a7 100644
--- a/utils.c
+++ b/utils.c
@@ -344,6 +344,32 @@ fw3_has_table(bool ipv6, const char *table)
 	return seen;
 }
 
+bool
+fw3_has_target(const char *target)
+{
+	FILE *f;
+
+	char line[12];
+	bool seen = false;
+
+	const char *path = "/proc/net/ip_tables_targets";
+
+	if (!(f = fopen(path, "r")))
+		return false;
+
+	while (fgets(line, sizeof(line), f))
+	{
+		if (!strncmp(line, target, strlen(target)))
+		{
+			seen = true;
+			break;
+		}
+	}
+
+	fclose(f);
+
+	return seen;
+}
 
 bool
 fw3_lock_path(int *fd, const char *path)
diff --git a/utils.h b/utils.h
index c8cf69a..093d2c6 100644
--- a/utils.h
+++ b/utils.h
@@ -105,6 +105,8 @@ void fw3_pr(const char *fmt, ...)
 
 bool fw3_has_table(bool ipv6, const char *table);
 
+bool fw3_has_target(const char *target);
+
 bool fw3_lock(void);
 void fw3_unlock(void);
 bool fw3_lock_path(int *fw3_lock_fd, const char *path);
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
