Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1852CEB0DE
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 14:09:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dG4R2Z5p2clYl+nxpRqH1UOrscRAf7OkTOH8SYhfD+g=; b=Z1G1zyDaoeQ/flvsrOlSRe1mFS
	oWo6w3ZEKX+gKGgVfoCNXo94Ht2MGsvNik66z35UVSBF13TdGSSVb0MonZeGIH7MraWD5UsT7w17c
	kGdHQ0dvvp6WLvfe+X03h9b0QvKLsKh4MCnhQJpzLSOWXYYjYlv7UdBTNHJcrXTFjcptQW1dWJQ/q
	gL5Hq1BGDeGVg/cCWZhJq2dlQcTeEtbJXJAxpmZTJM4/+ZjmkkWY8JfgFQaa1DZER3yvxb2mwg8bz
	DHzPaHhmJ9cbVtjzU1TjHQ/PHh9r54Rm45Vn3T+yBcsZ6YJIbvV51HJocRizIfKr2hiHdml7U3QLu
	Mmx6Y6eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQACr-0006YM-Cw; Thu, 31 Oct 2019 13:09:41 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQACk-0006Y4-H0
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 13:09:36 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A4727405C;
 Thu, 31 Oct 2019 14:09:31 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id bcc4d70c;
 Thu, 31 Oct 2019 14:09:21 +0100 (CET)
Date: Thu, 31 Oct 2019 14:09:21 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191031130921.GK22393@meh.true.cz>
References: <004901d58fea$537910e0$fa6b32a0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004901d58fea$537910e0$fa6b32a0$@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_060934_709316_0A2E868D 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Merge Pull Request in GitHub
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian Schmutzler <mail@adrianschmutzler.de> [2019-10-31 13:54:26]:

Hi,

welcome to the team! :-)

> does not seem to use Merge commits (which I'm glad about).

Same here.

> In case that a merge via GitHub won't be accepted at all (as it's just a
> mirror), I'd like to disable the merge button at all by the same set of
> options.

Indeed, GitHub is just a mirror, so it won't work and disabling it makes
sense.

FYI I think, that it just be default in all sub-projects, so I've added
fast-forward as the only allowed merging method to the gitweb2gitlab migration
script.

1. https://gitlab.com/openwrtorg/gitlab-evaluation/blob/master/gitweb/gitweb2gitlab.py#L77

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
