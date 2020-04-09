Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4991A349D
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Apr 2020 15:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/x1D+mXeXT6iUuF/QyNXGgt5rwzlnX+h3HxheUd/UIE=; b=VHJfUkmZt+IrKz
	MJTcO8fmJSNcQZjBVXUqix7dnp6KtC+1j/tXV5n0bwDnH117DqSbMf9l6CjFCn9ZxVj02XLvSFEXq
	yl1MyWx40SowUDTFTqj8/2WL945C2blMfh43UKxwWP3PjFn/RcWvke0xgk2BGQVJbqgmMhtxEq/+B
	1hnq6s9fYJ3TdSUhA7L4PPl8P1L3vO3NLxUbHp/+SmQ4EYvQ1nJRwdIpjO9rY3CAiWLlmpk0lYu1z
	aRoqSkCjdynIpbQuQc1OctTVEp0aX0qBuXUyu/IpT1+D4YqnCe49cdHS0aUGTRtbkifd4IBg1D9yl
	ImXKo2l6fpl+MxkL6Jag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMWu1-0003Fs-Tf; Thu, 09 Apr 2020 13:07:29 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMWtt-0003F6-UF
 for openwrt-devel@lists.openwrt.org; Thu, 09 Apr 2020 13:07:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 4B73E3A01075;
 Thu,  9 Apr 2020 15:07:18 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZzZlmzFi73DC; Thu,  9 Apr 2020 15:07:16 +0200 (CEST)
To: Chuanhong Guo <gch981213@gmail.com>
References: <20200408173210.3904236-1-t.schramm@manjaro.org>
 <20200408173210.3904236-2-t.schramm@manjaro.org>
 <CAJsYDVK22K2hG01BHX9HZtwbO+u-EKME8_jt59tdM9t2wv_eSg@mail.gmail.com>
From: Tobias Schramm <t.schramm@manjaro.org>
Message-ID: <57082633-f1ef-f443-81c9-b44016ef9f2f@manjaro.org>
Date: Thu, 9 Apr 2020 15:08:16 +0200
MIME-Version: 1.0
In-Reply-To: <CAJsYDVK22K2hG01BHX9HZtwbO+u-EKME8_jt59tdM9t2wv_eSg@mail.gmail.com>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_060722_117804_8DB0A280 
X-CRM114-Status: UNSURE (   5.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] ramips: mt7621: use higher SPI
 clock speed on Mikrotik rbm11g and rbm33g
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

>> @@ -83,8 +83,8 @@
>>         w25q128@0 {
>>                 compatible = "jedec,spi-nor";
>>                 reg = <0>;
>> -               // XXX empiric value to obtain actual 10MHz SCK at the chip
>> -               spi-max-frequency = <3125000>;
>> +               m25p,fast-read;
>> +               spi-max-frequency = <33000000>;
> 
> m25p,fast-read isn't needed until spi frequency is higher than 50MHz
> and it affects performance a bit.
> It can be removed here and below.
> 

Ah, snap. Something in the back of my mind told me m25p,fast-read was
required from 25 MHz up. I'll send a v2 with it removed


Thanks,

Tobias

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
