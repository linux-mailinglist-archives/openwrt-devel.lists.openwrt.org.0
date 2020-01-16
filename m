Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF99513D950
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 12:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXFUqAkvL/fbp8q6I6S9z5ceQiJm8ucchaIMnuREvwA=; b=c9BYI8sNTHLFNz
	esj5QPVf5E6NTqUGoM5THQK+89D/AZ4rNChm8b11Ncfzd/5oxHh0i9l+ShRSNB7BwJ3U2l84kSeFv
	6g7AZl9fjDfugUMg+jZWCSv0NDvOYrLz/man6asUPsBKJT5oP/jxt4D59vJvmlRBxByPuPKiyBWh4
	UdrQtaipj8toNl/ujVDsJj2OpCWbrPi1abTTX5rIc/ZrXGIsNHRypcqNmCq87kLPMxxDfESEQduc1
	3PAojK7DiUPld0fL3w7x64iQxVL/LuhsB/OXmex5JYw3MJSAmedNaaVcEh4DjMOK77DVoOZePD1RR
	onpysb2t+dlbZ+2d0FVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3gx-0007sb-Qr; Thu, 16 Jan 2020 11:52:03 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3gk-0007ql-MN
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 11:51:56 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M2wCg-1ivLTj09G8-003OOU; Thu, 16 Jan 2020 12:51:47 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 12:50:59 +0100
Message-Id: <20200116115100.1906-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
References: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Eh2inC6vXfDX0yAZPVSFZj9ko0M25n8kRwAAwbwskvyVTecWYdC
 s1Qe3HMVvXuNf9f0ktpYAEi0/CtRSu6f4o/zNhUI6Fiac/HOIZW7ERyOCWhvb27pMkiFSvQ
 lqHNjlIyK84jm1Adu3HXpZtXElmWQABOX698sqGzambiiMUlz6143OdkyVDinuUglccxbDJ
 Yfp/Ablq6ls9PLqW73wYQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ikc+5WROaQE=:LgOCdmTDjX1fAgvvF3lgUc
 DZLQNyxCESjWLE9qqcwt9rcnanryhmv0SXmTSnh/CM5xQl0RSeNaPlKpy1VSIqQHhOGsOABD/
 eJ3pH8zR7H3yh69CUf7ImB0/OIJ++Yss9408KwaBW1p9OE2/8xdtMrk0W8fr90aL290tbTnHr
 qOxOmXu9yqrhnoB9CulGM2DmBA0ccP/f1TblItTG2hXae9+bAwPsw7znyeZro6p21jYMXnaGM
 xuWuLdkLDMA9e7rT0VL9cLKgzUMqzs10Q5x3HwUY4tGUkmmN+/bNkNa12SIemjo4SaPONPDfs
 KU1IyYvLXJJwhreIAoY4yo4AUHIKUd+pdPg60Sp9C0aLyBQE11pbfg57obxlgLBbQ2uzj97rS
 dWiGu1CKr+bUdZNBk6i/VbMVb9H45J0b+RZkT7AEYIlkeu2Df5bOqhsPNpGTWENAvKPuLz0Hh
 ps5c+ol5FU+Y3AFzZAwDckXKVMZdM0zlUP93vF0u1NigOrsT1GfGBiYv3njQC+xd7SlJoe7Nd
 pMyTyxzB9s7HOP+hvTHwMWph7UOkbQ8fEba5YUQOS/UoVTBwHqRsl3Vs/h99AhImsNUoMsEoT
 o4tK6oJEIH4+qubnClpV+FE6TWdKeCCj/5/Wp8NeIAuPpnp4EPXD8ESTCRXsGrOJ0BHM0Km1G
 mdiG8UqAvdS4Oc9ok0D0Nxib1rO9rXCiHS7s2orgvKMTVsZPdf5d6tfhq154hBqJylT0Mvy6H
 HOVhl2RS7BAAIjYnEqfGIXldB2D96PMI1pXaAYJs/Ye6lBXqFpqjGWAhKc1qexFH9BIJ8svxO
 s4NDiGtyONvYiTYmP2T7so71dQmn6sccyewFM8xOZMl4ZbBWfchzxdVjYtQc6HnlYo4gjiFga
 L0CASVGz1CVJJUsh+Sp7nkHA1J9fKsC+OM+QeVrGU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_035151_019014_3CEF8E03 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 4/5] base-files: wifi: add 802.11ad
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Robert Marko <robimarko@gmail.com>

This patch adds 802.11ad support by adding 11ad hwmode identifier.
This way hostapd.sh requires no modifications as for 802.11ad only
hwmode and channel are needed as channel width is fixed to 2160MHz
and there are no HT modes.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 package/base-files/files/sbin/wifi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/base-files/files/sbin/wifi b/package/base-files/files/sbin/wifi
index a8b4451c60..e4ea496ebe 100755
--- a/package/base-files/files/sbin/wifi
+++ b/package/base-files/files/sbin/wifi
@@ -81,6 +81,7 @@ wifi_fixup_hwmode() {
 		11a) hwmode=a;;
 		11b) hwmode=b;;
 		11g) hwmode=g;;
+		11ad) hwmode=ad;;
 		11n*)
 			hwmode_11n="${hwmode##11n}"
 			case "$hwmode_11n" in
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
