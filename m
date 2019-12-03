Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1417E10F3D9
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 01:15:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wIAJIelzMp0oQn/B+EO9aLEGoqG7DzDKfLkdSJ2yL4=; b=R8t57NKh7w7sWY
	TfT0UlwdqYQtYnCjMuODAVr3UsbvGbEGfRn3G5IruVifETcKh/DFq3k9URjFZIRx0w5Tkb+CJPWTn
	yvMeZQo2GljN5xOhXHTRmoztrfXTvjumJQ7n/H2Tolv9Bb4k/+eDewqeVPh9n7/VVkDe4zqsfLExA
	FDq7ujjP2ksQQAZTqUi6b5BEHa0XPvK6BSeYJBiXVDzZgDWNSU2f7yysgbYjXVD55v8DeDtg6LIke
	1PKwTDiKHdoYYW7Z83r/58qJXPcquXN7Bv4VyZN/WC9+TlQ75zIOUOR7U1wP9nguTikfugw1BI+9R
	WgC0v1+59EhXAoRXf8Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvqw-0002yA-AE; Tue, 03 Dec 2019 00:15:42 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvqp-0002xV-6D
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 00:15:36 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 50C8845531DC;
 Tue,  3 Dec 2019 01:15:32 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id xH1iRuEVFkKG; Tue,  3 Dec 2019 01:15:31 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 971D94665172;
 Tue,  3 Dec 2019 01:15:31 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 971D94665172
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1575332131;
 bh=gaO7636KCNUgAqyd8T3igOPprtRo9ytEN0F11SfgYSg=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=HqpPGWOw/tajMVbJf+5vx8g56wj5SIYHTE13DF6tQoyHyzy0+8S4ziS55ovgrBR69
 zLZssnYcMW+rqBpNNh8PzxOGWNDWPtkhXi0nA3ZHYmcblIPnxkzrMC4nPYsBJzJob5
 Lxog9KYQ9GShYLdRSAJcNa8vklKYKoty1Y1b2Wgc=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id gefxp50yHgpZ; Tue,  3 Dec 2019 01:15:31 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24::adb] (taz.sof.bg.adlevio.net
 [IPv6:2001:67c:21bc:24::adb]) (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 0142B45531DC;
 Tue,  3 Dec 2019 01:15:30 +0100 (CET)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <000801d5a96d$5e3d4220$1ab7c660$@adrianschmutzler.de>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <6e48f0b6-794b-5d28-708f-f6d26204e33c@linux-ipv6.be>
Date: Tue, 3 Dec 2019 02:15:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <000801d5a96d$5e3d4220$1ab7c660$@adrianschmutzler.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_161535_529685_320EEF7F 
X-CRM114-Status: UNSURE (   8.16  )
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

On 3/12/2019 02:05, mail@adrianschmutzler.de wrote:
>> -----Original Message-----
>> From: Stijn Tintel [mailto:stijn@linux-ipv6.be]
>> Sent: Dienstag, 3. Dezember 2019 00:58
>> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
>> Cc: pozega.tomislav@gmail.com
>> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
>> LiteBeam AC Gen2
>>
>> On 3/12/2019 01:39, mail@adrianschmutzler.de wrote:
>>> Hi Stijn,
>>>
>>> does the device have a MAC address label or imprint on the box?
>> It does.
> Which one is it? (eth0, 2.4 GHz, 5 GHz) 

5 GHz. Does this need to be added somewhere? It's the MAC address of the
wireless chip on the PCIe bus. As this is not defined in DTS, I don't
know how to reference it (to set label-mac-device)?

Stijn



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
