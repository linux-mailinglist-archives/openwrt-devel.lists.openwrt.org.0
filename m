Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F551C1F40
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 23:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C5r3xlROhI4Qwvo2ukv6XvTxmm6n6KDDINSuvtcXXso=; b=GWQfLSn1soNy7I
	UOIzSEoqUf1jPGW99HLKsd9SZaL9T5+NP3R6dwpmKV+XBfSe1KkDY9wfMoOeHMVMPlujb5oCI01yg
	OUOqcHwYZCCa1VyEptI/JR07NtXpRZ+3vpBpeZsO5KDeWZO/bqlkkbKw6G/SvoYFnr6Squ3Yo1TG/
	AmZfwltL3uH9LvKgUWCVRZmC+fxV9OJ8khhbzkA6FPfpdkyL0tUmT3cb12xPRbuZzBuoVv7yzQFBQ
	Nq7LOnvbbG5ghTWhtMubcXZGT33HTNhktQChpuZoU0GW+C1eqtpADg2PfZMUc1HGkt6ksVyjzba+e
	/N3VmoAqx+js41xma8QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUcse-0006A7-PH; Fri, 01 May 2020 21:07:32 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUcsS-00066v-GD; Fri, 01 May 2020 21:07:22 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C66BA240005;
 Fri,  1 May 2020 21:07:12 +0000 (UTC)
Message-ID: <6b2b45c20e5426dfff07953155845da6e8d74f6e.camel@aparcar.org>
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
Date: Fri, 01 May 2020 11:07:08 -1000
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_140720_810626_941DBAF4 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] Applying to Season of  Docs
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
Cc: hauke@hauke-m.de, baptiste@bitsofnetworks.org,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi all,

Google offers a program[0] to stipend people writing technical documentation for
open source projects. The stipend is possible for anyone 18+ and not living in a
US embargoed country, so unlike the Google Summer of Code project not only for
students. Successful writers get a stipend of about $6000, mentors $500, from my
understanding these stipends are at least in some parts of the world tax free.

So much about the program, question is how OpenWrt could benefit from it. 

* Some time ago there where some ideas on IRC to add development information to
OpenWrt specific tools instead of managing it in the MediaWiki. Articles from
docs/techref[1] could be updated, cleaned and ported to the project
repositories. For example, move the ubus network docs[2] directly to the netifd
repository[3] so developers can update it conveniently when adding new features.
The existing wiki would then point to an online rendered version of such docs.
Using a tool like mkdocs(.org) allows to create documentation websites based on
Markdown with minimal dependencies (Python3, pip3, venv).

* Device pages, important for users, are often very similar but still vary in
steps and formulation, increasing the work of maintaining them. Also the varying
structure complicates the user. Personally I really like the template based
LineageOS device wiki[4] as it's the same structure for every device but still
covers corner cases or important notes. Some time ago I created a proof-of-
concept which could be an inspiration for further work[5]. For prioritization a
a ranking of popular wiki pages could be used, which devices are most commonly
searched?

* The wiki offers guides on how to use the LuCI for common use cases, which is
great because it's the most likely way for basic users to interact with OpenWrt.
However this could get some extra love: Partly pictures are missing[6], pictures
are outdated[7] and/or missing from the web interface overview[8]. This could be
refreshed and put in nice overview, maybe even even create click-through videos.
There must be tools that automatically click things in UIs and make screenshots,
this could make the documentation easily future proof and translatable.
A prioritization and general collaboration could happen with the participants of
the '"simplified" interface for LuCI'[9] thread. 

I'd be happy to either be a mentor or writer. Hopefully some more people are
interested in this efforts!

A first step is the application to make OpenWrt a SoD project. If approved I can
(try to) handle the paperwork. The deadline is 4th of May, sorry for the short
notice.

Best,
Paul

[0]: https://developers.google.com/season-of-docs/
[1]: https://openwrt.org/docs/techref/start
[2]: https://openwrt.org/docs/guide-developer/ubus/network
[3]: https://git.openwrt.org/?p=project/netifd.git;a=summary
[4]: https://wiki.lineageos.org/devices/peach
[5]: https://aparcar.github.io/openwrt-devices/devices/tp-link_tl-wdr4300/
[6]: 
https://openwrt.org/docs/guide-user/network/wifi/dumbap#configuration_via_openwrt_web_interface_luci
[7]: 
https://openwrt.org/docs/guide-user/network/wifi/guestwifi/guest-wlan-webinterface
[8]: https://openwrt.org/docs/guide-user/luci/start
[9]: https://lists.infradead.org/pipermail/openwrt-adm/2020-April/001368.html


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
