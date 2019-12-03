Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C3310FD31
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 13:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ssx5mZnuJ7EbGF0lQyuEMFcR1ezBMrCIsnyxTBFr034=; b=unOt6z8RnPPJqJ
	jzIMCfW5okq/6+qXUOnKeKowi3fGRuCJRDlc7ohmp2BISen7sfodZiFQtPZI34JpRsj/UDt4xBUCs
	dpi913Z24A7jahhW6r0TQc+DoilWE40fJXgyoybtoRCyQmhWiqQOccmvyfcwylGjPh6+gSQ49eCU7
	0x7ZXACXVTd05MbhJDAU/TZAhqQCnRgT3yPHS3PxRMzcrTlJKW62pSjta3f66gNwIpBEg4ATEStT1
	HmY3Lka5hT0oiD5HVJaBhRKrnKl7tHWCmrMdLsE28vtYxvCLAcXyZJLVNEFyeOK5AD8seP57ntkoW
	DrATM8wk3p1fbClhzPzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6wA-0004In-Tm; Tue, 03 Dec 2019 12:05:50 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tm-00013g-Go
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 12:03:27 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 689A4449472A;
 Tue,  3 Dec 2019 13:03:18 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id CSRh4ddl69l8; Tue,  3 Dec 2019 13:03:17 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 7228B4645EDF;
 Tue,  3 Dec 2019 13:03:17 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 7228B4645EDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1575374597;
 bh=Px4+TYE+xtDQYlfxgKkW7PiB3+5LFcv55Aqaq3Onc1c=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=NKwytNhO4BTnbfMQz9+dttIVor0Jv5w79rurn/X9FL/89ewt5dwoduk4SYzeygCZn
 AIaSDlS+sUzOvBHupHCk42ChrJpMXWJqTp4/4D6HYUK5BP9KbPHjyfOoq1gOsBAW6Z
 LJC2WO+s28PpAVrP+/60Z6tMZ5UkxfBZ3yQr/YEM=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id et_l-oaiMU7i; Tue,  3 Dec 2019 13:03:17 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24::adb] (taz.sof.bg.adlevio.net
 [IPv6:2001:67c:21bc:24::adb]) (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id E0E16449472A;
 Tue,  3 Dec 2019 13:03:16 +0100 (CET)
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <2e4672f9-0fe3-b8cf-7322-df64cd552ff5@linux-ipv6.be>
Date: Tue, 3 Dec 2019 14:03:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040322_892399_3D40EFA4 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: openwrt-devel@lists.openwrt.org, pozega.tomislav@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 3/12/2019 13:54, Adrian Schmutzler wrote:
>>>> +  IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
>>> Can we reuse the IMAGE/factory.bin from Device/ubnt here? The only thing
>> missing compared to your line is append-metadata ...
>>
>> I used the same as with other ubnt-wa devices. I'm not really up to date
>> on this metadata thing. Do we normally not include it in factory images?
> I overlooked the definition for other ubnt-wa devices.
>
> I'm also not sure whether we need the append-metadata, thus I wouldn't deviate from the other ubnt-wa devices.
>
> So, either keep your version or move IMAGE/factory.bin definition from the ubnt-wa devices to parent Device/ubnt-wa as it's the same for all ubnt-wa devices.

I've addressed this and added the MAC label in my staging tree:
https://git.openwrt.org/?p=openwrt/staging/stintel.git;a=shortlog;h=refs/heads/lbe-5ac-gen2

Thanks for your review and guidance!
Stijn



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
