Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA0CCEAC8
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 19:38:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=joh7v6suN+NFfEa5DpIwNGwvZX05hAPBKrHMw18aHjI=; b=nestekqdVr2deq
	2PhJz65qekTfF9oIFzfKHMEpNsWmmM9O5HABrI/hDKZyrgMtx14WXTjREMt1WWN+FDQTn9KlCPJ5f
	b94zZt5Vls0ZOBDdGJSiTs5Utqh0rOTPqeg0j6gkFpeofkUjEbDb6ct+w5xzLuF9u4Oa5SXplBgEz
	IXg06JCFC83smz0A5hdK2CKdiTHtOWfbOeEEDWf/AWBNz8s9lZNKHDlbcR4fbWJHtvy81WB9GeqbE
	rTB2KLEoOB+nlJO5GvfyHB+NpFNddPOn2ptBOeZ8831jMBzFaPFWUFeMTODCdQe3q6xmhWhh2aUVu
	voOYuwfKJFgKdaNSYZgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWxy-0008D4-Eg; Mon, 07 Oct 2019 17:38:38 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWxs-0008Cf-9a
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 17:38:33 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N2V8T-1i6qBG47GJ-013ufl for <openwrt-devel@lists.openwrt.org>; Mon, 07
 Oct 2019 19:38:30 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 19:38:27 +0200
Message-Id: <20191007173827.63607-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Gd3HQGmypD8TdBbYyYy4yVnQhOrtW65cnD6gF7OL50t+X3G8XWR
 rOZjfVQONtIVEudalZYWBrQtOnamT9uo6f1Ym6y8NgUE1tq+xY73nbf7P6ap5QvvMxX/abC
 Q+Q1uE6jnLG5OEzdL+Mnfq4vDWpAP96JZRAdhYE2KvMOj4GH1c8W+xGDifjEbaIuKZC7TBP
 UlzW2aJt+y5UpmBAMa6QQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QTGjjBd3I/o=:oINM7/vZ5iU4ngpbFWn064
 hGkvT1Oys6UFq4EyiiPYThbCjOI3gzaDzYUPgHOIvSueg8gGndc/VhSmKE9QZS7C6dw1fO2KT
 TM36ybnVwOv7wE6kHKvnfszf7cnbxA1ELxjrz7/tZzdATmQwJdQnNh4/Jeaz0pdtvgfnuyubx
 OItC8zwIx+T6ZiqHQoqJqPqoyazw32itIafHmcgKbNWf7bJH03EkfMAyxHeKJEjyyh9Dn/qGq
 UQiFf+MZA5tEyGOVRaretlcG89/em9RX5DVJyBlWl2ZXaegi55zVi3nxmQ6Vv9pZZO+6bqxXn
 Qioc5dxk+XwRKjeKjocK6VqfTYvBRaIz3iYZvwMU5PH94G6zh6H8lQcW+1qat7RnGiHooAIRU
 eGj75C5xdNbfVg3nHJj2cYVccZI8y753+u85l5UfZjQti8EdoCvkBLR0IKBZ63h6WqrwkTcpH
 GDZmS0dEROjF9HWCpNacwrp8eEJ5OoJkEtZRitYn20HDjCNxI4i7ZnpZSS49nN236czdJs5Qz
 7IlFgWprozRxYmqT4nTPmXXPVgNRbLfuqzUsxE9w7uBC7kaXeREDa/dPH312wj7qmzUTjSACd
 ch4OmNmNcrVwQv8QIFqCwlkANmAY/amsttsBtFrOh/KEXSsuMeU3thBnQZOA8HhFG/HP59AuB
 Hn0wOkswp1Mc0fpDkRQ/l04jpa8jVnKzBaR+YwT/XzFCrBUiT+bVJzFI8ql9dvypDwcPF1lgZ
 vtJquvUjT4G5Beyl+YIXYz2iuBJLrNdB7nje8+CEyRUY/357TmTpn2Ve9jibw5wEby7ywETkP
 FWdL0fGb6ONH8Ce6ft/zpSYfJ8xamSJ6/Fu6mX3xAg9eEji4Ob8uwQ2pk9HYHrMHYKHzjHY0b
 /HSJYLYMTnAdM432pEUdpOY69+JiJhwnnfHha7kFk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_103832_630936_8658E816 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: add label MAC address for Netgear
 EX6150v2
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

The device bears two MAC addresses ("MAC 1" and "MAC 2") that
correspond to phy0 and phy1.

The ethernet MAC address (gmac0) is the same as phy0.
As this one is accessible via local-mac-address in gmac0, the
latter is used for label-mac-device.

(Although this is a one-port, gmac1 also has a local-mac-address
assigned. This has the same vendor part as the other addresses,
but completely different data for the device part.)

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex6150v2.dts    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex6150v2.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex6150v2.dts
index f1c44c1ae8..9724894e7f 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex6150v2.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex6150v2.dts
@@ -22,6 +22,10 @@
 / {
 	model = "Netgear EX6150v2";
 	compatible = "netgear,ex6150v2";
+
+	aliases {
+		label-mac-device = &gmac0;
+	};
 };
 
 &wifi0 {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
