Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F87EAC72A
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Sep 2019 17:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Z5YlqwDUo2YdFGcZN627B+CEPnTUnSQ1Gh0G6xOsmM=; b=JSg4UqaUTaO1iy
	5Nw+1ItYxZFrYiVePHFpRdi+6bWifb8uK6afXPv3LqZ7pKsR8RSQBtt5zAT4iZcHIWWSCzUMYKPI7
	8i6pjCtsYC04Fl55XRVlfAF/fTvOYe8tzf+cbFT8CwwtqzOOsOYdWnN7PvVopkzr6Jv75n1sbTc3p
	HC+OCigqka+tY51T9JseY029v9AwISvzaj9a/0v3GTCM21dLhDQGQzJgpRuoiXknAp1STuKvgY0s+
	frZ25G94lOQatF40rPGJC89Rhw8ZyWKzxPabgI2P5xgb/M5h9gCcs3wP3SyI+dK1PjoDMnp4taIKU
	SdPkYDe2oLw6FzwI2k+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6cIy-0005ki-H9; Sat, 07 Sep 2019 15:07:13 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6cIm-0005iM-V9
 for openwrt-devel@lists.openwrt.org; Sat, 07 Sep 2019 15:07:02 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mw9Hm-1iP6YU1SDs-00s7HX; Sat, 07 Sep 2019 17:06:54 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Sep 2019 17:06:50 +0200
Message-Id: <20190907150651.3513-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190907150651.3513-1-freifunk@adrianschmutzler.de>
References: <20190907150651.3513-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:nAiD7T4+WTbSH7vt2yfFpofxSBBbF+fMR7wlpo5NIZLbP1AY+3J
 gO73j99eLzY2jYvZEhwe0VHqZ31D4mLpuBseJhcx8pK8yiHita3BE57RA64jg8B0DxTilWF
 aTa0OjPWtnOxCP5M812k+i3YXbWYCQbohkaTSdYKyAU55+2z9EepEU8dSmEvpxo+eGCkbH3
 ouAJccR0ait9Dk2mETkrQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6+zcQQCkZYc=:NO4UWKELGFVrVKYfGk5Lw6
 miPBjA1/AmFYx7L9B2K3/7Z1hcxeerxqcmiS+RraW7jKBm6/RhwGHOnNmCLpqOEls98R15ihr
 Wg0pVSc12TeREoM0xrZX0nrXIdPEWLGljJMmqIJaHzF7WokqerGtXcGcPzi3IO8ljJAo7iuTk
 GfY6VZWpLxDigd61GBYIRPmfR/rkZpakJeTshWeBpCl4445R+E1G+EL1weh8Hlq0vBzNzpp7O
 hWxbEdfCTW2EVn/IGrIa6FBHbUCLNQy7wtX6XsCmO3gBhEQkd1LE0Ke5KH+MY44TgugRmZQET
 zidi+EDO1CGAiuh7XdprcZ1ub6RR9BOtmz7tGzcbAPuXYGeyBCBEAk7A4VA9c73+p/ygY9oJy
 bHthMj4v8qQBQqNQ2cWdFUnhQBXsDOHYkrNBEdS+yUG1w2MqpXUBGSNDViIHWarW0SIbZ0axt
 AM1vL780uFPOwNpcoo10mQxJMcjHL04/OeqGvui00HUsOfUXOFuTyXD4i4/UXucmD7vov+z8v
 CW5NSrffehigFP6A8Luy3IPwlckPz+qqHzUJ2Gh8xcBXyyDxSeQt2aTaz6koMNc6DY8+4j2q7
 o1Kv1WoggPpaHVyhGUnvho8peiBM0TblXHIdiqRg5ZD+kujNgSHnZKjfRrU6/jIP9yMkSLAeA
 QvVr3ghwmVBM6Oa4iV+CGQ1cfyfAMeDkyvi27Brn08fVdumzdyZne+ftTW4zHgP7MwcuSRiDL
 JGtH13WYRyHLoqUIcjubfblINZdBGLC4DCmrTpje+ObZq5vcajGGeLFgglb+ATIJmy+B1Yg10
 AUiqOkAoAOmtrGg5S8gdJBsQGznJpDFGZR3W4N1rFFensNqZuGWzSQBBNPnWi2bELIESD+U
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_080701_306756_D4B30E3B 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 18.06 2/3] ramips: fix D-Link DIR-615 H1
 switch port mapping
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
Cc: Mirko Parthey <mirko.parthey@web.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Mirko Parthey <mirko.parthey@web.de>

Reuse a device-specific switch port mapping which also applies to the
D-Link DIR-615 H1.

Signed-off-by: Mirko Parthey <mirko.parthey@web.de>
[cherry-pick/rebase]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
(cherry picked from commit 555ca422d1cbc2db354c0ed03d1a79650f590859)
---
 target/linux/ramips/base-files/etc/board.d/02_network | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 7a765a9a95..01bad990a9 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -32,6 +32,7 @@ ramips_setup_interfaces()
 
 	case $board in
 	11acnas|\
+	dir-615-h1|\
 	w2914nsv2|\
 	zbt-we2026)
 		ucidef_add_switch "switch0" \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
