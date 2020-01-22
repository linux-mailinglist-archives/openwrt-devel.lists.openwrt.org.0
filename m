Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82C2144FC9
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 10:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FF7pWVjqPFGSS4Dcven8DD1dktTIdt+QKeyXdptVfx0=; b=M7SVpHTAAzJN3S
	Y50gA6s1yM8TrEsxDEG7ODPTP++2m2wm2CWCEvKRM+Kh0uLKHG7oGKVt3qw7i6xJDyWGilR0tEMjN
	141U+zNvyEAvO3xwVK6UyLU6zKHejtU/6Ukz0dQHMuFSoWtma8gDxlzAuqEi3a82MGhbmN3smGcBA
	aUGoVqzEkNh8IoOMfuxXQBqpqpsXptHt3xiPbWzuHf0XIdkXlTBpbiyTHGnswPc9WDpvM3kPnuNN5
	7vOdeB+E9uiGEtH0JyqyQAk1y+cSERC6GPuV287/BvOSLx6MB5jXo75jsI2BFRFm9m3/+nn/oYy7u
	aKXOtAGlfMP16sptNp5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuCVb-0003vl-Ef; Wed, 22 Jan 2020 09:41:11 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuCVQ-0003ud-AL
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 09:41:05 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iuCVM-0006X1-9k; Wed, 22 Jan 2020 10:40:56 +0100
Date: Wed, 22 Jan 2020 11:40:51 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Bruno Pena <brunompena@gmail.com>
Message-ID: <20200122094051.GC1406@makrotopia.org>
References: <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
 <20200121185716.GL69327@meh.true.cz>
 <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
 <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
 <989a2a224ceac0368c713ecc537af005eb45f035.camel@ewol.com>
 <CADwgkMXLgcnJ0_KBCto+oS3o4PpQeQThH7qp=DwE0JWYAoz7eQ@mail.gmail.com>
 <CADwgkMXf2q3uuyTFrce2NL_Z3EGVW8OC9tVeh6MRxdiAMu7CvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADwgkMXf2q3uuyTFrce2NL_Z3EGVW8OC9tVeh6MRxdiAMu7CvQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_014103_266992_49783426 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] fstools: Add support to read-only
 MTD partitions (eg. recovery images)
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
Cc: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, Steve Brown <sbrown@ewol.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Bruno,

On Wed, Jan 22, 2020 at 10:22:01AM +0100, Bruno Pena wrote:
> I would also like to take the opportunity to ask if it's worth pursuing
> this patch if it means that all devices (using mtd) will require their
> partitions to be padded to the blocksize?

Please try not to introduce that padding, it's quite a big impact on
all devices while only very few (wifi-only device) really need that
change. Instead of wasting flash space by additional padding I'd rather
want to see an OpenWrt-specific kernel-patch to allow a rw subpartition
sitting inside an ro partition or just flatten the mtd partitioning.
What I mean by flatteing is this:

yout current approach:
+-----------------------------+
|          firmware           |
+--------+--------------------+ 
|        $       rootfs       |
| kernel +------+-------------+
|        $ rom  | rootfs_data |
+--------+------+-------------+

here rootfs_data inherigs the read-only from rootfs not being block-
aligned. a better/flat approach would be:
+-----------------------------+
|          firmware           |
+--------+------+-------------+ 
| kernel $ rom  | rootfs_data |
+--------+------+-------------+

Now this would require major changes to our mtd-splitting subsystem
which is quite a big amount of work...


Cheers


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
