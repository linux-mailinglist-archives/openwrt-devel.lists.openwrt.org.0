Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5F51447EA
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 23:51:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ijQwgUIFxEHdSWLtqoGjClUYpmW8h0l9nwFtcL4K4+0=; b=c6voLsbAMiKcjFvLExMmZorml
	vPCVKZmTOHVvAbdAlfAzPZUnzYnb1OPxCzKbjGeyl8t6sMA5vot7U42ZZdOz8DljwLAkpQY0fNdB9
	j42s2rJDShz+/YKB396SnxzDpZ7urFXIviB/e1J/nj8LVc8jrpcbI88GenZUARdQ82i+SXOo0c28V
	VyTZA6saayrXQdFsYLCseHXYrqs8PWT56IH54gG/CHkvztvSyNl1yBUHi1Eb7PIOnm3qjaq9V0cZz
	TnXNAxHvnomNoxu8QtcDYEj92+n8jwxIWPz75azl6Agud3Vw3nZ+Hfgcf4xtw4pTBxYeyLFmVHves
	/q59OnAaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu2Mb-0006Zo-OJ; Tue, 21 Jan 2020 22:51:13 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu2MU-0006ZH-7v
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 22:51:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so4820398wmj.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 14:51:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+eZvmn0FLZgcR0GI1Z0Y2Fn6gWZWNuSvj+GRRtkdpJ8=;
 b=N+3tW0CfWiexzP5aU35C4dI72GuCQI1Qbh0Yj+ncBjtYtf9Y/Kk6x07b4l9Euk6JZw
 zibElSxq+/05gc9BzFFjzbxC6bjqkPDV+KlUBZ1Zp/FAP8AtHCKmh3kLiZBbQc31v98R
 TfHwBDLbIv3YI26lQ9ioU6jEvKc2joE39fw978OsUY1ElFPHKpSwHOCYuRV2xZ8N9HQP
 360LM2zuhS5QPbX5dpyfOSRj/pjrrBIHGBi+NFrna66IBPDfniD3XcWJvvfyQ5YvwgFu
 Zk2zcxkAaWMBQd8cAgWT3B3bGRMHrCL1ftP/KKF/JwhfIc68s0sV61lSssf5TanSesde
 6tNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+eZvmn0FLZgcR0GI1Z0Y2Fn6gWZWNuSvj+GRRtkdpJ8=;
 b=AEYtY0/HB7/4sEZHvkKx912wcG6AUZRHTiB5EJp1rnXHoRVcZtrlWhHNK80E3YfP4A
 aozdeqycmW1B6vLKj/JRcJ4YC1s1RqtBaBBNGXZ7m743PzDDx7o6knFFzmlVeVm1b7+r
 WOYt9KgLVCneAaaBK5UTWrsgBqboz8V5XxzR6rZdK0+ox/NQ7TLgd29UGpxCiN6eVQIz
 ml9mWJC2v/SUaQmE+vjUQpycNvB1XLrmqDxw03cVUolZeSCdkN1dYi4/OoqQNrIP5fne
 JgJTF+ehvsb5FniFkDwCrt9ENjATLWKiwiSLnaGxUul0EZin76aExcjQ7JBQR3hiFljd
 NVLQ==
X-Gm-Message-State: APjAAAWve2lp/F6ZJ9Jtanp60N4BrLc+ZBLvBFuX2awNGiQmcMsE9MLN
 GsHOwgYUEQSU/ftmswtTIgLiaA==
X-Google-Smtp-Source: APXvYqyPbPjQDH+Y7ZnUAp7ky7w1s45Jv6nfo+vrBMrmQjRqrEWOhcq3Wa/0GAqSgb/QTcK1d9NKAA==
X-Received: by 2002:a1c:3803:: with SMTP id f3mr593625wma.134.1579647064417;
 Tue, 21 Jan 2020 14:51:04 -0800 (PST)
Received: from ?IPv6:2003:ec:2f01:5200:4490:d34c:d915:9fc2?
 (p200300EC2F0152004490D34CD9159FC2.dip0.t-ipconnect.de.
 [2003:ec:2f01:5200:4490:d34c:d915:9fc2])
 by smtp.gmail.com with ESMTPSA id g25sm1967475wmh.3.2020.01.21.14.51.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 14:51:04 -0800 (PST)
To: Bruno Pena <brunompena@gmail.com>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
 <20200121185716.GL69327@meh.true.cz>
 <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
 <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <8d6e68f8-6baa-0338-e40e-4d5f9aac37f8@kresin.me>
Date: Tue, 21 Jan 2020 23:51:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_145106_285869_95463418 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: openwrt-devel@lists.openwrt.org, Steve Brown <sbrown@ewol.com>,
 Daniel Golle <daniel@makrotopia.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

MjEvMDEvMjAyMCAyMjoxMCwgQnJ1bm8gUGVuYToKPiBIaSBldmVyeW9uZSwKPiAKPiBJIHdhcyBm
aW5hbGx5IGFibGUgdG8gcmVwbGljYXRlIHRoZSBpc3N1ZSB5b3UgYXJlIG9ic2VydmluZy4KPiAK
PiBUaGUgcHJvYmxlbSBjb21lcyBmcm9tIHRoZSBmYWN0IHRoYXQgdGhlIGtlcm5lbCBwYXJ0aXRp
b24gb24gdGhlIFRQLUxpbmsgCj4gaW1hZ2VzIGlzIG5vdCBwYWRkZWQgdG8gdGhlIHdyaXRlIGJs
b2Nrc2l6ZcKgLSB3aGljaCBjYW4gYmUgb2JzZXJ2ZWQgb24gCj4gdGhlIGRtZXNnIGZyb20gU3Rl
dmU6Cj4gCj4gWyAgICAwLjQ1MDk4N10gMHgwMDAwMDAwMDAwMDAtMHgwMDAwMDAxYTM5ZWEgOiAi
a2VybmVsIgo+IFsgICAgMC40NTY3NzJdIDB4MDAwMDAwMWEzOWVhLTB4MDAwMDAwZWMwMDAwIDog
InJvb3RmcyIKClsuLi5dCgogPiBXb3VsZCBhbnkgb2YgeW91IGJlIHdpbGxpbmcgdG8gc3BlbmQg
c29tZSB0aW1lIHRlc3RpbmcgdGhpcyBjaGFuZ2Ugb24KID4geW91ciBUUC1MaW5rPwoKSGV5IEJy
dW5vLAoKd2hhdCB5b3Ugc2VlIGhlcmUsIGlzIHByZXR0eSBtdWNoIE9wZW5XcnQgc3RhbmRhcmQu
IEl0J3MgZG9uZSB0aGlzIHdheSAKdG8gbm90IHdhc3RlIGFueSBmbGFzaCBzcGFjZS4KCklmIHdl
IHdvdWxkIHBhZCB0aGUga2VybmVsIHRvIHRoZSBlcmFzZSBibG9jayBib3VuZGFyeSwgd2Ugd291
bGQgbG9zZSAKZmxhc2ggc3BhY2UsIHdoaWNoIGNhbid0IGJlIHVzZWQgZm9yIHRoZSByb290ZnMu
IENvbnNpZGVyaW5nIHRoZSAweDEwMDAwIApieXRlcyBFQiBzaXplIGZvciB0aGUgVFAtTGluayBk
ZXZpY2UsIHdlIHdvdWxkIGxvb3NlIDY0IEtCeXRlIGluIHdvcnN0IGNhc2UuCgpNYXRoaWFzCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
