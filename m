Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4C2B9992
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Sep 2019 00:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZfGeYEB8/whkKPU/VilHHdbu/nuDT5ZD9YlOxFMlsWo=; b=WylYdUgOOYWciF
	WHj40Nfx9dmxY7RvGvy24ugMucIy4mG0yKZRUwuFpa+02Ys49DufpGUe2QsQSF9CyhhSJi8MAMhTW
	36xiktb6z+s1neIbhlRMG9uxrX9VPUEvCm2JT7mT/mxHqQRohZ+Ww1r3rMP2aoJo6pSsOfd9UeKQ9
	M13j49OzKblkNtQqQIttXFWNIMvhQNIHz2CSh+sMKSsrQLLX1ZAROML2IM9vmeGa8iTefoHV6iCqS
	WybbSnZFEdlREoE0v78t9daU7HSQCigkbZGPSEa4nOUfpcrKBf3slRfkvLK2gmoEgCcb9rCkCvLd8
	QbmLLoYlJLNrtKscE0xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBRBv-0000s6-DZ; Fri, 20 Sep 2019 22:15:51 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::7])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBRBp-0000rd-Gi
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 22:15:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1569017735;
 s=strato-dkim-0002; d=heimpold.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=Kv31Gm6vfBhGc/utCmHx8p/6c365Y1ArcfgZTugvwP0=;
 b=gXUhzJ5rBgpAFSkcf2nVLUaEhf68dzwRdug5RI7ktnIl4goaRZWiRPfEFlIFAJuTvb
 dyOh4Ifn/b0Sj8PQDXYi/vXdpS8T0P2sqOVvyZcf5ROOix/abyQMDoUr5i3Ao6/8AvNc
 3F+64qhr7SvjNokE1JP2Xn6yFHmaH+Mu4NFugA2294UPvpDx1HIljiUjv6VB3TBsyRf8
 QJS9XR5EtiU3y3CIvCbYuT/LhEE+FCxZ9gPKDI5fQx/CQBsYP+Ws0UEQvcnbcSRDT8T1
 jdlS8IeWrGeP/1+YQ4H7cq/z6BToSJwFd7SCPu5caqDlLa2yx0VIFLJNqx7di5LfNMAi
 jnew==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGTOWHr182H3hRvpoYhnpc="
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr
 by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id 601202v8KMFXPxF
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sat, 21 Sep 2019 00:15:33 +0200 (CEST)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 18BEA1503EC;
 Sat, 21 Sep 2019 00:15:32 +0200 (CEST)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 21 Sep 2019 00:15:24 +0200
Message-Id: <20190920221524.14948-1-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_151546_148152_580419AD 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:7 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] brcm47xx: fix switch port labels for Asus
 WL500GP V2
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
Cc: Michael Heimpold <mhei@heimpold.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The switch port naming in LuCI does not fit the physical numbers
on the front of this device. Since this is confusing, fix it.

Signed-off-by: Michael Heimpold <mhei@heimpold.de>
---
 target/linux/brcm47xx/base-files/etc/board.d/01_network | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/target/linux/brcm47xx/base-files/etc/board.d/01_network b/target/linux/brcm47xx/base-files/etc/board.d/01_network
index 8428b43dec..6fbd76fc10 100755
--- a/target/linux/brcm47xx/base-files/etc/board.d/01_network
+++ b/target/linux/brcm47xx/base-files/etc/board.d/01_network
@@ -143,8 +143,12 @@ configure_by_model() {
 		ucidef_set_interfaces_lan_wan "eth0" "eth1"
 		;;
 
+	"Asus WL500GP V2")
+		ucidef_add_switch "switch0" \
+			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "5@eth0"
+		;;
+
 	"Asus RT-N12"* | \
-	"Asus WL500GP V2" | \
 	"Buffalo WHR-G125" | \
 	"D-Link DIR-330" | \
 	"Motorola WR850G" | \
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
