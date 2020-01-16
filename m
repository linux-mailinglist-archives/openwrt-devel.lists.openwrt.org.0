Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD3213D955
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 12:52:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctYt3mHX0qcMaU3Cs3VO9syy1EYf+3HT5OaYJy0cq1o=; b=d5022HQYIu23ZN
	phR5EyiEEu7omOTZj4DNmmMRUrgWZkSyy3wfubTR6jbwa4IEo2kBItNjCDBYmm+Qkl6XLV3eYcss6
	kJOFI45ZetbBSUg6+/HYmR+k6vsItdABa/bZNVyYDsCTrxXLayPDd7AqialbnBEn2AfJZuv/DIYhR
	vkrctWsTNQBuE9aVFljTj3q0GDYjAHu1dO+cyfFgWC4gR4iCr46D1XXUFjzvxTsOKN015/aQeNki5
	/j+SvHcvKzt6Nt+Pr+Xm2YPAgJM8+DE0qrj0nsIJwBYFZCSAkI12Gx/lUh5FJKNobX+VZIynCYtq1
	DhG7Jk7mgUPkL4f6hChw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3hU-00006E-P8; Thu, 16 Jan 2020 11:52:36 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3gl-0007r3-6R
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 11:52:00 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MQvGz-1jFvOO0sQp-00Nw57; Thu, 16 Jan 2020 12:51:47 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 12:51:00 +0100
Message-Id: <20200116115100.1906-5-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
References: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:+qqHqfnajvUxrBB9L/y+o6d9dED/ozAnjKuqVhp/ZBkxRPMuwLW
 eP9UrhEFKYnaBuTSDcWZaEbrXTXR5AO0iB1XkYrdzXPTmw9NhSwiXgQDqKpQ5kxPTrLFC7l
 kkLAn3dCkjWi4dvZhGuEbB8dtv+kX5LyZw9y3Lsf7z1KgJct1Tc6p6tmck3IRVmtv7uuzoH
 jKgYytKdIJ0gLI12cnu3g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Jh7R1wnYu/w=:aaOjOnwU5XWH3QDfFN9utR
 l33R9i8hG0H3qfOHCpzIUL2HrcuoTNQZfqJckRNi7v9FHNMMQVc9QG8RQdUJULh/TlvfDeWeD
 /vgC7awJJIsbK4UfanIUh3ilmzOXIMcOy2konmqQINJNhFXkKlBxYGs2c7FaoqlCV+1vcX2lv
 rF2ZKIbUS0cqGNeXzYkWAiUJO5Zcs0XYAnF6JBaVlx5W6tnBWVftJVKaVb8aQSE8K+gKdSYir
 +6zuAQbfs5Fv5dp1eLK0466YSCIpX9couSDqC1xAMpgfVmYvSkAILTPCRt0tKMwxiCgvfV356
 gg30lPlQcAY8sBvzKVIxHjs1/CW4K6eFaV+4L3S/cUBqF3JdFtQOYO6DQqFD5ScFQKTYAU4CU
 YW8pOO1uepmTN2GOxxo6Hsa4TSDDxlWdmqlZKS76+XHOnMkc1PG9t4I2hECaWzgmp/Ud/rlD+
 DWa7gxXq/XdqdXXN7oM2FsuVRLaV72eqZfPgcSLKOOQHA1KH4HHttqKUHNfmaSilQ0yYJAcDN
 pxR/XK0OmqhE/sQ67YV7+kmGlcKPOXXP+Z70XcU1NxWl9H0Bi7dKUO6J3cWR+X8ZALWQA+WBW
 nr90DZuMIaeuO/SaYLUaoiwpYmmbJ6zNtHCLuqKYeycAD1f//cgb82P1jDEBwIvNpQTdo53DY
 dXXZcA+fntMWBpB8H9eBbpJib4i7RSE3qEm+NnoVx+Nv5r5WoNnjqsXM0x6Ed5viaQn0yXqIX
 bZbzj9Q4ESYyt6zptV16POuvvRONfD5wkyIVq0qOlALwDIQx0W9N+FO45nziat5MVoH14jnos
 65hRb/b/OxO583b0XB0eGGfxg2MsXWBr8Kds1+lyO0CE4gWehXDvQlzRhSPBf2CnCtNo9t49g
 zvByh2Qq/Z20Jm3yEAYw4hwwFV1fAnbWwEmP+5ZGI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_035151_525179_7D7CC805 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 5/5] hostapd: wpa_supplicant: enable
 proper GCMP cipher support
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Robert Marko <robimarko@gmail.com>

This patch enables hostapd.sh to properly configure wpa_supplicant
for when GCMP is used as cipher in station mode.
Without this wpa_supplicant will be unable to connect to AP.
This is needed for wil6210 as it does not support CCMP.

Signed-off-by: Robert Marko <robimarko@gmail.com>
[remove empty default case]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/network/services/hostapd/files/hostapd.sh | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index ab86638e11..8889ee9f4c 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -1013,6 +1013,13 @@ wpa_supplicant_add_network() {
 		;;
 	esac
 
+	case "$wpa_cipher" in
+		GCMP)
+			append network_data "pairwise=GCMP" "$N$T"
+			append network_data "group=GCMP" "$N$T"
+		;;
+	esac
+
 	[ "$mode" = mesh ] || {
 		case "$wpa" in
 			1)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
