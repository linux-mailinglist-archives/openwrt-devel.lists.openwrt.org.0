Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173651741A1
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 22:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x1W5/oMtVxcZDZQpNMQ+1CtSnq7piNAxk+UOPrpU10w=; b=aYxaiPaV/tKDISSP4Mjor8Jg3i
	UnUt5KGuYpNpu4aFZUlxhz0xyFhMoJEnKP+DecNc4CaprlFjW3Sx3No30MsuRv2zID+Ofb7XpFQKy
	392Ix4ondt15Nvr++dYPMPNUMtkREVBI2acPfimNTpr2wjBvNGY/c6I1cd5Y5l7EoO6g3lRVr0wGh
	54efo2eDH04Q441xEzZNH5VIugSJbmkWXhl2/gKtRXF/s3f1d3a3CbA+BtXD/HBpg5F8eN9+vxOLQ
	/jHyzmTE3aS741rzZ2QIvjfyRgLKIWxoS21LEjII4gFO+KvB+wcbuKb4PuykBhFvqE23UeiCi951N
	yIx53SFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7nUw-0002C4-M9; Fri, 28 Feb 2020 21:48:42 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7nUp-0002BF-4T
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 21:48:36 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 586834DB1;
 Fri, 28 Feb 2020 22:48:32 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id fac6f291;
 Fri, 28 Feb 2020 22:48:18 +0100 (CET)
Date: Fri, 28 Feb 2020 22:48:18 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200228214818.GE2524@meh.true.cz>
References: <20200215232702.2778489-1-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200215232702.2778489-1-mail@aparcar.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_134835_325332_C5799C57 
X-CRM114-Status: UNSURE (   6.98  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] build: refactor JSON info files
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

Paul Spooren <mail@aparcar.org> [2020-02-15 13:27:03]:

Hi,

> This PR refactors the JSON creation to store individual files in
> $(KDIR)/tmp and create an single overview file called `profiles.json` in
> the target dir.
> 
> As before, this creation is enabled by default only for the BUILDBOT.
> 
> To archive the previous behaviour the option JSON_INDIVIDUAL_JSON_INFO
> can be set.

Why do we need to preserve that previous behaviour?

FYI those individual files are broken[1] on some buildhosts (8C/16T, E5-2650) anyway:

 Traceback (most recent call last):
  File "/builds/ynezz/openwrt/scripts/json_add_image_info.py", line 49, in <module>
    device_info = json.load(json_file)
  File "/usr/lib/python3.5/json/__init__.py", line 268, in load
    parse_constant=parse_constant, object_pairs_hook=object_pairs_hook, **kw)
  File "/usr/lib/python3.5/json/__init__.py", line 319, in loads
    return _default_decoder.decode(s)
  File "/usr/lib/python3.5/json/decoder.py", line 342, in decode
    raise JSONDecodeError("Extra data", s, end)
 json.decoder.JSONDecodeError: Extra data: line 35 column 2 (char 823)

Would be nice to fix that and making this errors fatal so it's more visible and
can be fixed sooner then later.

> +jsonoverviewimageinfo: FORCE

nitpickbutyoucanusedashorundescoreifyouwantforsuchmultiwordtargetsormakethetargetnameshorter :)

1. https://ynezz.gitlab.io/-/openwrt/-/jobs/447337426/artifacts/logs/target/linux/install.txt

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
