Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1723A092
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 17:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0PU7zXxDmE+9IK1D16ldENyN4wjeqs2SNpaL+xvMHsM=; b=DgB0tfxW8ghZ/r
	tpt//q9EgKYLfmGKv/0VzdOUI9o5XKsWTVDZbHpfV8LYplnAfNSpliE/FhQfrsYhJ0vgAM4yYGOqf
	ZP1wDOe3Ed5SfMSFEE2SmcxzYNHXZd70hf6E8kStDY6hvFzaNo9V+RL6Br8ui7FEgcnFAZrExvfOq
	WEmmiaqlfw+PAPYnyY4rKn1QUUZ8CrhxELWchwZSZ80LbYFCiDTY9sVrwI7dM0ePC3CubHTGKoADf
	rt3S4XeUKKGYmuQT7sUpubJBlL9N220NYKTIHVhKBw9DLLa5Bn+wX8b646WfPY/X6JEnn4PRLlJF8
	tD1TdPAcD8Otq18bi3gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZdgp-0006Mh-LA; Sat, 08 Jun 2019 15:55:31 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZdgg-0006Lp-8b
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 15:55:24 +0000
Received: by mail-pg1-x544.google.com with SMTP id s27so2739737pgl.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Jun 2019 08:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vRuSzZJ2udnIanvxPfht+IotIMgE8IeO6sgC0whkc7w=;
 b=W8lWbVpf7u+9jN+kkb57WK2rAJxKaqg/d80y5CSgK+2WxVYibc3qkBs//EaIrkFr5E
 IvvkaYNCI2UfH7SrJz7Y8vTliU6fAGC5R2XQKwbXPsSVCILfUChgPU8lCQU56F1OP18r
 qQYCv9ocQmCT42Lc9uR0HZ8cJiM1MRXYLSM5wk5wHCrHwEO/Ca+dhIImu5jBlzbonekk
 od+iCZHoeCWA+ImOd6a3+I5Ial2xsOZuNucgX85j8CKE7s2hZEtqtN5e9lc/B8oSAc+t
 2zVCHHjwFdJmN70uh0fh7g0CUVYYpXuXLcPWu6JCShGgkCxke1iAVqcNnisLN3Jo9wbB
 ChVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vRuSzZJ2udnIanvxPfht+IotIMgE8IeO6sgC0whkc7w=;
 b=k0qw/dxQWlUOqMBHT6qHeEAOcBFVXBh4Ab3NPZE2BNS1RS37MWNgQlg9dnwJ73op2A
 +l9B/NaM9bYcuwQHUNytwDVdnoSSib3p8+tM6Z234Ur0Fpgrw31tmqLrSLYms5yQeb5a
 WBHXXjZ7R0szAyhDamksBPlDFh6r0f3fAtDLsj5n6Tz+jy0mngn2VNyZ6KP62pBUOCQz
 ASIStThDY6YKve7P/rubyP/g45hJia1zHk9Abq3P3ZLTRlVykGb5OcGGzckigo+zumvL
 Zd781Bw48Y0YVNIDhqECFspIoGb78IRBO1+8z/2kTMrRMvCwZS2spPG6CKgmagWjRjJS
 MN4A==
X-Gm-Message-State: APjAAAX+1TnYGc1QrLW6rdIME00ngdztKRWmwBRoOoYKmqtgCSBAcf9Y
 c8vCn28ZTSqTO4UNAyfg3Ww=
X-Google-Smtp-Source: APXvYqz7+Bq6bnHreW9SXbPQy4XzsnnWcopQoBFKXRTrq4KIu/dHi3j8cXC6mG/lbHtQy0NeqJ7skQ==
X-Received: by 2002:a63:6ec6:: with SMTP id j189mr2484465pgc.168.1560009320628; 
 Sat, 08 Jun 2019 08:55:20 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com
 (165.116.92.34.bc.googleusercontent.com. [34.92.116.165])
 by smtp.gmail.com with ESMTPSA id d19sm5004249pjs.22.2019.06.08.08.55.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 08:55:19 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: ynezz@true.cz
Date: Sat,  8 Jun 2019 15:54:41 +0000
Message-Id: <20190608155442.16632-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_085522_336964_C2BD6669 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
Subject: [OpenWrt-Devel] [PATCH 1/2] generic: support mtd-mac-address-ascii
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It supports formats of both 001122334455 and 00:11:22:33:44:55

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 ...et-sched-Introduce-act_ctinfo-action.patch |  18 ----
 ...et-sched-Introduce-act_ctinfo-action.patch |  20 ----
 .../generic/hack-4.9/220-gc_sections.patch    |   2 +-
 .../681-NET-add-of_get_mac_address_mtd.patch  |  94 ++++++++++++----
 .../681-NET-add-of_get_mac_address_mtd.patch  |  94 ++++++++++++----
 .../681-NET-add-of_get_mac_address_mtd.patch  | 100 ++++++++++++++----
 6 files changed, 229 insertions(+), 99 deletions(-)

diff --git a/target/linux/generic/backport-4.14/380-v5.3-net-sched-Introduce-act_ctinfo-action.patch b/target/linux/generic/backport-4.14/380-v5.3-net-sched-Introduce-act_ctinfo-action.patch
index 26063985c0..cd729a93b1 100644
--- a/target/linux/generic/backport-4.14/380-v5.3-net-sched-Introduce-act_ctinfo-action.patch
+++ b/target/linux/generic/backport-4.14/380-v5.3-net-sched-Introduce-act_ctinfo-action.patch
@@ -55,9 +55,6 @@ Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
  create mode 100644 include/uapi/linux/tc_act/tc_ctinfo.h
  create mode 100644 net/sched/act_ctinfo.c
 
-diff --git a/include/net/tc_act/tc_ctinfo.h b/include/net/tc_act/tc_ctinfo.h
-new file mode 100644
-index 000000000000..d6a688571672
 --- /dev/null
 +++ b/include/net/tc_act/tc_ctinfo.h
 @@ -0,0 +1,28 @@
@@ -89,8 +86,6 @@ index 000000000000..d6a688571672
 +#define to_ctinfo(a) ((struct tcf_ctinfo *)a)
 +
 +#endif /* __NET_TC_CTINFO_H */
-diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
-index 46c506615f4a..408b02fbb34a 100644
 --- a/include/uapi/linux/pkt_cls.h
 +++ b/include/uapi/linux/pkt_cls.h
 @@ -66,7 +66,8 @@ enum {
@@ -103,9 +98,6 @@ index 46c506615f4a..408b02fbb34a 100644
  };
  
  #define TCA_ID_MAX __TCA_ID_MAX
-diff --git a/include/uapi/linux/tc_act/tc_ctinfo.h b/include/uapi/linux/tc_act/tc_ctinfo.h
-new file mode 100644
-index 000000000000..da803e05a89b
 --- /dev/null
 +++ b/include/uapi/linux/tc_act/tc_ctinfo.h
 @@ -0,0 +1,34 @@
@@ -143,8 +135,6 @@ index 000000000000..da803e05a89b
 +};
 +
 +#endif
-diff --git a/net/sched/Kconfig b/net/sched/Kconfig
-index e70ed26485a2..962d90f72f54 100644
 --- a/net/sched/Kconfig
 +++ b/net/sched/Kconfig
 @@ -808,6 +808,19 @@ config NET_ACT_CONNMARK
@@ -167,8 +157,6 @@ index e70ed26485a2..962d90f72f54 100644
  config NET_ACT_SKBMOD
          tristate "skb data modification action"
          depends on NET_CLS_ACT
-diff --git a/net/sched/Makefile b/net/sched/Makefile
-index 9e43a4721ef8..44ee5b87b895 100644
 --- a/net/sched/Makefile
 +++ b/net/sched/Makefile
 @@ -21,6 +21,7 @@ obj-$(CONFIG_NET_ACT_CSUM)	+= act_csum.o
@@ -179,9 +167,6 @@ index 9e43a4721ef8..44ee5b87b895 100644
  obj-$(CONFIG_NET_ACT_SKBMOD)	+= act_skbmod.o
  obj-$(CONFIG_NET_ACT_IFE)	+= act_ife.o
  obj-$(CONFIG_NET_IFE_SKBMARK)	+= act_meta_mark.o
-diff --git a/net/sched/act_ctinfo.c b/net/sched/act_ctinfo.c
-new file mode 100644
-index 000000000000..e65344e32801
 --- /dev/null
 +++ b/net/sched/act_ctinfo.c
 @@ -0,0 +1,394 @@
@@ -579,6 +564,3 @@ index 000000000000..e65344e32801
 +MODULE_AUTHOR("Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>");
 +MODULE_DESCRIPTION("Conntrack mark to DSCP restoring");
 +MODULE_LICENSE("GPL");
--- 
-2.20.1 (Apple Git-117)
-
diff --git a/target/linux/generic/backport-4.19/380-v5.3-net-sched-Introduce-act_ctinfo-action.patch b/target/linux/generic/backport-4.19/380-v5.3-net-sched-Introduce-act_ctinfo-action.patch
index 632f41ef98..cc4a621bb4 100644
--- a/target/linux/generic/backport-4.19/380-v5.3-net-sched-Introduce-act_ctinfo-action.patch
+++ b/target/linux/generic/backport-4.19/380-v5.3-net-sched-Introduce-act_ctinfo-action.patch
@@ -71,9 +71,6 @@ Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
  create mode 100644 include/uapi/linux/tc_act/tc_ctinfo.h
  create mode 100644 net/sched/act_ctinfo.c
 
-diff --git a/include/net/tc_act/tc_ctinfo.h b/include/net/tc_act/tc_ctinfo.h
-new file mode 100644
-index 000000000000..d6a688571672
 --- /dev/null
 +++ b/include/net/tc_act/tc_ctinfo.h
 @@ -0,0 +1,28 @@
@@ -105,8 +102,6 @@ index 000000000000..d6a688571672
 +#define to_ctinfo(a) ((struct tcf_ctinfo *)a)
 +
 +#endif /* __NET_TC_CTINFO_H */
-diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
-index be382fb0592d..71e10c5a96a0 100644
 --- a/include/uapi/linux/pkt_cls.h
 +++ b/include/uapi/linux/pkt_cls.h
 @@ -68,7 +68,8 @@ enum {
@@ -119,9 +114,6 @@ index be382fb0592d..71e10c5a96a0 100644
  };
  
  #define TCA_ID_MAX __TCA_ID_MAX
-diff --git a/include/uapi/linux/tc_act/tc_ctinfo.h b/include/uapi/linux/tc_act/tc_ctinfo.h
-new file mode 100644
-index 000000000000..da803e05a89b
 --- /dev/null
 +++ b/include/uapi/linux/tc_act/tc_ctinfo.h
 @@ -0,0 +1,34 @@
@@ -159,8 +151,6 @@ index 000000000000..da803e05a89b
 +};
 +
 +#endif
-diff --git a/net/sched/Kconfig b/net/sched/Kconfig
-index e95741388311..1d79d5dba6e4 100644
 --- a/net/sched/Kconfig
 +++ b/net/sched/Kconfig
 @@ -866,6 +866,23 @@ config NET_ACT_CONNMARK
@@ -187,8 +177,6 @@ index e95741388311..1d79d5dba6e4 100644
  config NET_ACT_SKBMOD
          tristate "skb data modification action"
          depends on NET_CLS_ACT
-diff --git a/net/sched/Makefile b/net/sched/Makefile
-index f0403f49edcb..bb3c2bc44af7 100644
 --- a/net/sched/Makefile
 +++ b/net/sched/Makefile
 @@ -21,6 +21,7 @@ obj-$(CONFIG_NET_ACT_CSUM)	+= act_csum.o
@@ -199,9 +187,6 @@ index f0403f49edcb..bb3c2bc44af7 100644
  obj-$(CONFIG_NET_ACT_SKBMOD)	+= act_skbmod.o
  obj-$(CONFIG_NET_ACT_IFE)	+= act_ife.o
  obj-$(CONFIG_NET_IFE_SKBMARK)	+= act_meta_mark.o
-diff --git a/net/sched/act_ctinfo.c b/net/sched/act_ctinfo.c
-new file mode 100644
-index 000000000000..8975cb4976aa
 --- /dev/null
 +++ b/net/sched/act_ctinfo.c
 @@ -0,0 +1,395 @@
@@ -600,8 +585,6 @@ index 000000000000..8975cb4976aa
 +MODULE_AUTHOR("Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>");
 +MODULE_DESCRIPTION("Connection tracking mark actions");
 +MODULE_LICENSE("GPL");
-diff --git a/tools/testing/selftests/tc-testing/config b/tools/testing/selftests/tc-testing/config
-index 203302065458..9d1fddcfb887 100644
 --- a/tools/testing/selftests/tc-testing/config
 +++ b/tools/testing/selftests/tc-testing/config
 @@ -37,6 +37,7 @@ CONFIG_NET_ACT_SKBEDIT=m
@@ -612,6 +595,3 @@ index 203302065458..9d1fddcfb887 100644
  CONFIG_NET_ACT_CONNMARK=m
  CONFIG_NET_ACT_SKBMOD=m
  CONFIG_NET_ACT_IFE=m
--- 
-2.20.1 (Apple Git-117)
-
diff --git a/target/linux/generic/hack-4.9/220-gc_sections.patch b/target/linux/generic/hack-4.9/220-gc_sections.patch
index 732e38aaf0..945220ea06 100644
--- a/target/linux/generic/hack-4.9/220-gc_sections.patch
+++ b/target/linux/generic/hack-4.9/220-gc_sections.patch
@@ -22,7 +22,7 @@ Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
 --- a/Makefile
 +++ b/Makefile
 @@ -401,6 +401,11 @@ KBUILD_CFLAGS_MODULE  := -DMODULE
- KBUILD_LDFLAGS_MODULE = -T $(srctree)/scripts/module-common.lds $(if $(CONFIG_PROFILING),,-s)
+ KBUILD_LDFLAGS_MODULE := -T $(srctree)/scripts/module-common.lds
  GCC_PLUGINS_CFLAGS :=
  
 +ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
diff --git a/target/linux/generic/pending-4.14/681-NET-add-of_get_mac_address_mtd.patch b/target/linux/generic/pending-4.14/681-NET-add-of_get_mac_address_mtd.patch
index 2b89a05238..301cd87ded 100644
--- a/target/linux/generic/pending-4.14/681-NET-add-of_get_mac_address_mtd.patch
+++ b/target/linux/generic/pending-4.14/681-NET-add-of_get_mac_address_mtd.patch
@@ -32,17 +32,62 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  {
  	struct property *pp = of_find_property(np, name, NULL);
  
-@@ -47,6 +48,79 @@ static const void *of_get_mac_addr(struc
+@@ -47,6 +48,133 @@ static const void *of_get_mac_addr(struc
  	return NULL;
  }
  
++typedef int(*mtd_mac_address_read)(struct mtd_info *mtd, loff_t from, u_char *buf);
++
++static int read_mtd_mac_address(struct mtd_info *mtd, loff_t from, u_char *mac)
++{
++	int retlen;
++
++	return mtd_read(mtd, from, 6, &retlen, mac);
++}
++
++static int read_mtd_mac_address_ascii(struct mtd_info *mtd, loff_t from, u_char *mac)
++{
++	int retlen;
++	char buf[17];
++
++	if (mtd_read(mtd, from, 12, &retlen, buf)) {
++		return -1;
++	}
++	if (sscanf(buf, "%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx",
++			&mac[0], &mac[1], &mac[2], &mac[3],
++			&mac[4], &mac[5]) == 6) {
++		return 0;
++	}
++	if (mtd_read(mtd, from+12, 5, &retlen, buf+12)) {
++		return -1;
++	}
++	if (sscanf(buf, "%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx",
++			&mac[0], &mac[1], &mac[2], &mac[3],
++			&mac[4], &mac[5]) == 6) {
++		return 0;
++	}
++	return -1;
++}
++
++static struct mtd_mac_address_property {
++	char *name;
++	mtd_mac_address_read read;
++} mtd_mac_address_properties[] = {
++	{
++		.name = "mtd-mac-address",
++		.read = read_mtd_mac_address,
++	}, {
++		.name = "mtd-mac-address-ascii",
++		.read = read_mtd_mac_address_ascii,
++	},
++};
++
 +static const void *of_get_mac_address_mtd(struct device_node *np)
 +{
 +#ifdef CONFIG_MTD
 +	struct device_node *mtd_np = NULL;
 +	struct property *prop;
-+	size_t retlen;
-+	int size, ret;
++	int size, ret = -1;
 +	struct mtd_info *mtd;
 +	const char *part;
 +	const __be32 *list;
@@ -51,28 +96,37 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 +	u8 mac[ETH_ALEN];
 +	void *addr;
 +	u32 inc_idx;
++	int i;
 +
-+	list = of_get_property(np, "mtd-mac-address", &size);
-+	if (!list || (size != (2 * sizeof(*list))))
-+		return NULL;
++	for (i = 0; i < ARRAY_SIZE(mtd_mac_address_properties); i++) {
++		list = of_get_property(np, mtd_mac_address_properties[i].name, &size);
++		if (!list || (size != (2 * sizeof(*list))))
++			continue;
 +
-+	phandle = be32_to_cpup(list++);
-+	if (phandle)
-+		mtd_np = of_find_node_by_phandle(phandle);
++		phandle = be32_to_cpup(list++);
++		if (phandle)
++			mtd_np = of_find_node_by_phandle(phandle);
 +
-+	if (!mtd_np)
-+		return NULL;
++		if (!mtd_np)
++			continue;
 +
-+	part = of_get_property(mtd_np, "label", NULL);
-+	if (!part)
-+		part = mtd_np->name;
++		part = of_get_property(mtd_np, "label", NULL);
++		if (!part)
++			part = mtd_np->name;
 +
-+	mtd = get_mtd_device_nm(part);
-+	if (IS_ERR(mtd))
-+		return NULL;
++		mtd = get_mtd_device_nm(part);
++		if (IS_ERR(mtd))
++			continue;
 +
-+	ret = mtd_read(mtd, be32_to_cpup(list), 6, &retlen, mac);
-+	put_mtd_device(mtd);
++		ret = mtd_mac_address_properties[i].read(mtd, be32_to_cpup(list), mac);
++		put_mtd_device(mtd);
++		if (!ret) {
++			break;
++		}
++	}
++	if (ret) {
++		return NULL;
++	}
 +
 +	if (of_property_read_u32(np, "mtd-mac-address-increment-byte", &inc_idx))
 +		inc_idx = 5;
@@ -112,7 +166,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  /**
   * Search the device tree for the best MAC address to use.  'mac-address' is
   * checked first, because that is supposed to contain to "most recent" MAC
-@@ -64,11 +138,18 @@ static const void *of_get_mac_addr(struc
+@@ -64,11 +192,18 @@ static const void *of_get_mac_addr(struc
   * addresses.  Some older U-Boots only initialized 'local-mac-address'.  In
   * this case, the real MAC is in 'local-mac-address', and 'mac-address' exists
   * but is all zeros.
diff --git a/target/linux/generic/pending-4.19/681-NET-add-of_get_mac_address_mtd.patch b/target/linux/generic/pending-4.19/681-NET-add-of_get_mac_address_mtd.patch
index 13f5640590..fa019eab00 100644
--- a/target/linux/generic/pending-4.19/681-NET-add-of_get_mac_address_mtd.patch
+++ b/target/linux/generic/pending-4.19/681-NET-add-of_get_mac_address_mtd.patch
@@ -32,17 +32,62 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  {
  	struct property *pp = of_find_property(np, name, NULL);
  
-@@ -48,6 +49,79 @@ static const void *of_get_mac_addr(struc
+@@ -48,6 +49,133 @@ static const void *of_get_mac_addr(struc
  	return NULL;
  }
  
++typedef int(*mtd_mac_address_read)(struct mtd_info *mtd, loff_t from, u_char *buf);
++
++static int read_mtd_mac_address(struct mtd_info *mtd, loff_t from, u_char *mac)
++{
++	int retlen;
++
++	return mtd_read(mtd, from, 6, &retlen, mac);
++}
++
++static int read_mtd_mac_address_ascii(struct mtd_info *mtd, loff_t from, u_char *mac)
++{
++	int retlen;
++	char buf[17];
++
++	if (mtd_read(mtd, from, 12, &retlen, buf)) {
++		return -1;
++	}
++	if (sscanf(buf, "%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx",
++			&mac[0], &mac[1], &mac[2], &mac[3],
++			&mac[4], &mac[5]) == 6) {
++		return 0;
++	}
++	if (mtd_read(mtd, from+12, 5, &retlen, buf+12)) {
++		return -1;
++	}
++	if (sscanf(buf, "%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx",
++			&mac[0], &mac[1], &mac[2], &mac[3],
++			&mac[4], &mac[5]) == 6) {
++		return 0;
++	}
++	return -1;
++}
++
++static struct mtd_mac_address_property {
++	char *name;
++	mtd_mac_address_read read;
++} mtd_mac_address_properties[] = {
++	{
++		.name = "mtd-mac-address",
++		.read = read_mtd_mac_address,
++	}, {
++		.name = "mtd-mac-address-ascii",
++		.read = read_mtd_mac_address_ascii,
++	},
++};
++
 +static const void *of_get_mac_address_mtd(struct device_node *np)
 +{
 +#ifdef CONFIG_MTD
 +	struct device_node *mtd_np = NULL;
 +	struct property *prop;
-+	size_t retlen;
-+	int size, ret;
++	int size, ret = -1;
 +	struct mtd_info *mtd;
 +	const char *part;
 +	const __be32 *list;
@@ -51,28 +96,37 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 +	u8 mac[ETH_ALEN];
 +	void *addr;
 +	u32 inc_idx;
++	int i;
 +
-+	list = of_get_property(np, "mtd-mac-address", &size);
-+	if (!list || (size != (2 * sizeof(*list))))
-+		return NULL;
++	for (i = 0; i < ARRAY_SIZE(mtd_mac_address_properties); i++) {
++		list = of_get_property(np, mtd_mac_address_properties[i].name, &size);
++		if (!list || (size != (2 * sizeof(*list))))
++			continue;
 +
-+	phandle = be32_to_cpup(list++);
-+	if (phandle)
-+		mtd_np = of_find_node_by_phandle(phandle);
++		phandle = be32_to_cpup(list++);
++		if (phandle)
++			mtd_np = of_find_node_by_phandle(phandle);
 +
-+	if (!mtd_np)
-+		return NULL;
++		if (!mtd_np)
++			continue;
 +
-+	part = of_get_property(mtd_np, "label", NULL);
-+	if (!part)
-+		part = mtd_np->name;
++		part = of_get_property(mtd_np, "label", NULL);
++		if (!part)
++			part = mtd_np->name;
 +
-+	mtd = get_mtd_device_nm(part);
-+	if (IS_ERR(mtd))
-+		return NULL;
++		mtd = get_mtd_device_nm(part);
++		if (IS_ERR(mtd))
++			continue;
 +
-+	ret = mtd_read(mtd, be32_to_cpup(list), 6, &retlen, mac);
-+	put_mtd_device(mtd);
++		ret = mtd_mac_address_properties[i].read(mtd, be32_to_cpup(list), mac);
++		put_mtd_device(mtd);
++		if (!ret) {
++			break;
++		}
++	}
++	if (ret) {
++		return NULL;
++	}
 +
 +	if (of_property_read_u32(np, "mtd-mac-address-increment-byte", &inc_idx))
 +		inc_idx = 5;
@@ -112,7 +166,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  /**
   * Search the device tree for the best MAC address to use.  'mac-address' is
   * checked first, because that is supposed to contain to "most recent" MAC
-@@ -65,11 +139,18 @@ static const void *of_get_mac_addr(struc
+@@ -65,11 +193,18 @@ static const void *of_get_mac_addr(struc
   * addresses.  Some older U-Boots only initialized 'local-mac-address'.  In
   * this case, the real MAC is in 'local-mac-address', and 'mac-address' exists
   * but is all zeros.
diff --git a/target/linux/generic/pending-4.9/681-NET-add-of_get_mac_address_mtd.patch b/target/linux/generic/pending-4.9/681-NET-add-of_get_mac_address_mtd.patch
index b29b5f11b0..301cd87ded 100644
--- a/target/linux/generic/pending-4.9/681-NET-add-of_get_mac_address_mtd.patch
+++ b/target/linux/generic/pending-4.9/681-NET-add-of_get_mac_address_mtd.patch
@@ -32,17 +32,62 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  {
  	struct property *pp = of_find_property(np, name, NULL);
  
-@@ -47,6 +48,73 @@ static const void *of_get_mac_addr(struc
+@@ -47,6 +48,133 @@ static const void *of_get_mac_addr(struc
  	return NULL;
  }
  
++typedef int(*mtd_mac_address_read)(struct mtd_info *mtd, loff_t from, u_char *buf);
++
++static int read_mtd_mac_address(struct mtd_info *mtd, loff_t from, u_char *mac)
++{
++	int retlen;
++
++	return mtd_read(mtd, from, 6, &retlen, mac);
++}
++
++static int read_mtd_mac_address_ascii(struct mtd_info *mtd, loff_t from, u_char *mac)
++{
++	int retlen;
++	char buf[17];
++
++	if (mtd_read(mtd, from, 12, &retlen, buf)) {
++		return -1;
++	}
++	if (sscanf(buf, "%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx",
++			&mac[0], &mac[1], &mac[2], &mac[3],
++			&mac[4], &mac[5]) == 6) {
++		return 0;
++	}
++	if (mtd_read(mtd, from+12, 5, &retlen, buf+12)) {
++		return -1;
++	}
++	if (sscanf(buf, "%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx",
++			&mac[0], &mac[1], &mac[2], &mac[3],
++			&mac[4], &mac[5]) == 6) {
++		return 0;
++	}
++	return -1;
++}
++
++static struct mtd_mac_address_property {
++	char *name;
++	mtd_mac_address_read read;
++} mtd_mac_address_properties[] = {
++	{
++		.name = "mtd-mac-address",
++		.read = read_mtd_mac_address,
++	}, {
++		.name = "mtd-mac-address-ascii",
++		.read = read_mtd_mac_address_ascii,
++	},
++};
++
 +static const void *of_get_mac_address_mtd(struct device_node *np)
 +{
 +#ifdef CONFIG_MTD
 +	struct device_node *mtd_np = NULL;
 +	struct property *prop;
-+	size_t retlen;
-+	int size, ret;
++	int size, ret = -1;
 +	struct mtd_info *mtd;
 +	const char *part;
 +	const __be32 *list;
@@ -50,31 +95,46 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 +	u32 mac_inc = 0;
 +	u8 mac[ETH_ALEN];
 +	void *addr;
++	u32 inc_idx;
++	int i;
 +
-+	list = of_get_property(np, "mtd-mac-address", &size);
-+	if (!list || (size != (2 * sizeof(*list))))
-+		return NULL;
++	for (i = 0; i < ARRAY_SIZE(mtd_mac_address_properties); i++) {
++		list = of_get_property(np, mtd_mac_address_properties[i].name, &size);
++		if (!list || (size != (2 * sizeof(*list))))
++			continue;
 +
-+	phandle = be32_to_cpup(list++);
-+	if (phandle)
-+		mtd_np = of_find_node_by_phandle(phandle);
++		phandle = be32_to_cpup(list++);
++		if (phandle)
++			mtd_np = of_find_node_by_phandle(phandle);
 +
-+	if (!mtd_np)
-+		return NULL;
++		if (!mtd_np)
++			continue;
++
++		part = of_get_property(mtd_np, "label", NULL);
++		if (!part)
++			part = mtd_np->name;
 +
-+	part = of_get_property(mtd_np, "label", NULL);
-+	if (!part)
-+		part = mtd_np->name;
++		mtd = get_mtd_device_nm(part);
++		if (IS_ERR(mtd))
++			continue;
 +
-+	mtd = get_mtd_device_nm(part);
-+	if (IS_ERR(mtd))
++		ret = mtd_mac_address_properties[i].read(mtd, be32_to_cpup(list), mac);
++		put_mtd_device(mtd);
++		if (!ret) {
++			break;
++		}
++	}
++	if (ret) {
 +		return NULL;
++	}
 +
-+	ret = mtd_read(mtd, be32_to_cpup(list), 6, &retlen, mac);
-+	put_mtd_device(mtd);
++	if (of_property_read_u32(np, "mtd-mac-address-increment-byte", &inc_idx))
++		inc_idx = 5;
++	if (inc_idx > 5)
++		return NULL;
 +
 +	if (!of_property_read_u32(np, "mtd-mac-address-increment", &mac_inc))
-+		mac[5] += mac_inc;
++		mac[inc_idx] += mac_inc;
 +
 +	if (!is_valid_ether_addr(mac))
 +		return NULL;
@@ -106,7 +166,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  /**
   * Search the device tree for the best MAC address to use.  'mac-address' is
   * checked first, because that is supposed to contain to "most recent" MAC
-@@ -64,11 +132,18 @@ static const void *of_get_mac_addr(struc
+@@ -64,11 +192,18 @@ static const void *of_get_mac_addr(struc
   * addresses.  Some older U-Boots only initialized 'local-mac-address'.  In
   * this case, the real MAC is in 'local-mac-address', and 'mac-address' exists
   * but is all zeros.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
