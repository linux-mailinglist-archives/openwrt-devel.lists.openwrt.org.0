Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC8417BAA8
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 11:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:
	Message-ID:To:From:Date:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JLzFtHHOHiH81miFn0Slq7ZsBnMCMnmceB3Ezy19dl0=; b=uHY
	EFGF6gkCbZfa8XdCW4gNqdw7B/LHOw5slQ596CLo3eqyEKeDBXNmBcWFDLr3DpGXqc/HQpmWYn60b
	uAn2k1LfpmhnQ+iOwkcwET3JsmPqId2JAO5zfkb916jf/PuMoRU0tJi8vC0Q+Pfm5RHQS15T9ypMx
	1QG1z6j7XQ0lEoyEDG3NrQuedjdqwUhNOlC5bGyK8CdOpGwYj3RaUytcWhCMMBLt0IFnFJzupbxix
	ibj/SI+arVPQZ+MchLWXGs2xzGFlRmJ/n7PMvEtFX2gTgHbIs6XXp1sUbp+CfrmV1x30qqMuLAXwu
	Z5UCDks8ZJIVpMuDJuxIbLHN3YtAG/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAARg-0004TY-MA; Fri, 06 Mar 2020 10:43:08 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAARE-0004Bt-UG
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 10:42:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 48F7A3E48;
 Fri,  6 Mar 2020 11:42:31 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b9f5618a;
 Fri, 6 Mar 2020 11:42:17 +0100 (CET)
Date: Fri, 6 Mar 2020 11:42:17 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Michael Jones <mike@meshplusplus.com>
Message-ID: <20200306104217.GE86312@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_024241_157219_E7A58E06 
X-CRM114-Status: UNSURE (   4.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: [OpenWrt-Devel] CI testing of rpcd project [Was: Re: [PATCH] rpcd:
 fix respawn settings]
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Michael Jones <mike@meshplusplus.com> [2020-03-05 14:00:29]:

> How can I help?

You can for example continue[1] adding CI support to rpcd (or any other C
projects), which means fixing all issues found by the static code analyzer[2].
Next step is runtime testing, to assure, that rpcd is working and producing
expected results, somehow make automaticaly sure on CI, that next steps wont
introduce regressions.

Then for the start I would probably try to identify important parts (auth,
session handling?) and refactor the code so some unit testing would be
possible, then I would start adding fuzzing as well.

It's in short the bare minimum of what I've done with libubox/ubus so far,
where you can take a look for some examples of unit tests and fuzzing, it's in
`tests` directory.

You can find small details about the CI in my "OpenWrt GitLab CI details"[3]
email.

IMHO uhttpd[4] should be preferably tackled first, rpcd is down the stack.

> Tools like https://klee.github.io/ can get you so close to 100% certainty
> that it's effectively 100%.

If I read it correctly, KLEE can generate inputs which would cover all code
paths, thus having 100% code test coverage, which doesn't mean 100% secure
software. Achieving 100% test coverage on rpcd isn't low hanging fruit as
well.

1. https://gitlab.com/ynezz/openwrt-rpcd/-/commits/wip/
2. https://ynezz.gitlab.io/-/openwrt-rpcd/-/jobs/461909741/artifacts/build/scan/2020-03-06-092943-106-1/index.html
3. http://lists.infradead.org/pipermail/openwrt-devel/2019-December/020831.html
4. https://gitlab.com/ynezz/openwrt-uhttpd/-/commits/wip/

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
