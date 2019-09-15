Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C360B3217
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Sep 2019 22:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZgDwO2EiF29SKglpuDOA1VR01NkDt09yajBvUwpEPSw=; b=kgN1T2dvwwJlIv
	oCXFpfps+HVhX9GX6gOcaUwTReqzlCB4qdRtaOSNGU2kPGNaEYm5cHdjy4RMoDzNTtwRf7qRtBqzx
	oDDEqQ7NbbrRm8ZmAR1lSvLZzZAHHpDIOzcIpDImwKfOZq4tajXBUH0ZQXiG9wrvYHYGL5DKhf3n1
	KiHKcLzTsI6FoFh7B670IsLO3JG1HEwWGs2i8N/65WIpDsZ1Ta8+kP4kJHKqdb4gblwRY1Zcztaji
	oJ1d2bKByCzrlGsiiZ0VOud98UmWld1jVhQEZgK9eM1cd8FhX/8HW9gahK7Mm/YpAYJhzxi5ju8Ei
	xCCAyWR9xJLpcvVUqy+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9bPl-0003dn-Jr; Sun, 15 Sep 2019 20:46:33 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9bPd-0003d0-EO
 for openwrt-devel@lists.openwrt.org; Sun, 15 Sep 2019 20:46:26 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <daniel@makrotopia.org>)
 id 1i9bPV-0008Ec-LQ; Sun, 15 Sep 2019 22:46:20 +0200
Date: Sun, 15 Sep 2019 22:46:15 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Ivan =?iso-8859-1?Q?H=F6rler?= <ivanhoerler@gmail.com>
Message-ID: <20190915204615.GB1338@makrotopia.org>
References: <E13870CE-5B7E-4D77-A9AB-C566D6FCA7FF@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E13870CE-5B7E-4D77-A9AB-C566D6FCA7FF@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_134625_483037_AF15E4C7 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [ramips] Linkit Smart 7688
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Ivan,

On Sun, Sep 15, 2019 at 09:28:35PM +0200, Ivan H=F6rler wrote:
> Hi
> Now after nowing how to make a PR, im interested to know how you think ab=
out some thaughts of me.
> =

> Linkit Smart 7688 has a blast of tools they offer in the original firmwar=
e bild. Compared the one openWRT offers is verry slim.
> Is that ment to be so or did nobody care until me?
> =

> Some of the Tools:
> 1. Automatic activation as Accesspoint, because the board is ment for IOT=
 and has no Ethernet port. Right now with the official OpenWRT build can no=
t be connected to any network without addtional Serial converter.

This has been a lengthy debate and if at all, then activating wifi
by default should only be done on devices without any ethernet.
LinkIt Smart is a devboard and Ethernet may well be attached, but
there are examples of consumer systems without any Ethernet port
which are useless unless wifi is enabled by default.
Most recent debate is here
https://github.com/openwrt/openwrt/pull/2408

> =

> 2. Luci WebGUI

LuCI is shipped with OpenWrt releases by default, but not in the
development snapshots.

> =

> 3. Language: Python with PIP
> =

> 4. Language: Node with NPM
> =

> 5. mraa from Intel
> =

> 6. some upm modules from Intel
> =

> What of this list wold be possible to integrate in to a official openWRT =
release without scratching rules?

All those other things are installable using 'opkg' on the running
system. Or you may use the ImageBuilder to build images with software
of your choice preinstalled.


Cheers


Daniel

> =

> Regards, Ivan H=F6rler
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
