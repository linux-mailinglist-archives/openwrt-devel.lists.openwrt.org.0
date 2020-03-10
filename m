Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F16180419
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 17:56:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wBgwM/VbykS18LIDyGRfXIekFPo6flidqM5O4gQxa9A=; b=KA3wZQpeIvAlWS
	VrgEr9xtbU90DhVH0vBUMBia9yci4twnYDJT1RMS0vHM8BcpOMM9h2YHyhRX2eT6f0pI/jSGazlGK
	CwQBxX6KIWDsTZQoQ8GOmNeGeVowT4KDdqPyzv1yDBuIRXNDljnHSlbLgZLZD12rIj9WLJVH4Wxwl
	2aOy9xHTw1vQduXufryWYr/j/eek42aBzhdtkcZmM0YIHOUulvhz/FG45GNOvDNVyqUhNx+EXjHrv
	imb0gklJe82A6FTbMYa75xSF8WT7uElkY9OYOEvZtyT0mMzjYEiHKBatnpKX4uoD2Pwu4wqGn2+yd
	aVwkHD04536J1nO75XEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiBN-0002Oy-GO; Tue, 10 Mar 2020 16:56:41 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiBF-0002OH-Vs
 for openwrt-devel@lists.openwrt.org; Tue, 10 Mar 2020 16:56:35 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mc02T-1jl37x3STn-00daLq
 for
 <openwrt-devel@lists.openwrt.org>; Tue, 10 Mar 2020 17:56:30 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 10 Mar 2020 17:56:30 +0100
Message-ID: <013601d5f6fc$d8e3fff0$8aabffd0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AdX2/NRgkP9glG9PSxiJQ5I3P0i3RA==
X-Provags-ID: V03:K1:yNksfN5KhJtnZLAQqPb6zGCGZZScckFRF8EF2BpRjx429aHvo4I
 1UvBW8kUBchuUBK8pjvK5RDVojFEKb241Zx9U/fZVPQ7kptU4FjZmxXqDQ3m5jA7J+k2nKI
 mf22asQUyBIIJs2y3dOhnTmqW9tSwsy9xsFkO8ldRSasl5z7YKoET72+hsBZBHEp8avWEOm
 1VrdbqJIIRnenggeKALbw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xTrtwK27mFY=:oHIDzhGOo3icf4bxaDg7hv
 l0Wr4rtUrliTpD7jFSR1MBrfl/3mLabHKoaXQikkCV+RE6R+pj6guiahPSXqFgups46tQ3B7i
 YGVdBZya4Zn9VD3v2/oZ1ZxdjjhPDao5IDMnpi4ZsB8FPzY/jO78tA2NsNMGZQ5HBBUz94jjm
 54UXCl9Hy2YL0k0gspOE3qmce5SmLxfqL355zlM2fWjvTBzF7iPOaJSOXGEskrLskoGXC83/0
 P8qj6B6hNSNyrA3O1k/uMr42Tyb5738FKJBrsMYfoHU+95cTGySQvUcabzN3CZu7Kj8JTmIHt
 x+scQ6/v+TuWhM3SKkrni9JT4C3BVGR4Nn5d4yoOBpD2SVVVse85dxv+cKT6MnEgW5u1xeGzF
 zVSBoSA2kE6sRelIiRcHmWdY75Bh+dIhDI9czB6inatYtu9vR6t0EoEwbEVAUb+MH8U5yQmmy
 Q8UHPiNgcAhjecwh9S9egnyW/ZMLsGGiEyvdphcmscSV7V2oG5bTk44pessmsOEBfgD6Z+EpQ
 oc/wy8YqY8D+FZchD3y9fkHkC2FLJsX21QweoNBrAPw8h/PtxzlyP3PHmgZSlHBQB2S1hv6Ah
 gwF1njgR89ue6gTu6oEB/3WcIr6HUHRP6MW+yC/YjmGxm8rhczUALJtLJa9gIJbWJD/8A5EcY
 hQl5sDoHA1r+sYwHYjabDUKBhIATA9dNDCQcm/hhLipKtncMOMnoGgzVF2ckFQnJw5QUegDCK
 OiuNggnvlMaJdLUhOCZqN1cQGkaPFE+D3CPZ6BiCS0qak0JZh863+rSaS8wDxVhcOIkldKdWz
 +WOUsyXmgD0OXBZc/4Q1H1AykRTWIntx8Leujd96HW+IyxtCFrvbQxKWl70DJr6xMU4pGam
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_095634_323121_01418787 
X-CRM114-Status: UNSURE (   3.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Target kernel version overview
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

Since I've created it for myself anyway, this is the current state of target
kernel versions:

5.4
armvirt
kirkwood
ipq807x
malta
mpc85xx
mxs

4.19, testing 5.4
apm821xx
ath79
bcm27xx
bcm47xx
bcm53xx
imx6
ipq40xx
ipq806x
mediatek
x86

4.14, testing 5.4
octeontx
oxnas

4.19
cns3xxx
gemini
lantiq
mvebu (PR https://github.com/openwrt/openwrt/pull/2804)
octeon
omap  
sunxi (PR https://github.com/openwrt/openwrt/pull/2816)
tegra 
zynq  

4.14, testing 4.19
bcm63xx

4.14
ar71xx (to be removed)
arc770 
archs38
at91   
ath25  
layerscape
pistachio 
ramips (PR https://github.com/openwrt/openwrt/pull/2798)
rb532  
samsung
uml

Best

Adrian


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
