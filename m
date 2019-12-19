Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D59A12714B
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Dec 2019 00:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K1mw0QM5rg7QZBVB8h/3sOhAKOdHejg9iWsYyKt3Kms=; b=T/G6+nelhQK08dIM7VeoMdpB4O
	+0x0pN7nSMVxe2Z6g8FILR7LM+NGCr4bE3me+hy/wUH9Dium1Sh587hQeM80IWvcbCI+JBa9IsNwC
	krbxjzpK2E5AQKNwdPYNxzMOP8ODw81NyfuIU06kzemTxxXnU4G/mXFJGXbaiB5SyHVQcfHUb+/If
	tZ8YgeLNQm9EGt2TmE+wMDBpdTZjcW6ClHoKtz1maYmwpdaq75Eh/52LJHkJE1TxO4iPcid2Fswlb
	ZlBRdNjn7Q1Dyh/8ZJwLSXQQa3uctfgpK2K2D185JrRL8s+anwbI4Ff/PY4y4TUaGbOJIB0h3mYws
	78Cb5PVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii529-0006zY-2I; Thu, 19 Dec 2019 23:16:41 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii523-0006z9-A8
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 23:16:36 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1ii51p-0003b6-Tw
 for openwrt-devel@lists.openwrt.org; Fri, 20 Dec 2019 00:16:22 +0100
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>) id 1ii51n-0003J4-OM
 for openwrt-devel@lists.openwrt.org; Fri, 20 Dec 2019 00:16:20 +0100
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Dec 2019 00:16:19 +0100
Message-ID: <5885774.H1UGKFp7n6@strike>
In-Reply-To: <20191213231028.GY11070@home.paul.comp>
References: <20191213195046.13358-1-devel-sven@geroedel.de>
 <2070834.sci2Q4oWNF@strike> <20191213231028.GY11070@home.paul.comp>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Paul, Am Samstag, 14. Dezember 2019, 00:10:28 CET schrieb
 Paul Fertser: > Also, if you're going to improve the patch, I've noticed you
 have no > DTS designations for how the LEDs are to be used (aliases for [...]
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_151635_500243_9A5F9FAF 
X-CRM114-Status: UNSURE (   2.10  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Paul,

Am Samstag, 14. Dezember 2019, 00:10:28 CET schrieb Paul Fertser:
> Also, if you're going to improve the patch, I've noticed you have no
> DTS designations for how the LEDs are to be used (aliases for led-boot
> etc) and no label_mac assignment. Not sure if that's important.

As the router is in a hidden location, I never checked the Leds ... Probably I 
should.
But at least the board is running stable for me.

Sven



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
