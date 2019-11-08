Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B9BF49B6
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 13:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7gn63RnBbp7qEpZe5kDya6S/2Kcp32voxSVCtNGNRQ8=; b=rX4K9vmBj12DwH
	gXPiD3XwroOmOKfZkC8FyHuIYOMgecrOiwriPN5wpHh4BLG4I5hDqTm9zYBrANxVCepq2PHgmQoY9
	C+rPfXfNqHi3JBZBNZ9V6b0WfJJM58CBZ9HjXuhzY3NrLoSfUpXqAw5/lmCKjIqJkA+S8tBd+pK29
	8S/TORZvBt2pKVIRhTLawwKelXrhysYbbfWdH4ZExY5X3bJcmYW2d76Nm9ROQs1FjF2tsF0lK4Ju8
	NR64oFe3lYrVPm5UHnSuN6PUUFnLFrZ+0ly9rQ+/UPuM4xzpT6PoBY+2SpcBhtl8sg1zZy7ClAJ+S
	qDDTTLGFumX40Ur4I+Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT31Q-0007j3-5k; Fri, 08 Nov 2019 12:05:48 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT315-0007XF-Jq
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 12:05:29 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MC2o9-1ichfU2Grd-00CT70 for <openwrt-devel@lists.openwrt.org>; Fri, 08
 Nov 2019 13:05:25 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 13:05:19 +0100
Message-Id: <20191108120520.1966-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Zpc2H6TBezcmTpOsNcptu8pKT9ys9lwySui2Mqu5Q2D63gV9jXq
 Uf7yk4xaEaDh884qcWg2Muz6AlKfawqsajIVTwjT0SdIAsWnLDMUKKetxgr7p3argzxTFbP
 mwkMXDKttZL1+nTei53wgcDGyvITMd4i2zwlVRhrw5nue10eXVk+2sdyOwICM/6lZsJUlA6
 VHLyl3i+udjUV1oP4RJMg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TQHn8lHxW+8=:fDMoQM6aE6WC5B66TBv4XB
 aYqZJL/oKPHMNXg4OGpNnleh3v0NE4iInsYz+gYHn7sdzQYL4PiFyAXMzd0lB5DD0wYBExDI7
 hVIrL/8y+Ek6/CvCXJjZmo3WUW61W1tnMpgEgEtaOmGsWgUWxs1Sz66WTlWU9nNODiTkLRaVr
 23j71OpDTTpE35IMcSiD7up4VjJylNinDU6A9I2RzIm9qEQsDcdrWyMUHKdy1Fioh2pSqyElN
 958LJaYnhvfh2uBtqjLIZYWTEvzlq6eFfSf4CUn0OriwMFRcwtqaOI+EHLVlbMrhc1awK90Lq
 w3khnidIhBw0xYgAwpk2KJj10l1zLD157NWx3jcn0XWecwexlAgUhujP/ZKywD7/1IxCU3PVZ
 o7CopSGKQi5vyb3VyrdBvPe+9ksPnJ3fWrpT51EVInRg2h1rkDIrnjV6C46H5RQlnB4tCdGDc
 mtkSqR0XLKVglEwk2fqukJw2A9U9CjW/VsY1C2Cwz/5d8sG0Z89b+zTMXMcWuTOXadf99QNh7
 jqFO0p9eXamOemDEpi8DylAGFQa69Ks1LCwOj1nHDCZlht/Qu4ba6qEQzgHiQsnBxsiXrm13D
 GTmSthIfnSEeHiwzp+L7T0GjeFg6BlWT7NHt0u64lGbtFz5rr73a8s/vgmosMTviHzApWtik4
 DYcZmf5UVe9k2l/3OsraY2nNfnpPmCUXHKXQDMuHl042pXG5HoB3POwViJRwNuVnu8URkbj8b
 m/mxBQVNyry/2AJBDSIA/PJeL/hBsgd3xfJZH9WNmydJRUWyNLWxM13Y+qXLh/sMgzmIbZ7PU
 pR06Vb+OL7r3NUH3h8MQ0EpXWvnuHLjeiHA9xA6/aq7kEIJmekEbl9aQ0Yv6/NCasmd8Vs4pK
 8fJmp2fBRvyraXiv6wMx4dWEqBeCJLfSyg0UQdfb0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_040528_464440_0029F92C 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] base-files: indicate initial setup by
 uci system config option
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This provides a uci system config setting that will be set only
during initial setup. This can be used by uci-defaults script to
determine whether they are run during initial setup or after a
sysupgrade.

Since the setting is removed again after uci-defaults have been
processed, it won't be recognized by the user on the running device,
but can be exploited also for downstream setup tasks.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/files/bin/config_generate                  | 1 +
 .../base-files/files/etc/uci-defaults/90_end-initial-setup    | 4 ++++
 2 files changed, 5 insertions(+)
 create mode 100644 package/base-files/files/etc/uci-defaults/90_end-initial-setup

diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
index b473eba9e9..273561229a 100755
--- a/package/base-files/files/bin/config_generate
+++ b/package/base-files/files/bin/config_generate
@@ -243,6 +243,7 @@ generate_static_system() {
 		set system.@system[-1].ttylogin='0'
 		set system.@system[-1].log_size='64'
 		set system.@system[-1].urandom_seed='0'
+		set system.@system[-1].initial_setup='1'
 
 		delete system.ntp
 		set system.ntp='timeserver'
diff --git a/package/base-files/files/etc/uci-defaults/90_end-initial-setup b/package/base-files/files/etc/uci-defaults/90_end-initial-setup
new file mode 100644
index 0000000000..779d858d5f
--- /dev/null
+++ b/package/base-files/files/etc/uci-defaults/90_end-initial-setup
@@ -0,0 +1,4 @@
+uci -q delete system.@system[0].initial_setup
+uci commit system
+
+exit 0
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
