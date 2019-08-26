Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7AB9C830
	for <lists+openwrt-devel@lfdr.de>; Mon, 26 Aug 2019 06:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hlleXudxuPJAOS5lROR3HGS9zSHwAPfBrkxkfaDkZdU=; b=J69vgrZDohdtMc
	xX5Z7uVglVONFprhR2FBtFZ/7MGd39moqf1w5/Fk2sB3bk4GKKokOl6qFx4HcqPC5KosrjPsFdL+W
	MCtBTd1aJ+TU1u1YAAuggapxl/+XbNAG3hlOEKr4S0EGlEG/MvXeu21QqdzqE81j4PWHOlAlmSw4o
	U5xQbtlT+i7q2fQgeQq2uJ02bfK6YBiK8aKRePP7YiGqcwrpc3LN261fminySCO2bDefUNBThi3e1
	G9DvvrYs7GUrv5PR+YtM4PUOQZTs9c72SyI1Quq76FmrXkodllDfqElwRiqXrCsPTCtYbK7vLJZ/Y
	Oa1N5yL3eRckmmwUcLoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i26Jm-00059W-TV; Mon, 26 Aug 2019 04:09:24 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i26JX-00058V-Dh
 for openwrt-devel@lists.openwrt.org; Mon, 26 Aug 2019 04:09:09 +0000
X-Originating-IP: 98.151.65.6
Received: from [192.168.0.191] (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id D46B01C0003
 for <openwrt-devel@lists.openwrt.org>; Mon, 26 Aug 2019 04:08:55 +0000 (UTC)
To: openwrt-devel@lists.openwrt.org
From: Paul Spooren <mail@aparcar.org>
Message-ID: <0d49237b-8aa8-1792-46c5-d4c360a398f0@aparcar.org>
Date: Sun, 25 Aug 2019 18:08:53 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_210907_612453_ED71DE29 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC] use Debian like release channel identifiers?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi all,

as 19.07 is *just around the corner* I was wondering if there's a better 
way of distinguishing between versions.

Right now, I see 4 different *channels* which somewhat match the Debian 
style, therefore a possible mapping:

18.06.N -> stable
19.07-rcN -> testing
19.07-SNAPSHOT -> unstable
SNAPSHOT -> experimental

This naming could allow users to choose different "upgrade" channels, 
like for Debian, Nextcloud, Firefox, etc. They could be informed about a 
new upgrades via the LuCi interface or a cron-mail-daemon-service-thing.

The tool to check for upgrades could be build on-top of a PR[0] 
introducing JSON information of versions, targets and created images.

A Luci app is currently being created[1], I'd work on some rpcd code to 
work in the background.

It's somewhat cosmetic only but also simplifies user understanding of 
what they're using - right?

Best,
Paul

[0]: https://github.com/openwrt/openwrt/pull/2192.diff
[1]: 
https://github.com/sudhanshu16/luci/commit/750c3e22c7b4f6e98363cc16813355132558b1bf


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
