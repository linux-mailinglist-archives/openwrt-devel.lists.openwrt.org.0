Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E92D612F9FF
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 16:51:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/oUdDl6zMt18YftweB6nSyYTPCYkimb/UMi7TGnWBeU=; b=jxARSGt318S9BknV9Pwu/yOgcl
	zjqIRKfz+2RJNAd29hbWxmkZvqXKE6rQX/7vAL4vqiV9btYE07msqGJWztj2Wqqb2NNV0fdJFShNi
	9W12WYL+ek+txHjD3MFNnGDy+2cgBqeD5sfRJvPnSY+V6isCNEa6979Zgt9XQLkP5JiHfEKRowajE
	0ycy/5ees7xTQDG9caqBmg+7bsKvybfsEr2f/XXt6KIwfnacessj3ztlr1DsDaI/WZkWKpsq12/ce
	2KlqEUpbE8/7fZxVcVOHrDprnIj7GPA9P6C7fy4PVnIYblobk2AIKNws3+wD5t0tGhdSm43aKVjrd
	n8cRcISw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inPEL-0007XT-Kw; Fri, 03 Jan 2020 15:51:17 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inPEE-0007W2-U7
 for openwrt-devel@lists.openwrt.org; Fri, 03 Jan 2020 15:51:12 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E5ABB4CB4;
 Fri,  3 Jan 2020 16:51:07 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 1af1f842;
 Fri, 3 Jan 2020 16:50:57 +0100 (CET)
Date: Fri, 3 Jan 2020 16:50:57 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Fertser <fercerpav@gmail.com>
Message-ID: <20200103155057.GW70184@meh.true.cz>
References: <20181206152536.38850-2-jonathan@navigue.com>
 <20200103125524.GR11377@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103125524.GR11377@home.paul.comp>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_075111_122603_9F21BD2F 
X-CRM114-Status: UNSURE (   4.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Replying to old mails (Was: Re: [OpenWrt-Devel, v5,
 2/2] Allow sysupgrade restore on ER)
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Paul Fertser <fercerpav@gmail.com> [2020-01-03 15:55:24]:

> wget http://lists.infradead.org/mailman/private/openwrt-devel.mbox/openwrt-devel.mbox?username=<youremail>\&password=<yourpassword>
> 
> to retrieve full mailing list archive in mailbox format and use
> his/her favourite MUA to comfortably reply to any given mail.

Thanks a lot for sharing, didn't know about it, very useful.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
