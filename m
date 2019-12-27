Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D8D12B48B
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 13:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5eDqzvdF4cp1WmYAPnlO+iNggPdbV1zxFKGWvz+p8jE=; b=JlikTaK9tmeLKEA2TGaVdysNjj
	nwaQjUwGfOuar3PloaqpXNLZBwVOSrVDamGo781VZaec5gCgRuCwHks0Ja34u8f1HG4Qt/b58ESed
	ftIA7ydLPvl2PDY80gosGIWmZu8ij6FjnvOMhg06rqlFymuJiumKuiKbQSIKEX14zA3mzZLNd3GHk
	QKMoyZbVH0X4stemzZe8pbd1E/9f9q9Akp1oMIUKqumBR4U2926+WsyjoSDkIy85mWNd+6lBROk9O
	qqudYFRKp+wljDU78kK0TNQA0bNasefLJgmepo71fhOTNR7lvRqu5lKV1Yvh8b+9G31wV7Wpy6ZSw
	IpnzStng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikogt-0005TD-Ll; Fri, 27 Dec 2019 12:26:03 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikogm-0005Sf-2t
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 12:25:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5590536BB;
 Fri, 27 Dec 2019 13:25:52 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 7e0340cf;
 Fri, 27 Dec 2019 13:25:41 +0100 (CET)
Date: Fri, 27 Dec 2019 13:25:41 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <20191227122541.GC70184@meh.true.cz>
References: <6cb3b640-8590-d083-e5c2-63df74c7e86b@welho.com>
 <20191226225936.GB70184@meh.true.cz>
 <fa84e9a6-5b08-c680-b3ed-0ad1b3f00359@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa84e9a6-5b08-c680-b3ed-0ad1b3f00359@iki.fi>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_042556_279522_7160115A 
X-CRM114-Status: UNSURE (   3.84  )
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
Subject: Re: [OpenWrt-Devel] ubus and/or libubox upgrades today cause
 problems: some services do not start, logread hangs
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hannu Nyman <hannu.nyman@iki.fi> [2019-12-27 11:33:46]:

Hi,

> Hopefully you/somebody will revert the ubus changes in master until then.

can you confirm, that following fix[1] actually fixes the issues you're
seeing? Thanks.

1. https://gitlab.com/ynezz/openwrt-ubus/commit/184d756c70a3dd2cf5b21d0d5672f08091832cc1

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
