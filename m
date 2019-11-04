Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC7FEDB3F
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 10:07:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s7wBsiF0PjS9r2EI4qiLklKXcKv+VEngJAL+anQ/Ods=; b=fPR5W1O7TNOznu
	GjKVbK/3EiSKTGzPOWr/QneQ0lRv6067ya6SiQfXgIQPhZGrEtU4R1ghojQrs0oU6R1ADBsCWFpIU
	n9Ia3QMuKxDkUyT4bm68ib2ojvg5gRvmYi6GGB8Z0J4CS1PewuroWz1uXA1SozMZr47xW6dA86wFg
	c6jJ1S4ZLjLtJ72qzh50ghmTXpOU9XdXQPkvqHFOQJJLd+L6BiaJrc9gsoEShjnTZ3R7rZft04z6D
	DRCpH0pnm6rDBlSVP+eezR8P3w8df0LdnwVsmn1kPUbgpA9O+7l7cGA/rYNymB4nmHc2GA5hdPaTk
	bAjSd9cbphh6pnGfhlBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRYK8-0002Hn-Go; Mon, 04 Nov 2019 09:06:56 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRYJy-0002E8-Q8
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 09:06:49 +0000
X-QQ-mid: bizesmtp12t1572858363t66ad5ir
Received: from localhost.localdomain (unknown [114.248.153.81])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 Nov 2019 17:06:02 +0800 (CST)
X-QQ-SSF: 01400000000000S0IH40000A0000000
X-QQ-FEAT: JOVh5Yj1n8Yv6wSwNdhlyzUMFiXmTkGkW85dXyqMkUvbd/5FFMtqhEO34dBVe
 x2H3NhD5+zKcNGbI34FnreYlhd59lwcYKl6SmMM3AS+HNuuiZVNSCD9EQc+qo8Y300pCNYC
 8dzng/Kf1GFcjXOuFrvCEagbOIbm83eg3oOE98Ej1/SvWndIVRk79T8uKhUnErANBzsJwpl
 Vu2+/tMG7/grI6aMzRK061UBYAG0g4q4AkpCWA5ooM/MHPpXEaBxvKzAojNgjbABCzPWIEQ
 VEddd6u2Xn5n/HzQbR7ESwuxBQ0Z+nZQxnM08FiypCjYoxbu9/uL2Ama+rEgbEev24c1vxg
 6vyP73W
X-QQ-GoodBg: 2
From: daxiong <lxliu@ikuai8.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  4 Nov 2019 17:06:00 +0800
Message-Id: <1572858360-85946-1-git-send-email-lxliu@ikuai8.com>
X-Mailer: git-send-email 1.9.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:ikuai8.com:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_010647_190623_B887B24B 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.254.200.128 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] busybox: support output new-linux model for
 arp
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

Compatible with the output of net-tools.
Using new-linux model by default.

arp -n:
  Address                  HWtype  HWaddress           Flags Mask            Iface
  192.168.1.1              ether   00:11:22:33:44:55   C                     eth1

arp -an:
  ? (192.168.1.1) at 00:11:22:33:44:55 [ether]  on eth1

Signed-off-by: daxiong <lxliu@ikuai8.com>
---
 .../patches/540-arpshow-support-new-linux.patch    | 94 ++++++++++++++++++++++
 1 file changed, 94 insertions(+)
 create mode 100644 package/utils/busybox/patches/540-arpshow-support-new-linux.patch

diff --git a/package/utils/busybox/patches/540-arpshow-support-new-linux.patch b/package/utils/busybox/patches/540-arpshow-support-new-linux.patch
new file mode 100644
index 0000000..1bb6629
--- /dev/null
+++ b/package/utils/busybox/patches/540-arpshow-support-new-linux.patch
@@ -0,0 +1,94 @@
+--- a/networking/arp.c	2019-11-04 15:42:52.171010629 +0800
++++ b/networking/arp.c	2019-11-04 16:39:46.455539779 +0800
+@@ -353,6 +353,56 @@ static int arp_set(char **args)
+ 
+ 
+ /* Print the contents of an ARP request block. */
++static void arp_disp_2(char *name, int type, int arp_flags, char *hwa, char *mask, char *dev)
++{
++    static int title = 0;
++    const struct hwtype *xhw;
++    char flags[10];
++
++    xhw = get_hwntype(type);
++    if (xhw == NULL)
++	xhw = get_hwtype(DFLT_HW);
++
++    if (title++ == 0) {
++	printf("Address                  HWtype  HWaddress           Flags Mask            Iface\n");
++    }
++    /* Setup the flags. */
++    flags[0] = '\0';
++    if (arp_flags & ATF_COM)
++	strcat(flags, "C");
++    if (arp_flags & ATF_PERM)
++	strcat(flags, "M");
++    if (arp_flags & ATF_PUBL)
++	strcat(flags, "P");
++#ifdef HAVE_ATF_MAGIC
++    if (arp_flags & ATF_MAGIC)
++	strcat(flags, "A");
++#endif
++#ifdef HAVE_ATF_DONTPUB
++    if (arp_flags & ATF_DONTPUB)
++	strcat(flags, "!");
++#endif
++    if (arp_flags & ATF_USETRAILERS)
++	strcat(flags, "T");
++
++    if (!(arp_flags & ATF_NETMASK))
++	mask = (char *)"";
++
++    printf("%-23.23s  ", name);
++
++    if (!(arp_flags & ATF_COM)) {
++	if (arp_flags & ATF_PUBL)
++	    printf("%-8.8s%-20.20s", "*", "*");
++	else
++	    printf("%-8.8s%-20.20s", "", "(incomplete)");
++    } else {
++	printf("%-8.8s%-20.20s", xhw->name, hwa);
++    }
++
++    printf("%-6.6s%-15.15s %s\n", flags, mask, dev);
++}
++
++/* Print the contents of an ARP request block. */
+ static void
+ arp_disp(const char *name, char *ip, int type, int arp_flags,
+ 		char *hwa, char *mask, char *dev)
+@@ -457,18 +507,25 @@ static int arp_show(char *name)
+ 
+ 		shown++;
+ 		/* This IS ugly but it works -be */
+-		hostname = "?";
+-		if (!(option_mask32 & ARP_OPT_n)) {
+-			if (ap->input(ip, &sa) < 0)
+-				hostname = ip;
+-			else
+-				hostname = ap->sprint(&sa, (option_mask32 & ARP_OPT_n) | 0x8000);
+-			if (strcmp(hostname, ip) == 0)
+-				hostname = "?";
++		if (option_mask32 & ARP_OPT_n) {
++			hostname = "?";
++		} else {
++			if (!(option_mask32 & ARP_OPT_n)) {
++				if (ap->input(ip, &sa) < 0)
++					hostname = ip;
++				else
++					hostname = ap->sprint(&sa, (option_mask32 & ARP_OPT_n) | 0x8000);
++				if (strcmp(hostname, ip) == 0)
++					hostname = "?";
++			}
+ 		}
+ 
+-		arp_disp(hostname, ip, type, flags, hwa, mask, dev);
++		if (option_mask32 & ARP_OPT_a)
++			arp_disp(hostname, ip, type, flags, hwa, mask, dev);
++		else
++			arp_disp_2((char *)(hostname[0] == '?' ? ip : hostname), type, flags, hwa, mask, dev);
+ 	}
++
+ 	if (option_mask32 & ARP_OPT_v)
+ 		printf("Entries: %u\tSkipped: %u\tFound: %u\n",
+ 				entries, entries - shown, shown);
-- 
1.9.1





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
