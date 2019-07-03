Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9F65E0E7
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 11:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ic4J9Fi2KLDWGUA3/ruxvN6p3x+NWpheZdvDgmoyTTo=; b=cuMVP5weCakd5A425TE5ixJOR
	7CTSHHqbKoC1men/CbO/iB6DNV5LhH4BIJIixlvza1gFI2swHPhxntv011jdXG+ejtQ9SmPuDAVEN
	fvDvPApdG2WxTzZ7cq8R2C2GcKtNgtozvM65P8HGPoeAS9OjpHcab1b2t9BwelnoKilcx7uDSfjGO
	qGvqk05t0l5IWimuZpj/wIl+5vkXAfKQ6pHM8YaDGk30ksIwT9lJXL8gkRKkQHksO1ZPmbniPbtTv
	EPqifWgXX4YNAJugfPFDLdPu5PQKJ3f+dklrSBlYc/yHKCjwXQVwM+KiEAx/n/2f2fTZ7Z3ruPjqU
	kr+Cdl6fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hibRY-0006wi-2n; Wed, 03 Jul 2019 09:20:48 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hibRM-0006w9-Tx
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 09:20:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id u18so1932074wru.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jul 2019 02:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1IDLQce7tSEw9nCkmaKeLgziFUmGfJwWSL0/IewVtts=;
 b=PSqvEAA9SHplkXourjxyT0V7wjpgYagt+yZnJ+Tno7y13fI1/3pPsApe6ywXGBBPjB
 JtG3QSQTUnmDBZcyXgWTsoTMw+BCik33TOOw/66EVHILCOtGNyGm95xlvWajGB+2I8YU
 8CpKezyUnKTPPZ47oxZJr+Gs/WHz74WJvj3cBV0H7h4uzW/5b8A6/nACkQyu6dF3NK0I
 H+fGxhrpUWPUYLYTIfJm9jt7Ew52wxNqrNk5qABh2rkdHJit6deekg5E2vwVVHYS8WFg
 /sXL26jjZrh6B1mWBWy9kAGuffrIURd0uu7psBYgPsmEqNGfU9QwadzaTuxmCEFTbALn
 sdOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1IDLQce7tSEw9nCkmaKeLgziFUmGfJwWSL0/IewVtts=;
 b=RcLVx1ME0yYdt1INe6xuDpfch/HgwS15GbVJMemjcrgnHtHJt+1JbcahQQJeD7Re15
 lBZxMcPwh6m+rLMmgGQB+BaVD5lplmnqG8qEcqhIOv9QqJ5HY3LodPXPSDnD7J2GGhMd
 bKiqttlXlqbULg0MQWciQNbI51tUiQ8mB5PoAWvxVi8gyYGiddqY7ocZgXvIZzSoaepg
 V1taFz3iyoq+6OAxLI0mv0MlmLnTHOQFqEiSce0SOROFztStg/ceUXuXn1G92yXA406B
 6fvZZF6VrciHsAhyRoZN9W0dbHwMfb/N1MLLpEkcopXuXk1rv2NT/Bal1vz7v6qLa87a
 w2dQ==
X-Gm-Message-State: APjAAAXYwStr4N7/4PBTaGuaRNYNQr2KmrIb+AT59oJR9atS7FIMAtID
 dGWCB+ndjbLzQ1nDqzzrZWFFbQ==
X-Google-Smtp-Source: APXvYqzuY3a5MclRug8FmJ+fhsOqlQFekP/uRz/0Toiou5asYhmh/lZgNJCosBddjiFHqQigEdjSQw==
X-Received: by 2002:a5d:438f:: with SMTP id i15mr22847468wrq.37.1562145633295; 
 Wed, 03 Jul 2019 02:20:33 -0700 (PDT)
Received: from ?IPv6:2003:ec:2f27:4000:3133:3430:252e:f25a?
 (p200300EC2F27400031333430252EF25A.dip0.t-ipconnect.de.
 [2003:ec:2f27:4000:3133:3430:252e:f25a])
 by smtp.gmail.com with ESMTPSA id f12sm2547075wrg.5.2019.07.03.02.20.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 02:20:32 -0700 (PDT)
To: Kristian Evensen <kristian.evensen@gmail.com>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
References: <20190623092448.27880-1-kristian.evensen@gmail.com>
 <20190623092448.27880-2-kristian.evensen@gmail.com>
 <CACna6rzJXFTuwxAJgou=R9jcY9OR3MRmxqEoZaSSyjqdTYDbHw@mail.gmail.com>
 <CAKfDRXiNiRKvhfQ4SzREh95nHDnMxo9BqLKvTJfbi-faUPy7QA@mail.gmail.com>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <6a0c5559-9e84-e7da-6423-71c2ae30eca4@kresin.me>
Date: Wed, 3 Jul 2019 11:20:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAKfDRXiNiRKvhfQ4SzREh95nHDnMxo9BqLKvTJfbi-faUPy7QA@mail.gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_022036_988097_FC22DFB9 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ramips: Update ZBT WE1026 DTS-files
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
Cc: Alex Maclean <monkeh@monkeh.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>, musashino.open@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

MDMvMDcvMjAxOSAxMDoyMSwgS3Jpc3RpYW4gRXZlbnNlbjoKPiBIaSwKPiAKPiBPbiBXZWQsIEp1
bCAzLCAyMDE5IGF0IDk6NTUgQU0gUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21haWwuY29tPiB3
cm90ZToKPj4gV2h5IHlvdSBkaWRuJ3QgY2MgQWxleCwgc28gaGUgY2FuIGFjayB5b3VyIHJlbGlj
ZW5zaW5nPyBZb3UgYWxzbwo+PiBkaWRuJ3QgY2FyZSB0byBsZXQgdXMga25vdyB3ZSBuZWVkIGhp
cyBhY2shCj4gCj4gV2hpbGUgSSBkb24ndCBhcHByZWNpYXRlIHlvdXIgdG9uZSwgSSBzZWUgbm93
IHRoYXQgSSBtYWRlIGEgbWlzdGFrZS4KPiBXaGVuIGNoZWNraW5nIHRoZSBoaXN0b3J5IG9mIHRo
ZSBmaWxlcyB0aGF0IEkgcmVsaWNlbnNlLCB0aGVyZSBhcmUKPiB0aHJlZSBtb3JlIHBlb3BsZSB0
aGF0IHNob3VsZCBiZSBhZGRlZCB0byB0aGUgQ0MtbGlzdCAoSU5BR0FLSQo+IEhpcm9zaGksIE1h
dGhpYXMgS3Jlc2luIGFuZCBQZXRyIMWgdGV0aWFyKS4gSSBoYXZlIGRvbmUgc28gbm93LCB0aGFu
a3MKPiBmb3Igc3BvdHRpbmcgdGhpcyBhbmQgdGhlIG1pc3Rha2Ugd2FzIG9mIGNvdXJzZSBub3Qg
aW50ZW50aW9uYWwuCj4gCj4gQlIsCj4gS3Jpc3RpYW4KPiAKCkknbSBmaW5lIHdpdGggcmUtbGlj
ZW5zaW5nLgoKcmVnYXJkcwpNYXRoaWFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
