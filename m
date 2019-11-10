Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A30F6BE0
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 00:33:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T5XLhRoV2/F2JFuF70znoR+UYHaBRCL4OK79fZzekSE=; b=jr6VaU3eMn6BMs
	oZwqoiSkgsV7TQEQuhbJdRRtRx87m2TDrvQ4rlK3a5+VPd7sF/2Cx4qLrODAXNy4EVoPif41jqE6D
	9wFUIqiEGQUJ+o244tq03zVcwZbwDB5WCsdZhLh8j2pZ8l6imBgQBkM4S/5edlcpua0wWP5Oganwc
	+HTlJKfD1eEcTINWx8YaOS1UulD+MmVuxAYnKZ46aHmjAUHIRMF7ucTnAW8FPUMV2DvI0CEg5WxYH
	/pZuEIwTzFR6DINHUzna89Ho3INyZqmCMPKqHUMEOqBSrbIixMxyrTzFTJpxWlnhgEU65IY7jjrdm
	c1lusnAim00SdrzN236w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTwhZ-0001cY-0S; Sun, 10 Nov 2019 23:33:01 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTwh2-0001Bt-7N
 for openwrt-devel@lists.openwrt.org; Sun, 10 Nov 2019 23:32:29 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MJVY8-1iACuy0xgm-00JqrQ for <openwrt-devel@lists.openwrt.org>; Mon, 11
 Nov 2019 00:32:20 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 11 Nov 2019 00:32:15 +0100
Message-Id: <20191110233217.2656-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Ofez3Lc4duuZ32zp7hA3wJZnkPX1f0ctlzHdbaeKIdaUzuX7/IF
 LoirKT21Gyykm6TaL07VxipdgI2Uev+VFCZbosoOKdS6R2U3RUQeunkIdjo672YzJyHAGCv
 sRjYX+j5IF+c76XjNpnH41A0AVPGfW7QhYGfHcevnu0jNKCVriefaC1dTs6+vcF5Wvhc6uQ
 +myLBpIdnxq2fPV/TNkhw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZKc8qFkIgpE=:bkSk0zM2P12XvRSnU/sgLN
 ShZf34rBnRMFC+p71a7TJklwIJP+6+dS/eykzCOTtaRgRcCYLiB/+GnTlEq4Z5aze/L98zG7B
 llRLN8U6NzDzXyT8vQgZBuTclRdPzzU1th/g2jfDm2jp1G+WAwoiZ//qwsnsuic/R/hszFzR8
 Q7lKJjZB7R5lLqw4FBvT09OmhNwfAeGcuhF16xdozz0072+2tfyqeXGpcrbXCpGLG+t/+Ck1d
 P8hT/4pDAzH9M8wSwEVgKPIVuuV+GRFa2q64dATFLm1xAttvMUI/f/k7SJEEFiMXq2+0rfTFW
 UIKAYOkYSmWThBdcKt1PCpEk4Y7QJOmquUzfneO8kIPXtHju6Ql0ClBUhMnstm5iSb17wvqZS
 kpbrNsR7Vd5RqPgGZ9KaWOrCWwJ59o3l4GxpqgMxcuFLLenJm1vQvnvfDLWY1HtMlDmBoPWwo
 p88kLF1tIWem7q4KEpNeHffWqYt1REzji+Xh1w/04kGN6IRJ1i9STCQG6d+CiRMr5DfkAz34z
 lIch8+5ggun6poY/WJzMCbsECtwu1SA6wqMfOdwTxatUS+zgb4TfTIqS5fyk305xOyJptYOeN
 +IpKD2ndunpEn5pYRoqU8ssLmcNPlDgX7Tw9Gyuh4S/TNRCU27o6N4WOp274x7tnzaO3sqFBw
 Xlhg4IB6R16hfNUiLrCb04gFzqaUYJtcCyQacSQ3uWWGWtC6Q3Z/IQa468sH0K/4ASxZdz3En
 nX40sYO0wkSQXWBAUOv1u5HUkN0g+F0zzIYI11cDt/1+mbi17B+JXpWoLWZ5U2Jf45Vxn3OB5
 J6k7LnnNnvDDATdXzJVD8xesbmTW5zcMcIdyqQJv4aW9JQ/SdqOOiItx+DsfnwXdhuPJwMlEs
 ga/mH5P5mIUCTUJ2UbfeZ46dlibyJR4cLPt752X3U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_153228_556202_D66F0D05 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/2] Make 02_network independent of WiFi
 setup (again)
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

This removes the calls of $(cat /sys/class/ieee80211/phyX/macaddress)
introduced into 02_network to retrieve the label MAC address. Except
for a single case, the statements can just be replaced by the source
of the MAC address which is already used for setting up Wifi itself.

This will remove a blocker for starting board.json assembly earlier.
Despite, relying on the phyX MAC address here is effectively a
race condition. There are known cases at ipq40xx where the MAC
address couldn't be retrieved already with the current code base.

Adrian Schmutzler (2):
  ramips: read label MAC address from flash instead of using phy0/phy1
  ath79: read label MAC address from flash instead of using phy0/phy1

 .../linux/ath79/generic/base-files/etc/board.d/02_network | 3 +--
 .../linux/ramips/mt7620/base-files/etc/board.d/02_network | 6 +++---
 .../linux/ramips/mt7621/base-files/etc/board.d/02_network | 8 ++++----
 .../linux/ramips/mt76x8/base-files/etc/board.d/02_network | 4 ++--
 .../linux/ramips/rt305x/base-files/etc/board.d/02_network | 7 +++++--
 5 files changed, 15 insertions(+), 13 deletions(-)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
