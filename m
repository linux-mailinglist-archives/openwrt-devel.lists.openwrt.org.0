Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6400760836
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jul 2019 16:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GDZ3L05322fT6uVl6N+ff1kFcxPSj2R+akS06CzE8uQ=; b=LwA3dTGusG894oLPP2XveO5hj
	+qiTnc02DbYHBf0ZKi2Xfxnbdmc22VCL1vsd58c6G36DE24efwPeG5Dv04p07gMRAGc7HmZUSR/7Z
	XZSWApQ0+cnX57PrLBV/+1CBRQjbVk7fQgZYn8CvYjBZdh8i5/fS+54uqKlWIu4ugJ1nZt48uKZw2
	f4JbYQeRD3WKw/NZo8QS9/Jni+d0l/ktaZW0DZX7HvctHK/m/MImCCBKkWDTfPt3jxcF8gINcmLpj
	i4G8rx8P6YZSYhYVn2zKzyPN2BbT0uDgVuZgDNya4Bc7uE+KyqnGy9cvoFAOV48O851P5gXiP4SXn
	6I2qKHLhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPTG-0000ok-HB; Fri, 05 Jul 2019 14:45:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPRF-0005tB-1z
 for openwrt-devel@bombadil.infradead.org; Fri, 05 Jul 2019 14:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fQs7LX+qHihL9pj0JCKLsYt0Xj9x75MdsBrOpTq2Pe8=; b=oYsKsBcaX40bx6gXwzCy+5iLPC
 UqJdIRfD7h5SSr+YoFrypUVRNn4toEwcTUwK4K/1IQ7Qq5UGpmZ5riMLgPI6SXJo8JqPX747wn48m
 IsiLWVA+CO3dqGyqKU0eK6B7SC/O3CpLY++aM+dQFyLvwkZEfWIiucn9npBrdyRMXz7zy5QD1ISn9
 Od8pzl5u9mn8fLQqg9IIObeAnvgmkfWIcmoyCKGhaV7AoGzCJCWmwtV6NngxwmQ5z+9D5os5+m9ya
 xJGhCDH4/0G+CwHzkBr9Wtn5gJkeQbzDw4PoNTIkET5tY+juXdcLbymWHJqE3yrq6Jw6bhyAFHJdf
 VumQtmVQ==;
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJ9M-0000Mv-LW
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jul 2019 08:00:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id j2so3962018pfe.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 05 Jul 2019 01:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fQs7LX+qHihL9pj0JCKLsYt0Xj9x75MdsBrOpTq2Pe8=;
 b=XL862HLNTDIFDFIwExNOG67mEHaI+cPYuqnhKrbGJgbShpS9BBjXcoZTr88xtqED7U
 7dNtrL/c+GM6gSNKOUI4RcjkseVXoNX0sgR00LHpYq3Z2WIuibbWtMIuqyOOh7Rxmhfw
 OiBY88oqqtkYRe0H5terYcdM849PuCMCjJ5DoT4KaEKmYbR+w3zjh6nEOvXblBmEGp3f
 EDZ9qBNjLSoETO54xAcDgf0EW5BugUTzQK48/Dkh0oKKk3a5ptjbf9UlBbAYqiBOOucL
 DJMuC26K5A6jXhpJmOUKYaMy1wVG727FYVRfUdCaUPnPdnDd2yIHL0eVyy+rbXCCJstn
 qnxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fQs7LX+qHihL9pj0JCKLsYt0Xj9x75MdsBrOpTq2Pe8=;
 b=fqomgyxDC92nPbIm245/C2U3BLqARbS8QbCRBWrapT41pX6U3k/RzAjAKuJY/1WqRW
 jFFRBpIgUbPUb4u+30osLZeP/aYky+7pOSY+iNpIURxD2PnBIc/Vpv53AHsB+kn7pwyT
 utJ3UHwRxlk6tBc4YvhiOIBtaIO9hDH6uclmrv9TmKblgluI4NG7LvR3sD5O1A8GDjAc
 wekVRJvXSyoMMCw1drlcc27CHwg6EOxIAcnU3/+ePqkguhaagd9RKjx+KD9DUsKW0gZa
 7Qn2tBVQ6NEmV2hDASZEsTln9uxEUK1QlIZL5WcNUSao16Gia7C3n3lL/Go/M/cvvq2T
 Hf1w==
X-Gm-Message-State: APjAAAURJMfWpy7zg/O1txfhX4qIZyiNcfgGBMa0ymiIZNOOM3cVU9ZB
 mYgamUkwMj9Xnj1SCtXokKU=
X-Google-Smtp-Source: APXvYqzaI4G8dHSjnKkEUfdqLsQTiDYDDETTt5r8OkuDXxFRd3U4dzpHh0c0mtUvSUmvHCMugOn2vg==
X-Received: by 2002:a17:90a:1904:: with SMTP id
 4mr3557751pjg.116.1562313530444; 
 Fri, 05 Jul 2019 00:58:50 -0700 (PDT)
Received: from [192.168.1.42] (M014008005000.v4.enabler.ne.jp. [14.8.5.0])
 by smtp.gmail.com with ESMTPSA id j13sm7967461pfh.13.2019.07.05.00.58.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 00:58:49 -0700 (PDT)
To: Kristian Evensen <kristian.evensen@gmail.com>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
References: <20190623092448.27880-1-kristian.evensen@gmail.com>
 <20190623092448.27880-2-kristian.evensen@gmail.com>
 <CACna6rzJXFTuwxAJgou=R9jcY9OR3MRmxqEoZaSSyjqdTYDbHw@mail.gmail.com>
 <CAKfDRXiNiRKvhfQ4SzREh95nHDnMxo9BqLKvTJfbi-faUPy7QA@mail.gmail.com>
From: INAGAKI Hiroshi <musashino.open@gmail.com>
Message-ID: <368db12a-3d6e-df18-39f8-7c931c1e18a6@gmail.com>
Date: Fri, 5 Jul 2019 16:58:45 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.2
MIME-Version: 1.0
In-Reply-To: <CAKfDRXiNiRKvhfQ4SzREh95nHDnMxo9BqLKvTJfbi-faUPy7QA@mail.gmail.com>
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (musashino.open[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>, Mathias Kresin <dev@kresin.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjAxOS8wNy8wMyAxNzoyMSwgS3Jpc3RpYW4gRXZlbnNlbiB3cm90ZToKPiBIaSwKPiAKPiBP
biBXZWQsIEp1bCAzLCAyMDE5IGF0IDk6NTUgQU0gUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21h
aWwuY29tPiB3cm90ZToKPj4gV2h5IHlvdSBkaWRuJ3QgY2MgQWxleCwgc28gaGUgY2FuIGFjayB5
b3VyIHJlbGljZW5zaW5nPyBZb3UgYWxzbwo+PiBkaWRuJ3QgY2FyZSB0byBsZXQgdXMga25vdyB3
ZSBuZWVkIGhpcyBhY2shCj4gCj4gV2hpbGUgSSBkb24ndCBhcHByZWNpYXRlIHlvdXIgdG9uZSwg
SSBzZWUgbm93IHRoYXQgSSBtYWRlIGEgbWlzdGFrZS4KPiBXaGVuIGNoZWNraW5nIHRoZSBoaXN0
b3J5IG9mIHRoZSBmaWxlcyB0aGF0IEkgcmVsaWNlbnNlLCB0aGVyZSBhcmUKPiB0aHJlZSBtb3Jl
IHBlb3BsZSB0aGF0IHNob3VsZCBiZSBhZGRlZCB0byB0aGUgQ0MtbGlzdCAoSU5BR0FLSQo+IEhp
cm9zaGksIE1hdGhpYXMgS3Jlc2luIGFuZCBQZXRyIMWgdGV0aWFyKS4gSSBoYXZlIGRvbmUgc28g
bm93LCB0aGFua3MKPiBmb3Igc3BvdHRpbmcgdGhpcyBhbmQgdGhlIG1pc3Rha2Ugd2FzIG9mIGNv
dXJzZSBub3QgaW50ZW50aW9uYWwuCj4gCj4gQlIsCj4gS3Jpc3RpYW4KPiAuCj4gCgpTb3JyeSBm
b3IgbGF0ZSByZXNwb25zZSwgT0sgd2l0aCBtZS4KCkFja2VkLWJ5OiBJTkFHQUtJIEhpcm9zaGkg
PG11c2FzaGluby5vcGVuQGdtYWlsLmNvbT4KCnJlZ2FyZHMsCkhpcm9zaGkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
