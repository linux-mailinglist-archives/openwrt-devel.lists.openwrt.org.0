Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76C4965F7
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 18:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2jDZvKnxGEkfMgf7R+joCsjcQOJKwy18P0ipupjT2UA=; b=Z/z5nBQm3Lw1mU2fv46fIoKqB
	9rwFMiTOajSX9ovysprfn0HfMscTjT1BJobrGqO9nCWvUo4sSFyOSI/7NuwdeGM/ByiKp0QJlDcfw
	Wne4pSNnh6UhqtyxyrLQ0j/le0T47JxM98G5+d4sLBoiMzH24jyjjE3ctbwkkovLRwNedkyMOsIMe
	rdtpHnYy9qyjQV9QtO5ILdbRkB1H6tnJ+q8nNf0tJpzai3TgI3HmdmsXuUyoHQh1clacQmKr3CLlR
	dHVsn4OXtHoL4ukiyOeWvQfJY5NgL9re69trPyDQCkSVy+ox+OarVEA9qLQg8klc8Liz9P8uhIjrO
	sdya2Fadg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06jt-0006km-Cm; Tue, 20 Aug 2019 16:12:05 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06je-0006eU-RP
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 16:11:52 +0000
Received: by mail-wr1-x42a.google.com with SMTP id j16so12987369wrr.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 09:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=QYIb5NXORd4w2ELd1eOylrxDeib+qPORcMqPpr/zTX8=;
 b=NeBJQYhLKHFW/1kcGfjXp6cBbdGZK+Ltj38PVfu4utbUWxREpFECRtOf7XY2EZuZB7
 HRyrY9ZzYT1n0VL4+/QLD9NW6dEDDRweUF3UGiQhL/ECcTTX/brfNNjcuHFWG2Mpy9BM
 tiY4tfYCymjB/4S8H6yD2rssElMQXmlDBAKbojSSNDaOw4geuvX4I/A8zp7Uf0VdLD3G
 cUyFK93DSN0i2zePbO0N/ZAS1GMneICLM+y2gqegX0HvyFGkJkYI1+X9ZKnNNmB603Zi
 NQvU0kGnZKUl9eW/6I85p9ZqcgO9ZRDgZZ0AaxLmYt+A2zTYalhKMtsPhHXH6JzZL2ZB
 dntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=QYIb5NXORd4w2ELd1eOylrxDeib+qPORcMqPpr/zTX8=;
 b=VnNpiUP+51Pex/t464SZJEo2FJHfj3xjyUSiBUCp2yDpYhB4UdoiF7lwCyzY637vP2
 QQBzUzeTQakBpnyvJQCbOpPIpK5clX4t8CB7b/wKpZgBlHxhlnzaCGxS66sWWv9P/KO2
 9iTMnoZSgi/oPTJd9ILXpkS7jRExTpxQphPEg+bOndZtoQ10yXxTUPafSLut+5udlnL1
 XsxNSED3EzIxv273qQHJn2myjNLOmbjEceADeW6gkX/vKkvSSvo2E/gbzMqJi/kwfrfT
 AD2i4TdIEMVTTshLElD8PJxExRCSG8Be7qS6Vw9VsSx7auxi2zq3Pfvf6TAPQlnm2rIp
 blrQ==
X-Gm-Message-State: APjAAAUwmAtQOQ6+TOil7tXD5mrj+80RdjqHqeOmsUe1DES+sW4rjFJn
 CthCC7RZruHn7sX3Uf6YiqciTs9P
X-Google-Smtp-Source: APXvYqyV7t479mc9RB3+nyEdnRzGWCxwkiSXNz6mmBO864gADpHq+X5jN16MQVQs6Ur8+KTWxVsHzg==
X-Received: by 2002:a5d:4108:: with SMTP id l8mr34792185wrp.113.1566317508431; 
 Tue, 20 Aug 2019 09:11:48 -0700 (PDT)
Received: from [192.168.1.230] ([134.90.239.71])
 by smtp.gmail.com with ESMTPSA id 74sm917472wma.15.2019.08.20.09.11.47
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Aug 2019 09:11:47 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <859F4E11-840B-4BDE-AA3E-0BA3FD461620@gmail.com>
 <5db7f548-9eca-d798-5a18-229259507025@ironai.com>
 <2D0AD814-FD6E-45BE-9B6E-7389ABB7DB4A@gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <5a267f43-8daf-810b-d42f-b933964857f0@gmail.com>
Date: Tue, 20 Aug 2019 18:11:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2D0AD814-FD6E-45BE-9B6E-7389ABB7DB4A@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_091150_964674_3FD60273 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Did they check security of OpenWrt?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 20/08/19 17:34, Rich Brown wrote:
> Hi Vincent,
>
> I don't know whether the article, or its underlying report from Cyber Independent Testing Lab - CITL, is a joke or not. (Although, I'll agree that any firmware using 18-year old kernels is on its face a security joke.)
>
> My questions were more about OpenWrt. How would our current builds stack up under the criteria used in the report's table? It listed:
>
> - Stack Guards
> - ASLR
> - RELRO
> - Fortify SRC
> - Non-Exec Stack
>
> And are there other security practices that we enforce that would make an OpenWrt system more secure?
>
> If OpenWrt compares favorably, it occurs to me that we could invite CITL to review OpenWrt builds (on hundreds of routers) and update their report...
>
> Thanks.
>
> Rich
>
(up-to-date) OpenWrt compares very favorably to most stock firmware 
regardless of any such features, (you could look up in the source to see if

those features are enabled or not by default in OpenWrt), as it is 
simply using modern Linux kernel and userspace vs

decade old stuff that was also hacked to work with their own 
low-code-quality proprietary drivers, running a web interface that 
allows easy

code injection.

There is no point in inviting CITL to review OpenWrt per-se as it's a 
third party firmware, most people don't even know what a firmware is,

much less installing it on a supported device.


It could make sense to have them review devices from manufacturers that 
employ modern OpenWrt as stock firmware.

Afaik that's GL.Inet mostly, maybe others.


-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
