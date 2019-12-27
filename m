Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E73E12BB2B
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 22:12:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VoL2TTLMFkEUbSFmvtLh3u3wbwtci9TzP2hF8hud4So=; b=rDCb6v2r9PiJ0zkwctKMXn0R3
	xGQ/fBP5tTkeAL0n5bn5GqbmKh3m4d38gjV/SveEBGzYt1iZehrxXDh53lQKlwJzotzauGPIz9Ytz
	xIep0yviUStCjnYKSxViQHfYufHJ6dEXr47g8LJqic+kRNofl2VuQlLfTewIGp6fnf3itDTFFk8YM
	VQpnTR6Jb/mXZOgStIvSCqsXE/+cfkGYKMV7oPlUo162vvgBBZw+bTOxxl2soIIhgwxKq9x1ZINru
	SskzHhDxmCmTkYYNXqSzL7rG34U9Sf6OPWPY6r6uvJSfLKvN7SihnG37dG/LsO02DSY6FFGgsKLTi
	mG69YisVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikwtn-00087w-VN; Fri, 27 Dec 2019 21:11:55 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikwtd-00087e-GM
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 21:11:48 +0000
Received: from localhost ([127.0.0.1] helo=www.geroedel.de)
 by dazzle.geroedel.de with esmtp (Exim 4.89)
 (envelope-from <devel-sven@geroedel.de>) id 1ikwta-0007Y8-Jz
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 22:11:44 +0100
MIME-Version: 1.0
Date: Fri, 27 Dec 2019 22:11:42 +0100
From: devel-sven@geroedel.de
To: openwrt-devel@lists.openwrt.org
In-Reply-To: <050601d5bcf1$4b43c350$e1cb49f0$@adrianschmutzler.de>
References: <20191213195046.13358-1-devel-sven@geroedel.de>
 <050601d5bcf1$4b43c350$e1cb49f0$@adrianschmutzler.de>
Message-ID: <311866a7bd8bb4be6cbc24fae358e9ad@geroedel.de>
X-Sender: devel-sven@geroedel.de
User-Agent: Roundcube Webmail/1.2.3
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Hi Adrian, On 2019-12-27 21:07,
 mail@adrianschmutzler.de wrote:
 > > thanks for your work, but for the reasons I wrote earlier I do not >
 think this should be backported. > Just for reference: I assume you are
 referencing
 to https://github.com/openwrt/openwrt/pull/2574#issuecomment-559460188, which
 is quite the same situation. 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 127.0.0.1
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-SA-Exim-Scanned: No (on dazzle.geroedel.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_131145_695303_6ECA9403 
X-CRM114-Status: UNSURE (   1.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ath79: add support for gl-ar750
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

Hi Adrian,

On 2019-12-27 21:07, mail@adrianschmutzler.de wrote:
> 
> thanks for your work, but for the reasons I wrote earlier I do not
> think this should be backported.
> 

Just for reference: I assume you are referencing to 
https://github.com/openwrt/openwrt/pull/2574#issuecomment-559460188,
which is quite the same situation.

> 
> Please do not feel repelled by that, and continue to contribute to 
> OpenWrt!
> 

I fully understand the decision and looking forward to the 19.07 
release.

Sven

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
