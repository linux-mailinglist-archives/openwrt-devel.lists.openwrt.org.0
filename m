Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1953614345A
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 00:05:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZWyCvKBtjsgXxPxyTL+krgV5E6XeoAol3J+VHifSeXo=; b=Fn9bvAZ5YLc151Rk1YtNAajhtx
	twXR5ni0gCN+DlSnSIoqaT/CwPkXr5MgaOz6Dk8F5/AN6+R7ZzQbEWTzy/M6Nszgfc7AkbY45ADkT
	PyTVGBZpv1HiRyOo49y3m7OQ2RBI0hZSSDNqkX7L6ySuM08ezd49V329erFPoPJkQpAoCEFurV/O+
	zt2RVZ31lnYL0N9G3ntWxHkZdgZwTnXWF5XmapbCGPTW3XU5VV2s9l47UfdMcZ51xouiuqg5KO76E
	wZNJ7LZ14uF2P5VRbcLj4o2bxGFsdQpdN4d1LZCb7+h7UXl9P5c55ZlVnk16vEW6wWDveWxvYiKQc
	MeS+knrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itg70-0003LC-1E; Mon, 20 Jan 2020 23:05:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itg6q-0003KZ-CU
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 23:05:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4252F3927;
 Tue, 21 Jan 2020 00:05:15 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6ea3b305;
 Tue, 21 Jan 2020 00:05:04 +0100 (CET)
Date: Tue, 21 Jan 2020 00:05:04 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: ondrej.votava@cvut.cz
Message-ID: <20200120230504.GH69327@meh.true.cz>
References: <20200120095305.18132-1-ondrej.votava@cvut.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120095305.18132-1-ondrej.votava@cvut.cz>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_150528_575348_6109003E 
X-CRM114-Status: UNSURE (   7.26  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] procd: show process's exit code
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ondrej.votava@cvut.cz <ondrej.votava@cvut.cz> [2020-01-20 10:53:05]:

Ahoj,

this comment(if it's really needed and I doubt that) should go into commit
description, self-explaining code is prefered, everybody knows how to use man
pages already or knows how to use `git blame`.

> +	/*
> +	According to man waitpid(2) exit codes might be:
> +	0 -- everything is OK
> +	SIGNALLED -- 1 - 64 - and since we want the same behavior as SHELL, we add 128

Why is having same behavior as shell desirable? Having answer to that question
in the commit description would probably help more.

> +		@see http://tldp.org/LDP/abs/html/exitcodes.html
> +	256 - 65536 -- regular exit, strip the bottom byte with WEXITSTATUS macro.
> +		@see man waitpid(2)
> +	*/
> +	in->exit_code = WIFEXITED(ret) ? WEXITSTATUS(ret) : WIFSIGNALED(ret) ? 128 + WTERMSIG(ret) : 1;

I'm having hard time reviewing this line, probably something like bellow
(untested) would work as well:

 static int process_wait_result(int status)
 {
	int ret;

	ret = WEXITSTATUS(status);
	if (WIFSIGNALED(status))
		ret = 128 + WTERMSIG(status);

	return ret;
 }

 in->exit_code = process_wait_result(ret);

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
