Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A3010F3A7
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 00:58:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oAJSd+Y73IGTL8dnQ8GFUpLOcAbB+fVlKwQL8tM2n6k=; b=Gf7eJD55bUa+Zy
	ud6V8Pz7YSLlpFqQDYVSjw+hsb5CysV6vXvPmcTI5yyYqKIANsXMdQJGTezBJHndUTpTYaY46/8aU
	x7F0HcPeZPRMLHwDT0GNw5dDXNpXjVMOuYHqAL6FhjD/l2uFNyQ3LSC68vELZskQRam5i+Y7CVLH/
	X1bS83GqXp/xla/fdl9yVhnSiZ5dLWseGX52FtipQJ5a9fSuRCVyl42jygCuW31NQcKAn/gbYJ2TA
	XfMMYc24/pKQyM6ncIDesbybndjlcy6yHd5EQTX5cCTM7w4LH115SShmCwG1s1r7kMwAca3yS9har
	294FkFm7XozOSAoaxAhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibva9-0004RF-1Q; Mon, 02 Dec 2019 23:58:21 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvZz-0004Qp-LP
 for openwrt-devel@lists.openwrt.org; Mon, 02 Dec 2019 23:58:13 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 6FB074665172;
 Tue,  3 Dec 2019 00:58:07 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id elRgUnbwl5UN; Tue,  3 Dec 2019 00:58:06 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 188B14690ACD;
 Tue,  3 Dec 2019 00:58:06 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 188B14690ACD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1575331086;
 bh=lxaT6Nz+h9mNtjvzXhdtVsjgMbJA0mdLox0boHbekuA=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=UpLtHNixeAQI7neaSAnRYVmhM05zX61uhi8BNcskGUjbqWrjBZpnKy8bBQv6MtTVt
 xlM0a/BaK04Q5uBqRxjwT+W6VgWnXE9COoT0HeNS/dEn01i6hAX5ogp/3KnuvYiYEY
 Vc/7JlEpPJIqXKkQ81OnQuHaF4Mi707nLViFCvZE=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id ElBqs2ZY49Fn; Tue,  3 Dec 2019 00:58:05 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24::adb] (taz.sof.bg.adlevio.net
 [IPv6:2001:67c:21bc:24::adb]) (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 15F774665172;
 Tue,  3 Dec 2019 00:58:05 +0100 (CET)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
Date: Tue, 3 Dec 2019 01:58:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_155811_996237_D4F582B0 
X-CRM114-Status: UNSURE (   9.30  )
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
Cc: pozega.tomislav@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 3/12/2019 01:39, mail@adrianschmutzler.de wrote:
> Hi Stijn,
>
> does the device have a MAC address label or imprint on the box?
It does.
>
> [...]
>
>> +define Device/ubnt_litebeam-ac-gen2
>> +  $(Device/ubnt-wa)
>> +  DEVICE_TITLE := Ubiquiti LiteBeam AC Gen2
> DEVICE_TITLE has been replaced by DEVICE_VENDOR, DEVICE_MODEL and DEVICE_VARIANT. In your case, I'd choose:
>
> DEVICE_MODEL := LiteBeam AC
> DEVICE_VARIANT := Gen2
>
> DEVICE_VENDOR is inherited from Device/ubnt.
Updated in my staging tree.
>
>> +  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct
>> +  IMAGE_SIZE := 15744k
> IMAGE_SIZE can be dropped here, it is inherited from Device/ubnt-wa.
Updated in my staging tree.
>
>> +  IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
> Can we reuse the IMAGE/factory.bin from Device/ubnt here? The only thing missing compared to your line is append-metadata ...

I used the same as with other ubnt-wa devices. I'm not really up to date
on this metadata thing. Do we normally not include it in factory images?

Thanks,
Stijn



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
