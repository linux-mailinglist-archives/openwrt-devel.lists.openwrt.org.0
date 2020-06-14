Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D51B31F887C
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jun 2020 12:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=11WhZrTHUVPVbD5+h04lw9gzcPQqqIalYm18Q0FhZ+E=; b=LN4EXPC9zB2a0vGW08wA5bnr4
	hhpbRQMVUSiKYLwIotbOOuMLqbL/3ffW/cuxg6x4QMOIO2bcEReq84bMwQcWzCOAFlmm9zhsaXFrC
	eYfSdCNuOvy/7Si5TuHgEUlQrrCu5auws6gOI7hgjPlgMxG+TPLSIP4s7Mi1xnFrpywQZ2vZuCtZt
	mgmF20OO4xg3YgcOEdgpPFsCKxYQ2sYd3hJb2kAxgj0OI7NaYhq+oJ3m+VJNYsI/549Qwwg4J4Idg
	IJe+YZO+vU64SXBCzFz/ZMtxnw/M3Vq2yVNsOuUutKLViRNPNOGjHtSFgBIaMQsDYHv7VoRSWj9QT
	PitRAHHNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkQJz-0001AT-Tf; Sun, 14 Jun 2020 10:57:03 +0000
To: Joe Ayers <joe@ayerscasa.com>, openwrt-devel@lists.openwrt.org
References: <CAALvt2M_WP6N+gDARrs_OU3pAyyuaGQfb-rDk3gAyA6-+OGwwQ@mail.gmail.com>
Date: Sun, 14 Jun 2020 12:56:34 +0200
In-Reply-To: <CAALvt2M_WP6N+gDARrs_OU3pAyyuaGQfb-rDk3gAyA6-+OGwwQ@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.22977.1592132219.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "Roger Pueyo Centelles | Guifi.net via openwrt-devel"
 <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] newer mikrotik boards not booting?
Content-Type: multipart/mixed; boundary="===============5688515565399376420=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5688515565399376420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5688515565399376420==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from [2a00:1508:1000::6d45:936] (helo=smtp1.guifi.net)
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkQJs-00019V-G9
	for openwrt-devel@lists.openwrt.org; Sun, 14 Jun 2020 10:56:58 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.guifi.net (Postfix) with ESMTP id 49lBGr330Fz3vpg;
	Sun, 14 Jun 2020 12:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guifi.net; h=
	content-language:content-transfer-encoding:content-type
	:content-type:in-reply-to:mime-version:user-agent:date:date
	:message-id:from:from:references:subject:subject:received
	:received:received; s=dkim; t=1592132196; x=1593946597; bh=Mwk68
	T0lsXUOIL/QK5jylEE9nG4TxMv+7+wVKR33DM0=; b=pTnYpnzDhWITqfaATR2il
	VAwWIe8WilDxsNkeLF/E9WxaFq+t2CUqDe2kL7KMHaT2AkhSCAbUH0Ze6qtFR3fl
	yZNL+6Q8mXcizM5taVs6oRvJqT6u4pTXej40+SSQXLJSP3/zknW56w1+e2R4tz9R
	VBZoRk9kTQuYB2l3JyM6/RQqOnS6hR3NtfbmatTfBa25zP3H715UmdDYvZoRUD9B
	XR90YqaGpGEdsaMJ/uIPWkyi5+AcvgCPO+s+G3DlI+fykwQr+ice2BChp/IO5dNH
	q0GkeH7UGm4DrvlJS5gieUagTF7FcxDbeU7JT/VL4ihjVKyMq0zIwK5dkJJMjZeJ
	g==
X-Amavis-Modified: Mail body modified (using disclaimer) - smtp1.guifi.net
X-Virus-Scanned: Scrollout F1 at guifi.net
Received: from smtp1.guifi.net ([127.0.0.1])
	by localhost (smtp1.guifi.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id M4ixkS7xIfao; Sun, 14 Jun 2020 12:56:36 +0200 (CEST)
Received: from mail.guifi.net (mail.guifi.net [109.69.9.9])
	by smtp1.guifi.net (Postfix) with ESMTP id 49lBGq5XC9z3vp1;
	Sun, 14 Jun 2020 12:56:35 +0200 (CEST)
Received: from [10.1.33.6] (45-150-184-108.ipv4.at.exonet.cat [45.150.184.108])
	by mail.guifi.net (Postfix) with ESMTPSA id 5A8196A4FBB;
	Sun, 14 Jun 2020 12:56:35 +0200 (CEST)
Subject: Re: [OpenWrt-Devel] newer mikrotik boards not booting?
To: Joe Ayers <joe@ayerscasa.com>, openwrt-devel@lists.openwrt.org
References: <CAALvt2M_WP6N+gDARrs_OU3pAyyuaGQfb-rDk3gAyA6-+OGwwQ@mail.gmail.com>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Autocrypt: addr=roger.pueyo@guifi.net; keydata=
 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
Message-ID: <5b7684ce-e7f3-d6e9-7bfb-ff9f1923a63c@guifi.net>
Date: Sun, 14 Jun 2020 12:56:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAALvt2M_WP6N+gDARrs_OU3pAyyuaGQfb-rDk3gAyA6-+OGwwQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_035656_971588_3B75D84A 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS

Hi Joe,

El 13/6/20 a les 21:00, Joe Ayers ha escrit:
> Anyone else seeing this on recently purchased  Mikrotik models?
> Installing openwrt 19.07.03 on a Mikrotik LHG 5 boots, initfs and
> appears to succeed with sysupgrade.  Then the device is in an infinite
> boot loop.   It appears there's no console configured in routerboot to
> see what it is doing.  Any pointers to turn on?
Is it the same with 19.07.2 or 19.07.1? Just to make sure it's not a
regression in OpenWrt.
> Note, I'm working with another individual seeing this on a new LHG 5
> model device.  I have reproduced and tested on a newly purchased SXTsq
> 5HPnD, which has a motherboard labeled "LHG 5HPnD".   Prior SXTsq
> 5HPnD  and LHG 5HPnD models  have been working fine.

When you boot via TFTP, can you check whether the dmesg lines "Kernel
command line" are the same on older and newer devices?

> sysupgrade log:
>
> Commencing upgrade. Closing all shell sessions.
> Watchdog handover: fd=3D3
> - watchdog -
> Sending TERM to remaining processes ... crond uhttpd xinetd sh dnsmasq
> sh ntpd netifd hostapd [  146.589174] device wlan0 left promiscuouse
> [  146.593957] br-lan: port 2(wlan0) entered disabled state
> sleep sleep ubusd urngd logd rpcd
> Sending KILL to remaining processes ...
> /lib/upgrade/stage2: line 126: [-x: not found

This last line does not look good, but I can't locate it in the source
code :(

Cheers!

> Performing system upgrade...
> Unlocking firmware ...
>
> Writing from <stdin> to firmware ...
> Upgrade completed
> Rebooting system...
> umount: can't unmount /dev: Resource busy
> umount: can't unmount /tmp: Resource busy
> umount: can't unmount /: Invalid argument
> [  185.682795] Removing MTD device #1 (hard_config) with use count 1
> [  185.690133] reboot: Restarting system
>
> regards,
> Joe AE6XE
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel



--===============5688515565399376420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5688515565399376420==--
