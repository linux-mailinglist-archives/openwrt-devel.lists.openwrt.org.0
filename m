Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB431DFF5B
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 16:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8ziYgzQtEtocH7kOTBOC9PUZXvNGOiUww7BYB72igq4=; b=NNfnp6a9Mb9L0EFIogiZElkPb
	RjMfUaz/vYfewm4OE0CHDlELq4KjonDIYj9XTyj1SzQ0+euUyP9MUVJn7Z68VUM+kLkUhxS8s3gM9
	kgInpomc594bCUv8ikHmzl74+WAeWngPyVAjJze77qUdTJwRuEIsbaXYP9SM7IbEPvofMwQmJopSa
	7kyCMN6Y8Wa28tp/NuOZ+INfyh50d5U2OZgY6PApYFa7PIWMaykKaD1qBlxswCico6uKPLvE2lqhV
	p1rgqrQDHNtcEIukwE8wtke+YiUxoZOLDjzT4zQICTtOGPcNVnBELlFkgBnyLg6uC85Fmqt57aIXI
	PD1HKuaWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcrcb-0002JF-GL; Sun, 24 May 2020 14:29:01 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcrcV-0002Ii-3Q
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 14:28:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id c11so15921462ljn.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 24 May 2020 07:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=D22KjhKe48BxycX7jqxITcrBZJZbsu/XhGSPiMBdv/E=;
 b=Ev5yT/bsfYD1aOA92IfG2ZhVOpw++ooW+hHlxWOHRnnaX90unS4uKeE79RlQHkxsLI
 m13aJ1Y580op1Fl/RELjOFk8vXXDC4k28dg5+yy3tQv6JewUcg1wmBivyz7iLdRP3qGf
 vTgSehDV4LQoGfVirlstRR2IBudSDrS79uvLXbYGngU4UBLuQkyf6B7mVX7CULorwsky
 tANvQghfgTScCSoRtZbDf5ggIwzmnUsXQLuYeeYU7ksNLfvewzHc7XzYGVBMU+R3R1RB
 bEjdEM5nzIVa/lJJtQ7shZ6aZ9lCZr/oEFRK3YQ5K44PdyEWBU2r92x6FU39IUnmiXQV
 w/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D22KjhKe48BxycX7jqxITcrBZJZbsu/XhGSPiMBdv/E=;
 b=amUIgZfsDE09RpRjT2mi/sSrPyKyv8AaeuLZ36D2kF3DmdxJJiFIyFqKyJVesr9RoC
 ANWQieHs8QedBWT41dHkttkSrzcD4EFdJFIq1C64U+Atr0sNzLQEBPPLNEvGJ47I9FHF
 ESKHysK09X2yq6nv92HBTwPUI35KZJfwH8lBphVHmATDj6AUIIVgCFFvsdiBH9YvhvrK
 qIWAFToW+VdssvIVzALuLlOoBkvoRt2lbtVTEQwzLguJypsuV0AGvPhjb17S5t0uRxPH
 gnmhR3x6rVi16aYO92kPPPKfTKu3tlLcFqUM7YVYyfoXkkBZu8+3w6hMCLWlazUlXhlS
 QSog==
X-Gm-Message-State: AOAM531p6WwShAktkjm4SE3mjBNJzxJqW7QI/YMfTN8p6AnDnGQ+NOkJ
 W/QbtsGFqyTM0ak5BQ+Ljs0=
X-Google-Smtp-Source: ABdhPJw1IseUMIkx4eOyjvHXhLbZgUXZOAYUGryJJoCBXLRwU6+tn8PBzkPMyOFLXj8MS1nfUlZohw==
X-Received: by 2002:a2e:a58a:: with SMTP id m10mr10214413ljp.347.1590330530654; 
 Sun, 24 May 2020 07:28:50 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id z13sm3947084lfd.7.2020.05.24.07.28.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 May 2020 07:28:49 -0700 (PDT)
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Chris Nisbet <nischris@gmail.com>, Jo-Philipp Wich <jo@mein.io>,
 John Crispin <john@phrozen.org>
References: <6ab2bd22-4a43-b2ed-da40-36a77df72800@gmail.com>
 <3d87dc1d-103f-348b-7613-d43a1599fd8d@gmail.com>
Message-ID: <65301242-f8cb-234a-551b-1ec3b859d01a@gmail.com>
Date: Sun, 24 May 2020 16:28:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <3d87dc1d-103f-348b-7613-d43a1599fd8d@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_072855_158665_C984BB56 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] procd fails to start /sbin/netifd randomly
 (libubox regression)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjMuMDUuMjAyMCAxMjoyMiwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IE9uIDIyLjA1LjIw
MjAgMTE6MjgsIFJhZmHFgiBNacWCZWNraSB3cm90ZToKPj4gRmFpbGVkIHJlc3RhcnQ6Cj4+IEZy
aSBNYXkgMjIgMDk6MjI6MDUgMjAyMCBkYWVtb24uZXJyIHByb2NkOiBbaW5zdGFuY2VfZmlsbF9h
cnJheV0gYmxvYm1zZ190eXBlKGN1cik6IDIgKEJMT0JNU0dfVFlQRV9UQUJMRSkKPj4gRnJpIE1h
eSAyMiAwOToyMjowNSAyMDIwIGRhZW1vbi5lcnIgcHJvY2Q6IFtpbnN0YW5jZV9maWxsX2FycmF5
XSBCRUZPUkUgNzVlMzAwYWVlYzI1Ogo+PiBGcmkgTWF5IDIyIDA5OjIyOjA1IDIwMjAgZGFlbW9u
LmVyciBwcm9jZDogW2luc3RhbmNlX2ZpbGxfYXJyYXldIGJsb2JfbGVuKGN1cik6IDM2Cj4+IEZy
aSBNYXkgMjIgMDk6MjI6MDUgMjAyMCBkYWVtb24uZXJyIHByb2NkOiBbaW5zdGFuY2VfZmlsbF9h
cnJheV0gYmxvYm1zZ19jaGVja19hdHRyX2xlbihjdXIsIGZhbHNlLCAzNik6IDEKPj4gRnJpIE1h
eSAyMiAwOToyMjowNSAyMDIwIGRhZW1vbi5lcnIgcHJvY2Q6IFtpbnN0YW5jZV9maWxsX2FycmF5
XSBbZm9yX2VhY2hfYXR0cl0gYmxvYm1zZ19uYW1lKHN1Yik6IGNvcmUgYmxvYm1zZ190eXBlKHN1
Yik6IDMgKEJMT0JNU0dfVFlQRV9TVFJJTkcpCj4+IEZyaSBNYXkgMjIgMDk6MjI6MDUgMjAyMCBk
YWVtb24uZXJyIHByb2NkOiBbaW5zdGFuY2VfZmlsbF9hcnJheV0gW2Zvcl9lYWNoX2F0dHJdIGJs
b2Jtc2dfbmFtZShzdWIpOsKgIGJsb2Jtc2dfdHlwZShzdWIpOiA1IChCTE9CTVNHX1RZUEVfSU5U
MzIpCj4+IEZyaSBNYXkgMjIgMDk6MjI6MDUgMjAyMCBkYWVtb24uZXJyIHByb2NkOiBbaW5zdGFu
Y2VfZmlsbF9hcnJheV3CoCBBRlRFUiA3NWUzMDBhZWVjMjU6Cj4+IEZyaSBNYXkgMjIgMDk6MjI6
MDUgMjAyMCBkYWVtb24uZXJyIHByb2NkOiBbaW5zdGFuY2VfZmlsbF9hcnJheV0gYmxvYm1zZ19s
ZW4oY3VyKTogMjQKPj4gRnJpIE1heSAyMiAwOToyMjowNSAyMDIwIGRhZW1vbi5lcnIgcHJvY2Q6
IFtpbnN0YW5jZV9maWxsX2FycmF5XSBibG9ibXNnX2NoZWNrX2F0dHJfbGVuKGN1ciwgZmFsc2Us
IDI0KTogMQo+PiBGcmkgTWF5IDIyIDA5OjIyOjA1IDIwMjAgZGFlbW9uLmVyciBwcm9jZDogW2lu
c3RhbmNlX2ZpbGxfYXJyYXldIFtmb3JfZWFjaF9hdHRyXSBibG9ibXNnX25hbWUoc3ViKTogY29y
ZSBibG9ibXNnX3R5cGUoc3ViKTogMyAoQkxPQk1TR19UWVBFX1NUUklORykKPj4gRnJpIE1heSAy
MiAwOToyMjowNSAyMDIwIGRhZW1vbi5lcnIgcHJvY2Q6IFtpbnN0YW5jZV9maWxsX2FycmF5XSBi
bG9iX2F0dHIgKmN1ciBhcyBKU09OOiB7wqDCoMKgwqDCoCAiY29yZSI6ICJ1bmxpbWl0ZWQiIH0K
Pj4gRnJpIE1heSAyMiAwOToyMjowNSAyMDIwIGRhZW1vbi5lcnIgcHJvY2Q6IFtpbnN0YW5jZV9m
aWxsX2FycmF5XSBibG9ibXNnX2NoZWNrX2F0dHJfbGlzdCgpIGZhaWxlZAo+Pgo+PiBBcyB5b3Ug
Y2FuIHNlZSwgbGlidWJveCBmaXggcmVzdWx0ZWQgaW4gYmxvYm1zZ19jaGVja19hcnJheV9sZW4o
KQo+PiBhY3R1YWxseSBpdGVyYXRpbmcgb3ZlciBzdWItYXR0ci1zIGJ1dCBhbHNvIGZhaWxpbmcg
b2NjYXNpb25hbGx5Lgo+IAo+IE15IG9ic2VydmF0aW9uIHdhcyByZXZlcnNlZC4gQWZ0ZXIgNzVl
MzAwYWVlYzI1IGxpYnVib3ggdXNlcyBibG9iX2xlbiwKPiBub3QgYmxvYm1zZ19sZW4uIEl0IG1l
YW5zIHRoYXQgaXRlcmF0aW9uIG92ZXIgc3ViLWF0dHItcyBpbgo+IGJsb2Jtc2dfY2hlY2tfYXJy
YXlfbGVuKCkgYWN0dWFsbHkgZ290IGJyb2tlbi4gSXQncyBiZWNhdXNlCj4gX19ibG9ibXNnX2Zv
cl9lYWNoX2F0dHIoKSBtYWNybyBleHBlY3RzICpkYXRhKiBsZW4gdG8gYmUgcGFzc2VkIHRvIGl0
LgoKRml4ZWQgaW4gY29tbWl0IDVlNzUxNjBmNDg3OCAoImJsb2Jtc2c6IGZpeCBhdHRycyBpdGVy
YXRpb24gaW4gdGhlCmJsb2Jtc2dfY2hlY2tfYXJyYXlfbGVuKCkiKS4KCmh0dHBzOi8vZ2l0Lm9w
ZW53cnQub3JnLz9wPXByb2plY3QvbGlidWJveC5naXQ7YT1jb21taXRkaWZmO2g9NWU3NTE2MGY0
ODc4NTQ2NGY5MjEzYzZiYzhjNzJiOTM3MmM1MzE4YgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
