Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560D7184698
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 13:14:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SFbC2Ah01ASCBy5H/9dg1ia96NsPeZI+DuuMjALyQa0=; b=Vk/leILQh3ThtyRp3kjWIrdWML
	6av2Y0MMBWRBNbdt2Pkn8UpOGk7OHr+MahSN/CMgUeDvx58uAIo52uaZcla0PEt/mqSB5GGJRfQUY
	aIWr+4IyTcR77Dfdv7+jB53R1iLqbKAGLY8bz9PtoGioCvqGr8TWbGcb2Fwublj+vqAxKZDgBfO7D
	RvSr9BqiM8uTysGWtV8tYDfIU5LprfeYeI1n39VdXeGIOZe5vPH4TU3Gqw7UkeaR05yMa6l/hmNAH
	yf6UQaGLMm39ENG09OXquSIimvMNBZ2b1LhvDUCLVRoYayMIBQcPF5o11CylNIWKjHEaegn7ObMdH
	AxxikAQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjCX-00060y-E6; Fri, 13 Mar 2020 12:14:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjCN-00060e-1S
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 12:13:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C233F3636;
 Fri, 13 Mar 2020 13:13:49 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ac5e6804;
 Fri, 13 Mar 2020 13:13:36 +0100 (CET)
Date: Fri, 13 Mar 2020 13:13:36 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20200313121336.GA56199@meh.true.cz>
References: <20200313032313.383555-1-luaraneda@gmail.com>
 <20200313032313.383555-2-luaraneda@gmail.com>
 <006501d5f92f$3a268600$ae739200$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <006501d5f92f$3a268600$ae739200$@adrianschmutzler.de>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_051355_233439_31044B0B 
X-CRM114-Status: UNSURE (   4.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] zynq: copy config from kernel 4.19
 to 5.4
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
Cc: openwrt-devel@lists.openwrt.org, 'Luis Araneda' <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian Schmutzler <mail@adrianschmutzler.de> [2020-03-13 13:02:10]:

BTW, I've already accepted the series and I'm build testing/fixing it
already[1].

> I do not see a change to kernel 4.19 config in this patch and why would you
> refresh the old config before copying to the new kernel? 

Its common step to make review easier, allowing for clear config changes diff
for 4.19->5.4 in `zynq: refresh kernel 5.4 config`.

1. https://gitlab.com/ynezz/openwrt/-/jobs/470651723

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
