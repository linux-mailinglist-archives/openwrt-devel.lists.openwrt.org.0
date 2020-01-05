Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B79A130AB3
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 00:14:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sxoOUtQpAYY6rMnRPP2cRS5uRUUVt4csmMbBsmCjRZw=; b=KxPV0vdJy3WZA0
	U2ZFrGOrGn6VSjOsPLjQkjUtNlCpHCENX6ys95WLJIslEdW25SZTPlFmAMvYEd66SFo+WfqFSFcbK
	oUuMK9PhQ0KBOR/AkkELzsHwku37k8ki4R9tkHmjZwsmVl3Zl8D2z+P552Q/iXl+hp+fMqqUO5g6B
	cuXU6vJ7QYw2koEFyE0fTnsaRlVkl97rnpR3ddTQji6klDQIm1kztgZfZ+ztgUmBODANBGs2KFtdZ
	xRG+88p670lNapr3HurAvNTz6T8RgKB8+h6sF+fy88oStpPCz6CAD5vOmTlIgJyzaGy6YnMF7nAdz
	3lGrHYEAgz/YvIe/SU0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioF6A-00022c-Oq; Sun, 05 Jan 2020 23:14:18 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ioF63-00021z-NC
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 23:14:14 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F3C220088F521E0FCFF43B7.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f3c:2200:88f5:21e0:fcff:43b7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 09C4B22802;
 Mon,  6 Jan 2020 00:14:07 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Jan 2020 00:13:58 +0100
Message-Id: <20200105231358.74212-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_151411_905300_26C76D3B 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] hostapd: disable ft_psk_generate_local for
 non-PSK networks
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
Cc: Martin Weinelt <martin@darmstadt.freifunk.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Without this commit, ft_psk_generate_local is enabled for non-PSK
networks by default. This breaks 802.11r for EAP networks.

Disable ft_psk_generate_local by default for non-PSK networks resolves
this misbehavior.

Reported-by: Martin Weinelt <martin@darmstadt.freifunk.net>
Signed-off-by: David Bauer <mail@david-bauer.net>
Tested-by: Martin Weinelt <martin@darmstadt.freifunk.net>
---
 package/network/services/hostapd/files/hostapd.sh | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index 4bf6a6c971..3d4e57db25 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -510,10 +510,18 @@ hostapd_set_bss_options() {
 			json_get_vars mobility_domain ft_psk_generate_local ft_over_ds reassociation_deadline
 			
 			set_default mobility_domain "$(echo "$ssid" | md5sum | head -c 4)"
-			set_default ft_psk_generate_local 1
 			set_default ft_over_ds 1
 			set_default reassociation_deadline 1000
 
+			case "$auth_type" in
+				psk|sae|psk-sae)
+					set_default ft_psk_generate_local 1
+				;;
+				*)
+					set_default ft_psk_generate_local 0
+				;;
+			esac
+
 			append bss_conf "mobility_domain=$mobility_domain" "$N"
 			append bss_conf "ft_psk_generate_local=$ft_psk_generate_local" "$N"
 			append bss_conf "ft_over_ds=$ft_over_ds" "$N"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
