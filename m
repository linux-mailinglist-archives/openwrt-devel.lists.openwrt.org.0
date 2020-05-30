Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19B11E9012
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 11:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BrDRvhXZ2l+PG9l3pM8ZRMlZ6PADS8vVxkexc9ZvPyg=; b=rMmQuLP88LlNaS
	T6xEJbfZ4sbti8gY3sd2baCVKAC81BvSZo/qA1J/Xbz4KiWbO92oNNNCQ67MI/HgoYdmpyqlP0pBU
	bMDvxpO9Rid3xNvhkYFg4gFkWBuy9GICUBmoQBVU8EnNa6G1ZQ/VHEdMamhVAYccdmxG6a7TGaAWv
	WKN8cblj1qhxVCXmHnbULUOuokgSsRyevRvC1BNXYHW2lucZpExN8TwuZW15XvK/OjIkY5q3zLBFB
	DKwwcpuHunUI+xr5R877CdDzNhUOTCrg+76BvgKqO0ZHa93FGmyY82Yfx9dzNybrXLltg/0WKuqGq
	xnXQtGYWLR5lnjfRmspA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jexoP-0003sx-VU; Sat, 30 May 2020 09:29:53 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jexnn-0003G0-Sa
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 09:29:18 +0000
Received: from buildfff.adridolf.com ([188.192.133.27]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MIxFi-1jP5bz3eyw-00KNkY for <openwrt-devel@lists.openwrt.org>; Sat, 30
 May 2020 11:29:09 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 30 May 2020 11:28:13 +0200
Message-Id: <20200530092816.1610-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:MedRw7FYzvRyCGZoTfFM7ib2WiwFllDmBaQ6ylHiA5D60A7jClz
 z1eoJ+zCal+TPqcRk6X5nPHLuOsUb7wEjslxKEGDjTcVQ3IUwDJJVKZNbTT2hWJkx3/0l+M
 3tHMvI5hA2oz9taWc2k280OiEEn9jrdSSveu1HOLanBFYr50g3kM1r7GZ34lPd9aF26vkWm
 MZfCjMGYS6PCBHOYvqQww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CtDrfrZ6I18=:LndcNu1YVHyPaGDnWtNC1G
 9CfUhb2tECEIWe0qwaNuRixrNkk6F3ypVLxHvmiXZYB1r0Q2dkjNQW4eHH5vlt43tbVB0zvKD
 WN02tG1Di5rNMRgUYajJMqU579MC2mh1RidB07emcCCCXEe6xSVpnZQc6+qRjomZ85NptTO76
 EaXDjovGdsvgJm5NiF6RuxBRGkcm+rGu7bmVgYQ3ZYxXvaNxYTj7yvf5Bmewze6CObwt5Cjrt
 L4t/dghWWD0ia8k78XdmoDJYy1jqM1oOl9rnn/8WSlPhHt0wlu4uK+OIkqcerKuiiJFC6kZq5
 aYyoI1x+kuJxkBwePKkm031gkCyu19SLJMKLBIRGGqyHVBzBSRqt5lZgkEXGgzY4LKvf2TjOO
 Vr4ZDKMXZCnMhjMJms5RBYwhzgypqlofBXuwEfaeo965eJ85qA34YPXyhCmXLbab1lz/D2k7f
 5pGl+D80S4Vt8s7ebj28uSk6gL0n+qOnteAYUi+/4H81E//DRyLq0JnV/WGtNHNTZ4glQ4Ciu
 ziMJMljJnXg966J29KCh5QQ+p8NbJ7vJEdnAcXEdgOLbINQqtPNSbj1Qf6s1PI6DA3V9b4mNH
 p2PHFeK8Lqf/UjXd0rC/0LIrj3B718rf5D5MC2qtwQo+DQ+qM9aJqFVvptug4GLigDID+R7HT
 cB+M3hutorwVv+0pX+IlUwul9rWTVcnywVyuQZPuJmAlccVrYT0KpZvWGs9Cba3Aw6FQN3lHB
 h/y+gWYLPrwy7HfNQCrpQBPvNRGZXDiHNeDrsqeBEv2Ds/miqbPO3j2m6Y5Rz6YUCTOYKejit
 Tsnr7KrIZ8cAZxV8l+xW1yQsvSF367C2O47w/CgSbxeMUCgDIxUH812UDkkKeUPHPTELxzn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_022916_211587_12539D9F 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 0/3] treewide: tidy up use of DEVICE_TYPE
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

For this second patchset, I have focussed on the patches that "fix"
actual problems, and thus dropped the former 3/3 which is a conceptual
change needing further discussion/improvements.

The remainder should be fine to be merged relatively quickly.

While patches 1 and 2 are effectively unchanged, I've added Christian's
suggestion as a new third patch.

Adrian Schmutzler (3):
  treewide: drop DEVICE_TYPE when used as device variable
  treewide: provide consistent basic DEVICE_TYPE
  apm821xx: set DEVICE_TYPE to "nas" for sata subtarget

 include/target.mk                    | 3 ++-
 target/linux/apm821xx/image/Makefile | 1 -
 target/linux/apm821xx/sata/target.mk | 1 +
 target/linux/arc770/Makefile         | 2 +-
 target/linux/archs38/Makefile        | 2 +-
 target/linux/gemini/image/Makefile   | 2 --
 target/linux/kirkwood/image/Makefile | 1 -
 7 files changed, 5 insertions(+), 7 deletions(-)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
