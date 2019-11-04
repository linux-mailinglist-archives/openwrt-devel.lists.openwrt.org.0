Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E68BEF142
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 00:40:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nU1ifYuC7wXFEFjO6vj0Of0fxoDhoH8eSSPO3HNB4JM=; b=UQv78tSs9AXObJ
	a7UC1Jql3tVtykei3iPjdvp+pQRH9hOQIw3M9gwIynaXtctVI9WXvD0zQLC/n54OgzkWMS+9oiVGl
	hJxwM5VWaXiS2ILyviPSs1k7Ok30SIT3MmtqItPQ7alHsoM40fGFT4VsyeAFe28qUsJYgUsBC/kT4
	aDnV2eIG9Yjo9G1NsAOM6e8eMccIt4Nreh6nBlJgRpyr1VSoNA524Nzc/J9Y3nCT2BWq85W8MuDjG
	j4l1irUbY3A5kvScIcJUt83Cfe7nFUTVSCpu8Cdv8Hha1aZiehKBsycmtO6IB1fBN+hUEsqpyRc+B
	+OpmKbI2ZyikstR972oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRlxa-0006ye-7r; Mon, 04 Nov 2019 23:40:34 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRlwv-0005ID-Fi
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 23:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1572910790;
 s=strato-dkim-0002; d=heimpold.de;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=S9nufX6guwKnHwgdx3MYaKb9Lp2a6OHi8Cgy9Fep8fo=;
 b=AjpXP+ZaxFD/VP8UYUrP3t7TVDwrDT+svBo1HJjbrer1X26TfVrDLnelnUHXwGXDB4
 wmYispoz3qQpKmGg6MX+T7TqxxWiYIFlKGXgpZgQS/JDS+JtvRLEZfNnXDQVJvs8E5Bg
 5dtHuCsnxs694E4fWodEIcQMyQsLbOeMSyuwx3yBctI+mYzn751+rECkSkxjgxjF6jIo
 6N7ZBVhkkxvmIlCdD/EFIlyx4y/QII4Kvl3rbhddgAq6OzcR/1kO9CBtF+zvPwkJwq23
 H6vFvt/51FUIP4Fbx548YHElIY3OMYGHtp4ROIVgR+DyCdNsc3tepI2edfJTHVDuKA8o
 eESw==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGbO3oK8Gj1qr/lquvq"
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr
 by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id c008fcvA4NdoYtp
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 5 Nov 2019 00:39:50 +0100 (CET)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 916B615273F;
 Tue,  5 Nov 2019 00:39:49 +0100 (CET)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 00:39:42 +0100
Message-Id: <20191104233942.23783-4-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104233942.23783-1-mhei@heimpold.de>
References: <20191104233942.23783-1-mhei@heimpold.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_153954_133522_596326FF 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:7 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 3/3] mxs: start a console on USB gadget
 serial ports
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

The I2SE Duckbill devices are pen-drive like and thus the usage
of the USB gadget subsystem is highly indicated.

Spawning a console if a serial gadget is configured saves
us from connecting a physical debug uart.

On Olimex OLinuXino Maxi/Mini boards, this does not hurt.

Signed-off-by: Michael Heimpold <mhei@heimpold.de>
---
 target/linux/mxs/base-files/etc/inittab | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/mxs/base-files/etc/inittab b/target/linux/mxs/base-files/etc/inittab
index 9820e7144b..253036402d 100644
--- a/target/linux/mxs/base-files/etc/inittab
+++ b/target/linux/mxs/base-files/etc/inittab
@@ -1,3 +1,4 @@
 ::sysinit:/etc/init.d/rcS S boot
 ::shutdown:/etc/init.d/rcS K shutdown
 ::askconsole:/usr/libexec/login.sh
+ttyGS0::askfirst:/usr/libexec/login.sh
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
