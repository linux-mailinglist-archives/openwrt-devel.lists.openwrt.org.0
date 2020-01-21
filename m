Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F801447D2
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 23:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RULz+lwR7PnDUkSMlKXgKFrqnoGd7/3vR3d73MS1SrQ=; b=Mz7klK32v6RqR7XsiM/MzzPHm
	0sJ6ubUwQ304XajKUmcdHXIoDO674Vt8ywLmSiqtlGGnb92Gc10P+wDvhTa7c5rhXams020V8YYc+
	rC5/oizv+zJ7Dg/MGlFmfVuc7HsBv72kVgVSIlzql+NuVxWr3jyydIkTUrWw3H2NEpHpsYKTNnlqy
	VwXQ6cF13wapmNwsCgPSIlh/5qJsuU0gVEKVnLBQJg1Y1YY89tiTEE7H9RvTqV/i1V+cd4cWQPlXg
	9Y+cPmV7hl04+xnieFa9GTus4OjzGMYMj73yCPvtgdq3CNJ/xrMKMo+g7YG9/hwOplytRnpA5AQoA
	RsmdJiedA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu2AD-0000KR-8u; Tue, 21 Jan 2020 22:38:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu26M-0004DV-8P
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 22:34:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id d16so5190153wre.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 14:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XcT8B9K50gQ4/7Wd5hs478Hru8eCajpa+l25Kbdfmpw=;
 b=PHlYdwb5qeJcZwp0gfwEAtXb9FuQprLaAb5E+r+oFTqHQkbq4lTY33HINV/oTwKSGt
 zp/wfyqamfCougn8ScalHLuESWbF4zCs8ZXU9OQ8VUNqkBMElmOhAldIw+8Uix6/luHN
 uS9ksbzloXCktBaJEe56nD6wOpLqO3u5m7oZjcxigEmvCS1DTYCluIZUbVRQ25r4GYmK
 txkYdr+RJxZioV9hacx598vxgPUFju3vFHJ+IAUxLdBKDzNeAG/Sr6/x3UISetlXaeEj
 USsyV0/kXSU3Jj5Z5ZFZ7zAKKT/aB5PWCOg4pUoJN6YWimyXgcPx3cjM34I8/om+oxK/
 5i8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XcT8B9K50gQ4/7Wd5hs478Hru8eCajpa+l25Kbdfmpw=;
 b=flICtq/r6nJFbWxDTImTKOu94c+QHZyt+yoI8q08Q/sEgwqCg1hLjdONHo/MWQrrsh
 hT6hGCJfnikLyZZUaLm3AkeVdgUMa5Z9Fm61rixb2QJ3sw/Ezbo1lrVnQmCCyz9+XqNN
 /WYMhxDetT7/RzVHxJQjvrvKhq4UB56ZntcN0SQvdfQAkYpFiAPZJjVE1SsLgzI1Kp/p
 4WpQ44nZtD5Exq6YVAfUnTI7GooM7u7aO/LEKntMCK4eASSv9UxEjJCl/ZSVx06ekh29
 hLXEBBYJQXRZN0G8Po30mPDMOZ7pDcYt7clPCfI8VBf2KuHVKqUEncL6EBirOAtrwdTV
 mvhQ==
X-Gm-Message-State: APjAAAV36/3n8PCh1f10YmY0N5r05LWMHrxm/+DxGQGDkHvJFX/c09l2
 kQIyHWeDGtgKu1pRyNOeu4GJ/Kb/uZU=
X-Google-Smtp-Source: APXvYqwe/BO7B/hNG3xZihVwm6wZHj/rOhChFqvSC1Wd/Mjw6ZIojnYCZTk1dl/6fxxPh5jHDGqrwA==
X-Received: by 2002:adf:d0c1:: with SMTP id z1mr7686275wrh.371.1579646063921; 
 Tue, 21 Jan 2020 14:34:23 -0800 (PST)
Received: from ?IPv6:2003:ec:2f01:5200:4490:d34c:d915:9fc2?
 (p200300EC2F0152004490D34CD9159FC2.dip0.t-ipconnect.de.
 [2003:ec:2f01:5200:4490:d34c:d915:9fc2])
 by smtp.gmail.com with ESMTPSA id j12sm55450395wrt.55.2020.01.21.14.34.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 14:34:23 -0800 (PST)
To: Daniel Golle <daniel@makrotopia.org>, =?UTF-8?Q?Bj=c3=b8rn_Mork?=
 <bjorn@mork.no>
References: <20200121181933.GA34748@makrotopia.org>
 <87blqwirf9.fsf@miraculix.mork.no> <20200121192200.GB34748@makrotopia.org>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <a65b54c4-8d6a-25f4-0d0c-96c9f3fc93ae@kresin.me>
Date: Tue, 21 Jan 2020 23:34:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200121192200.GB34748@makrotopia.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_143426_412111_6848B09B 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] hostapd and Linux bridges
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
Cc: hostap@lists.infradead.org, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

MjEvMDEvMjAyMCAyMDoyMiwgRGFuaWVsIEdvbGxlOgo+IE9uIFR1ZSwgSmFuIDIxLCAyMDIwIGF0
IDA3OjQwOjQyUE0gKzAxMDAsIEJqw7hybiBNb3JrIHdyb3RlOgo+PiBEYW5pZWwgR29sbGUgPGRh
bmllbEBtYWtyb3RvcGlhLm9yZz4gd3JpdGVzOgo+Pgo+Pj4gT24gcHJvcHJpZXRhcnkgQVBzIGl0
IGxvb2tzIGxpa2UgcG9ydCBpc29sYXRpb24gaXMgZW5hYmxlZCBvciBkaXNhYmxlZAo+Pj4gZ2xv
YmFsbHkgaW4gTGludXgnIGJyaWRnZSBjb2RlIHVzaW5nIHN5c2N0bCBvciBvdGhlciBtZXRob2Rz
LCBhbgo+Pj4gYXBwcm9hY2ggd2hpY2ggaXMgdW5saWtlbHkgdG8gZ2V0IGFjY2VwdGVkIGludG8g
dGhlIEtlcm5lbCwgYWxzbyBnaXZlbgo+Pj4gdGhhdCB0aGUgbmV0bGluayBpbnRlcmZhY2UgYWxy
ZWFkeSBleGlzdHMgYW5kIGFsbG93cyBkb2luZyB0aGUgc2FtZQo+Pj4gdGhpbmcgaW4gYSBtb3Jl
IGdyYW51bGFyIGZhc2hpb24uCj4+Cj4+IEh1aD8KPj4KPj4gV29uJ3QgdGhpcyBzeXNmcyBhdHRy
aWJ1dGUgc2V0IHRoZSBzYW1lIGZsYWcgSUZMQV9CUlBPUlRfSVNPTEFURUQgc2V0cz8KPj4KPj4K
Pj4gcm9vdEB3cnQxOTAwYWMtMTp+IyBncmVwIC4gL3N5cy9jbGFzcy9uZXQvYnItbGFuL2JyaWYv
Ki9pc29sYXRlZAo+PiAvc3lzL2NsYXNzL25ldC9ici1sYW4vYnJpZi9ldGgwLjcvaXNvbGF0ZWQ6
MAo+PiAvc3lzL2NsYXNzL25ldC9ici1sYW4vYnJpZi93bGFuMC9pc29sYXRlZDowCj4+IC9zeXMv
Y2xhc3MvbmV0L2JyLWxhbi9icmlmL3dsYW4xL2lzb2xhdGVkOjAKPiAKPiBMb29rcyBsaWtlIHRo
YXQncyB0aGUgdGhpbmcgSSBtYXkgaGF2ZSBtaXNzZWQgOykKPiBZZXQgd2UgZG8gbmVlZCBhIHdh
eSB0byBzZXQgdGhpcyB0byAnMScgb25jZSBob3N0YXBkIGFkZHMgdGhlIEFQCj4gaW50ZXJmYWNl
IHRvIHRoZSBicmlkZ2UuIEknbSBub3Qgc3VyZSB3aGV0aGVyIHNldHRpbmcgdGhpcyB2aWEKPiBz
eXNmcyBpcyBhY3R1YWxseSBtb3JlIHNpbXBsZSB0aGFuIHVzaW5nIG5ldGxpbmsgZ2l2ZW4gdGhh
dCBzb21lCj4gZ2VuZXJhbCBwdXJwb3NlIG5ldGxpbmsgY29kZSBpcyBhbHJlYWR5IHBhcnQgb2Yg
aG9zdGFwLgo+IEluIHRoZSBlbmQsIGVpdGhlciBhcHByb2FjaCB3b3VsZCBiZSBmaW5lIHdpdGgg
bWUgYW5kIEkgd291bGQKPiBpbXBsZW1lbnQgd2hhdGV2ZXIgaXMgbW9yZSBsaWtlbHkgdG8gYmUg
bWVyZ2VkIGludG8gaG9zdGFwLmdpdC4KCm5ldGlmZCBpcyBhYmxlIHRvIHNldCBicmlkZ2UgY2xp
ZW50IGlzb2xhdGlvbiB2aWEgc3lzZnMgc2luY2UgY29tbWl0IApjMDZmODQyMzg5NTIyMTFiMzVj
Mjk0MGE4MmZjY2UzZmNjMzIyMWMxLgoKL2V0Yy9jb25maWcvd2lyZWxlc3MgYXMgZXhwZWN0ZWQ6
Cgpjb25maWcgd2lmaS1pZmFjZQoJb3B0aW9uIGRldmljZSAncmFkaW8xJwoJb3B0aW9uIGlmbmFt
ZSAnd2xhbl9ndWVzdF9sZWcnCglvcHRpb24gbmV0d29yayAnZ3Vlc3QnCglvcHRpb24gaXNvbGF0
ZSAnMScKCmNvbmZpZyB3aWZpLWlmYWNlCglvcHRpb24gZGV2aWNlICdyYWRpbzAnCglvcHRpb24g
aWZuYW1lICd3bGFuX2d1ZXN0JwoJb3B0aW9uIG5ldHdvcmsgJ2d1ZXN0JwoJb3B0aW9uIGlzb2xh
dGUgJzEKClRoZSBpc29sYXRpb24gb3B0aW9uIGluIC9ldGMvY29uZmlnL25ldHdvcmsgZG9lcyB0
aGUgdHJpY2s6Cgpjb25maWcgaW50ZXJmYWNlICdndWVzdCcKCW9wdGlvbiB0eXBlICdicmlkZ2Un
CglvcHRpb24gcHJvdG8gJ3N0YXRpYycKCmNvbmZpZyBkZXZpY2UgJ3dsYW5fZ3Vlc3QnCglvcHRp
b24gaXNvbGF0ZSAnMScKCmNvbmZpZyBkZXZpY2UgJ3dsYW5fZ3Vlc3RfbGVnJwoJb3B0aW9uIGlz
b2xhdGUgJzEnCgoKT2YgY291cnNlLCBicmlkZ2UgY2xpZW50IGlzb2xhdGlvbiBpc24ndCBsaW1p
dGVkIHRvIHdpcmVsZXNzIGludGVyZmFjZS4KCkknbSBub3QgeWV0IHN1cmUsIHdoZXRoZXIgeW91
IGFyZSBsb29raW5nIGZvciBzb21ldGhpbmcgbGlrZSB0aGF0IG9yIGFuIAphdXRvbWF0aWMgYnJp
ZGdlIGNsaWVudCBpc29sYXRpb24gYXMgc29vbiBhcyB3aXJlbGVzcyBjbGllbnQgaXNvbGF0aW9u
IAppcyBlbmFibGVkLgoKQWxiZWl0IHNvbWV0aGluZyBhdXRvbWF0aWMgd291bGQgYmUgbmljZSwg
dGhlcmUgbWlnaHQgYmUgYSB1c2UgY2FzZSB3ZXJlIAp5b3Ugd2FudCB0byBoYXZlIHdpcmVsZXNz
IGNsaWVudCBpc29sYXRpb24gYnV0IG5vIGJyaWRnZSBjbGllbnQgaXNvbGF0aW9uLgoKTWF0aGlh
cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
