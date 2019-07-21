Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 399996F1F6
	for <lists+openwrt-devel@lfdr.de>; Sun, 21 Jul 2019 07:34:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFC1gi0scL9+fZ+Q80PkArGTdeObWllYoYB4i6LbAUM=; b=NPEZWpovflQjdk
	AbU+n+wnMM3+Sauqs/O9KNfDS47haZ9GREByS25Obidv+ldOrBBUxlCIvcD8ZaK0dOuMEe0438dUl
	xEEtyupqoFvHeaIUgbKggxjXfK9qeCiTRydTVO3AQP1lVqHGDzuAZzebZxSBaa5caA+XKQKhcgvJr
	OHv/ZbEfxzXfFgMA6tGf8s6gfwx+FdKc5T0BduKu2IvVMQE57GGs/V41lMnwzDUD34Do2mJYTB5z5
	pwTuPE5LWXn1oqHlLFwRm4aZM6dXIa0GxI99zBiEY7+2yXlK+98BLwgkyKju8ltNbl8gV/9rPGC9S
	QHDDjJKIFuqsMnC99lqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hp4UR-0002ZZ-9L; Sun, 21 Jul 2019 05:34:31 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hp4UF-0002Z6-6t
 for openwrt-devel@lists.openwrt.org; Sun, 21 Jul 2019 05:34:20 +0000
Received: from p200300c5871ba600c4334eedf16ec09e.dip0.t-ipconnect.de
 ([2003:c5:871b:a600:c433:4eed:f16e:c09e]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hp4U8-0004Aj-Mq; Sun, 21 Jul 2019 07:34:12 +0200
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <88efe791-03b2-2047-d2c2-98ba06f1ee36@birger-koblitz.de>
 <006c01d53f35$69799550$3c6cbff0$@adrianschmutzler.de>
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <933c1380-f703-55a1-27f3-f868ae2a2b04@birger-koblitz.de>
Date: Sun, 21 Jul 2019 07:34:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <006c01d53f35$69799550$3c6cbff0$@adrianschmutzler.de>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1563687259;
 f03a575a; 
X-HE-SMSGID: 1hp4U8-0004Aj-Mq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_223419_400162_9AF7CA41 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Edimax RG21S
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 20.07.19 21:57, mail@adrianschmutzler.de wrote:
> Hi,
> 
> sorry, me again:
> 
>> +	model = "RG21S";
> 
> "Edimax RG21S"
Yes, of course. Will fix.


> 
>> +	keys {
>> +		compatible = "gpio-keys-polled";
>> +		poll-interval = <20>;
> 
> Interrupt-driven "gpio-keys" should be available at mt7621.
> So replace compatible and remove poll-interval.
Will do.


> 
>> +	leds {
>> +		compatible = "gpio-leds";
>> +		/* there are 4 red leds, unlabled */
> 
> There is an "e" missing in unlabeled.
> 
> Despite, recently reviewers preferred having comments like this in the commit message instead of the DTS.
> If you move it, add an empty line between the compatible and the first led.
Removed. There was already a hint in the proposed commit message.

> 
>> +&pcie0 {
>> +	wifi@0,0 {
> 
> This is what I was referring to in my other mail:
> 
> Maybe already use
> 
> +	wifi0: wifi@0,0 {
> 
> here, so I can refer to that one later.
> 
>> +&pcie1 {
>> +	wifi@0,0 {
> 
> Consider adding "wifi1:" here as discussed above.
Both done.

Cheers,
  Birger


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
